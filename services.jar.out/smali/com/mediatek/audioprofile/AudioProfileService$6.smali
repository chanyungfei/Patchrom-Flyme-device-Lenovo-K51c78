.class Lcom/mediatek/audioprofile/AudioProfileService$6;
.super Landroid/content/BroadcastReceiver;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfileService;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileService;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 492
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 493
    .local v6, "action":Ljava/lang/String;
    const-string v0, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mUpgradeReceiver start update profile: action = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 498
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mShouldGetDefaultRingtoneAfterScanFinish:Z
    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1300(Lcom/mediatek/audioprofile/AudioProfileService;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 500
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # invokes: Lcom/mediatek/audioprofile/AudioProfileService;->readDefaultRingtones()V
    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1400(Lcom/mediatek/audioprofile/AudioProfileService;)V

    .line 501
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->access$600(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;
    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1500(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 503
    .local v1, "profileKey":Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->access$600(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 505
    .local v12, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v0, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;
    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1700(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v0

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1600()I

    move-result v13

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 509
    :cond_1
    iget-object v0, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    if-nez v0, :cond_2

    .line 510
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;
    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1700(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v0

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1800()I

    move-result v13

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 514
    :cond_2
    iget-object v0, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    if-nez v0, :cond_3

    .line 515
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;
    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1700(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v0

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1900()I

    move-result v13

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 519
    :cond_3
    iget-object v0, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;
    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1700(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v0

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService;->access$2000()I

    move-result v13

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    goto :goto_0

    .line 524
    .end local v1    # "profileKey":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;
    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1700(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v0

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1600()I

    move-result v13

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_1
    # setter for: Lcom/mediatek/audioprofile/AudioProfileService;->mShouldGetDefaultRingtoneAfterScanFinish:Z
    invoke-static {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1302(Lcom/mediatek/audioprofile/AudioProfileService;Z)Z

    .line 531
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_5
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->access$2100(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v3

    .line 533
    .local v3, "volumePath":[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 534
    .local v7, "allKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;
    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1500(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 536
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 537
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 538
    .restart local v1    # "profileKey":Ljava/lang/String;
    const-string v0, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mUpgradeReceive deal case: profileKey = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/4 v10, 0x0

    .line 540
    .local v10, "newUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v12

    .line 542
    .restart local v12    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    const-string v0, "ro.mtk_multisim_ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 544
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mTeleManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->access$2200(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v11

    .line 545
    .local v11, "numSlots":I
    const-wide/16 v4, -0x1

    .line 546
    .local v4, "simId":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v11, :cond_7

    .line 547
    const-wide/16 v4, -0x1

    .line 549
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v2, 0x1

    # invokes: Lcom/mediatek/audioprofile/AudioProfileService;->updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;J)V
    invoke-static/range {v0 .. v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$2300(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;J)V

    .line 551
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/16 v2, 0x8

    # invokes: Lcom/mediatek/audioprofile/AudioProfileService;->updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;J)V
    invoke-static/range {v0 .. v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$2300(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;J)V

    .line 546
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 527
    .end local v1    # "profileKey":Ljava/lang/String;
    .end local v3    # "volumePath":[Ljava/lang/String;
    .end local v4    # "simId":J
    .end local v7    # "allKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "i":I
    .end local v10    # "newUri":Landroid/net/Uri;
    .end local v11    # "numSlots":I
    .end local v12    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 556
    .restart local v1    # "profileKey":Ljava/lang/String;
    .restart local v3    # "volumePath":[Ljava/lang/String;
    .restart local v7    # "allKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "newUri":Landroid/net/Uri;
    .restart local v12    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    :cond_7
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v2, 0x1

    # invokes: Lcom/mediatek/audioprofile/AudioProfileService;->updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$2400(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/16 v2, 0x8

    # invokes: Lcom/mediatek/audioprofile/AudioProfileService;->updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$2400(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v2, 0x2

    # invokes: Lcom/mediatek/audioprofile/AudioProfileService;->updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$2400(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/16 v2, 0x10

    # invokes: Lcom/mediatek/audioprofile/AudioProfileService;->updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$2400(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_2

    .line 566
    .end local v1    # "profileKey":Ljava/lang/String;
    .end local v10    # "newUri":Landroid/net/Uri;
    .end local v12    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    :cond_8
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v2, 0x1

    # invokes: Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V
    invoke-static {v0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->access$2500(Lcom/mediatek/audioprofile/AudioProfileService;I)V

    .line 567
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/16 v2, 0x8

    # invokes: Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V
    invoke-static {v0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->access$2500(Lcom/mediatek/audioprofile/AudioProfileService;I)V

    .line 568
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/16 v2, 0x10

    # invokes: Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V
    invoke-static {v0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->access$2500(Lcom/mediatek/audioprofile/AudioProfileService;I)V

    .line 569
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v2, 0x2

    # invokes: Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V
    invoke-static {v0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->access$2500(Lcom/mediatek/audioprofile/AudioProfileService;I)V

    .line 571
    .end local v3    # "volumePath":[Ljava/lang/String;
    .end local v7    # "allKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_9
    const-string v0, "AudioProfileService"

    const-string v2, "mUpgradeReceiver<<<"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    return-void
.end method
