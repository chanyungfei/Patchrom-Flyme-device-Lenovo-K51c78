.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 343
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    if-nez v12, :cond_1

    .line 344
    const-string v12, "GsmSST"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Received Intent "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " while being destroyed. Ignoring."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BroadcastReceiver: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 352
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto :goto_0

    .line 353
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.ACTION_RADIO_OFF"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 355
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v13, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSstIsScreenOn:Z
    invoke-static {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$102(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)Z

    .line 357
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v13, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z
    invoke-static {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$202(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)Z

    .line 358
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v12

    iget-object v3, v12, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 359
    .local v3, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v12, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    goto :goto_0

    .line 360
    .end local v3    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 363
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v13, "Received Intent ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 365
    const-string v12, "rafs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 368
    .local v6, "newPhoneRcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_5

    .line 370
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v13, "EXTRA_RADIO_ACCESS_FAMILY not present."

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 373
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v12, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSetPhoneRCDone(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 375
    .end local v6    # "newPhoneRcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.SCREEN_ON"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 376
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v13, "ACTION_SCREEN_ON"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v13, "set explict_update_spn = 1"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v13, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->explict_update_spn:I
    invoke-static {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$302(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)I

    .line 382
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v13, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSstIsScreenOn:Z
    invoke-static {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$402(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)Z

    .line 383
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDontPollSignalStrength:Z
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$500(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Z

    move-result v12

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$600(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v12, v13, :cond_7

    .line 384
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$700(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    .line 387
    :cond_7
    const-string v12, "ro.mtk_bsp_package"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 389
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$800(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/mediatek/common/telephony/IServiceStateExt;

    move-result-object v12

    invoke-interface {v12}, Lcom/mediatek/common/telephony/IServiceStateExt;->needEMMRRS()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 390
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isCurrentPhoneDataConnectionOn()Z
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 391
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v13, 0x69

    # invokes: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getEINFO(I)V
    invoke-static {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 394
    :catch_0
    move-exception v4

    .line 395
    .local v4, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    .line 398
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 399
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v13, "ACTION_SCREEN_OFF"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 400
    const-string v12, "ro.mtk_bsp_package"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 402
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$800(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/mediatek/common/telephony/IServiceStateExt;

    move-result-object v12

    invoke-interface {v12}, Lcom/mediatek/common/telephony/IServiceStateExt;->needEMMRRS()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 403
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isCurrentPhoneDataConnectionOn()Z
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 404
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v13, 0x68

    # invokes: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getEINFO(I)V
    invoke-static {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 407
    :catch_1
    move-exception v4

    .line 408
    .restart local v4    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    .line 411
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 412
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v13, "ACTION_SIM_STATE_CHANGED"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 414
    const-string v10, "UNKNOWN"

    .line 416
    .local v10, "simState":Ljava/lang/String;
    const-string v12, "phone"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 417
    .local v11, "slotId":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v12

    if-ne v11, v12, :cond_a

    .line 418
    const-string v12, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 419
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SIM state change, slotId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " simState["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 423
    :cond_a
    const-string v12, "READY"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimType:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 424
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v13

    invoke-static {v13}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/IccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v13

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimType:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1102(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 426
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SimType= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimType:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimType:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimType:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 429
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimType:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "SIM"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimType:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "USIM"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 430
    :cond_b
    const-string v12, "ro.mtk_bsp_package"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 432
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$800(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/mediatek/common/telephony/IServiceStateExt;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimType:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/mediatek/common/telephony/IServiceStateExt;->needIccCardTypeNotification(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 434
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_f

    .line 435
    const-string v12, "persist.radio.simswitch"

    const-string v13, "1"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 436
    .local v1, "capabilityPhoneId":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "capabilityPhoneId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v12

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_c

    .line 438
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimType:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    # invokes: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSpecialCardTypeNotification(Ljava/lang/String;II)V
    invoke-static {v12, v13, v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 453
    .end local v1    # "capabilityPhoneId":I
    :cond_c
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v12

    if-ne v11, v12, :cond_d

    const-string v12, "IMSI"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 455
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v12, v11}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setDeviceRatMode(I)V

    .line 459
    :cond_d
    const-string v12, "ABSENT"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e

    const-string v12, "NOT_READY"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 461
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v13, ""

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimType:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1102(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 462
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v13, "cancel notification for special sim card when SIM state is absent"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 463
    const-string v12, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 465
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    const/16 v12, 0x22c7

    invoke-virtual {v7, v12}, Landroid/app/NotificationManager;->cancel(I)V

    .line 468
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v13

    const/4 v14, 0x0

    # invokes: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setReceivedNitz(IZ)V
    invoke-static {v12, v13, v14}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;IZ)V

    .line 470
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v13, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastRegisteredPLMN:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1402(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 471
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v13, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mLastPSRegisteredPLMN:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1502(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 474
    const-string v12, "ABSENT"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 475
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v13, "clear dontUpdateNetworkStateFlag when sim absent"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontUpdateNetworkStateFlag:Z

    goto/16 :goto_0

    .line 441
    .end local v7    # "notificationManager":Landroid/app/NotificationManager;
    :cond_f
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSimType:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    # invokes: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSpecialCardTypeNotification(Ljava/lang/String;II)V
    invoke-static {v12, v13, v14, v15}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;II)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 444
    :catch_2
    move-exception v4

    .line 445
    .restart local v4    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_1

    .line 481
    .end local v4    # "e":Ljava/lang/RuntimeException;
    .end local v10    # "simState":Ljava/lang/String;
    .end local v11    # "slotId":I
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 483
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ACTION_SUBINFO_RECORD_UPDATED force notifyServiceStateChanged: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->notifyServiceStateChanged()V
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1600(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay(Z)V

    goto/16 :goto_0

    .line 488
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 489
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v5

    .line 490
    .local v5, "majorPhoneId":I
    const-string v12, "phone"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 492
    .local v8, "phoneId":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    .line 493
    .local v2, "currentPhoneId":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "RADIO_TECHNOLOGY: phoneId"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",currentPhoneId"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 494
    if-ne v2, v5, :cond_12

    if-ne v2, v8, :cond_12

    .line 495
    const-string v12, "phoneName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 496
    .local v9, "phoneType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "phoneType: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 497
    const-string v12, "CdmaLteDc"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 498
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v13, "CdmaLteDc mode"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v12, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setDeviceRatMode(I)V

    .line 502
    .end local v9    # "phoneType":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontUpdateNetworkStateFlag:Z

    .line 503
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    .line 505
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isInSvlteMode()Z
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1700(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 506
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v13, "Radio Tech mode changed to CSFB, notify signal strength"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1800(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->notifySignalStrength()V

    goto/16 :goto_0

    .line 510
    .end local v2    # "currentPhoneId":I
    .end local v5    # "majorPhoneId":I
    .end local v8    # "phoneId":I
    :cond_13
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.android.ims.IMS_STATE_CHANGED"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 511
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_0

    .line 512
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_0
.end method
