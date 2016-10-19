.class Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;
.super Landroid/os/Handler;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ims/ImsService;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/ims/ImsService;)V
    .locals 0

    .prologue
    .line 689
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/ims/ImsService;Lcom/mediatek/internal/telephony/ims/ImsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/ims/ImsService$1;

    .prologue
    .line 689
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;-><init>(Lcom/mediatek/internal/telephony/ims/ImsService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 695
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 854
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 697
    :pswitch_1
    const-string v8, "ImsService"

    const-string v11, "receive EVENT_IMS_REGISTRATION_INFO"

    invoke-static {v8, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 716
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    check-cast v8, [I

    const/4 v11, 0x2

    aget v7, v8, v11

    .line 717
    .local v7, "socketId":I
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$200(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v8

    if-eq v7, v8, :cond_1

    .line 718
    const-string v8, "ImsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IMS: drop IMS reg info, socketId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mActivePhoneId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$200(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 724
    :cond_1
    const/4 v3, 0x3

    .line 725
    .local v3, "newImsRegInfo":I
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    check-cast v8, [I

    aget v8, v8, v9

    if-ne v8, v10, :cond_3

    .line 726
    const/4 v3, 0x0

    .line 731
    :goto_1
    const-string v8, "persist.ims.simulate"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v10, :cond_2

    .line 732
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegistry:Z
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$100(Lcom/mediatek/internal/telephony/ims/ImsService;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v3, v9

    .line 734
    :goto_2
    const-string v8, "ImsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Override EVENT_IMS_REGISTRATION_INFO: newImsRegInfo="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_2
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    check-cast v8, [I

    aget v2, v8, v10

    .line 742
    .local v2, "newImsExtInfo":I
    const-string v8, "ImsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "newReg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " oldReg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$600(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I
    invoke-static {v8, v3}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$602(Lcom/mediatek/internal/telephony/ims/ImsService;I)I

    .line 746
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I
    invoke-static {v9}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$600(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v9

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsService;->notifyRegistrationStateChange(I)V
    invoke-static {v8, v9}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$700(Lcom/mediatek/internal/telephony/ims/ImsService;I)V

    .line 750
    const-string v8, "ImsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "newRegExt:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "oldRegExt:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsExtInfo:I
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$800(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$600(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v8

    if-nez v8, :cond_0

    .line 754
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsExtInfo:I
    invoke-static {v8, v2}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$802(Lcom/mediatek/internal/telephony/ims/ImsService;I)I

    .line 755
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsExtInfo:I
    invoke-static {v9}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$800(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v9

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsService;->notifyRegistrationCapabilityChange(I)V
    invoke-static {v8, v9}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$900(Lcom/mediatek/internal/telephony/ims/ImsService;I)V

    goto/16 :goto_0

    .line 728
    .end local v2    # "newImsExtInfo":I
    :cond_3
    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_4
    move v3, v10

    .line 732
    goto/16 :goto_2

    .line 762
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "newImsRegInfo":I
    .end local v7    # "socketId":I
    :pswitch_2
    const-string v8, "ImsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "receive EVENT_IMS_ENABLING_URC, mActivePhoneId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v12}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$200(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 767
    .local v1, "intent":Landroid/content/Intent;
    const-string v8, "android:phone_id"

    iget-object v11, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$200(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v11

    invoke-virtual {v1, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 768
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$400(Lcom/mediatek/internal/telephony/ims/ImsService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 770
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/ims/ImsService;->enableImsAdapter()V

    .line 771
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsState:I
    invoke-static {v8, v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1002(Lcom/mediatek/internal/telephony/ims/ImsService;I)I

    .line 772
    const-string v8, "ro.mtk_wfc_support"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "1"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 773
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$500(Lcom/mediatek/internal/telephony/ims/ImsService;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v8

    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$400(Lcom/mediatek/internal/telephony/ims/ImsService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "user_selected_wfc_preference"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->sendWfcProfileInfo(I)V

    goto/16 :goto_0

    .line 781
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_3
    const-string v8, "ImsService"

    const-string v9, "receive EVENT_IMS_ENABLED_URC"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 787
    :pswitch_4
    const-string v8, "ImsService"

    const-string v9, "receive EVENT_IMS_DISABLING_URC"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 792
    :pswitch_5
    const-string v8, "ImsService"

    const-string v11, "receive EVENT_IMS_DISABLED_URC"

    invoke-static {v8, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v4

    .line 794
    .local v4, "phoneId":I
    const-string v8, "ImsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IMS: phoneId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 796
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v8, "android:phone_id"

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 797
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$400(Lcom/mediatek/internal/telephony/ims/ImsService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 799
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-virtual {v8, v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->disableImsAdapter(Z)V

    .line 800
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsState:I
    invoke-static {v8, v9}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1002(Lcom/mediatek/internal/telephony/ims/ImsService;I)I

    goto/16 :goto_0

    .line 805
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "phoneId":I
    :pswitch_6
    const-string v8, "ImsService"

    const-string v9, "receive EVENT_SET_IMS_ENABLED_DONE"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 811
    :pswitch_7
    const-string v8, "ImsService"

    const-string v9, "receive EVENT_SET_IMS_DISABLE_DONE"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 815
    :pswitch_8
    const-string v8, "ImsService"

    const-string v9, "receive EVENT_INCOMING_CALL_INDICATION"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 817
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsService;->sendIncomingCallIndication(Landroid/os/AsyncResult;)V
    invoke-static {v8, v0}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1100(Lcom/mediatek/internal/telephony/ims/ImsService;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 820
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    const-string v8, "ImsService"

    const-string v9, "receive EVENT_CALL_RING"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 823
    :pswitch_a
    const-string v8, "ImsService"

    const-string v10, "receive EVENT_RADIO_NOT_AVAILABLE"

    invoke-static {v8, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$400(Lcom/mediatek/internal/telephony/ims/ImsService;)Landroid/content/Context;

    move-result-object v8

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 825
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-virtual {v8, v9}, Lcom/mediatek/internal/telephony/ims/ImsService;->disableImsAdapter(Z)V

    goto/16 :goto_0

    .line 828
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 829
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    move-object v6, v8

    check-cast v6, [I

    .line 831
    .local v6, "sipMessage":[I
    if-eqz v6, :cond_0

    .line 832
    const-string v8, "ImsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Method ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v6, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Reg cause ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v6, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    aget v8, v6, v11

    if-eqz v8, :cond_5

    aget v8, v6, v11

    const/16 v9, 0x9

    if-ne v8, v9, :cond_0

    .line 836
    :cond_5
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    aget v10, v6, v11

    aget v11, v6, v12

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsService;->translateRegErrors(II)I
    invoke-static {v9, v10, v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1200(Lcom/mediatek/internal/telephony/ims/ImsService;II)I

    move-result v9

    iput v9, v8, Lcom/mediatek/internal/telephony/ims/ImsService;->mWfcRegErrorCode:I

    goto/16 :goto_0

    .line 842
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "sipMessage":[I
    :pswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 843
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v8, "handoverResult"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 845
    .local v5, "result":Z
    const-string v8, "ImsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_HANDOVER_DONE_INDICATION result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    if-eqz v5, :cond_0

    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$600(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v8

    if-nez v8, :cond_0

    .line 847
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsExtInfo:I
    invoke-static {v9}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$800(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v9

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsService;->notifyRegistrationCapabilityChange(I)V
    invoke-static {v8, v9}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$900(Lcom/mediatek/internal/telephony/ims/ImsService;I)V

    goto/16 :goto_0

    .line 695
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_a
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
