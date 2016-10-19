.class Lcom/mediatek/audioprofile/AudioProfileService$4;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 21
    .param p1, "selfChange"    # Z

    .prologue
    .line 364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$300(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v20

    monitor-enter v20

    .line 365
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$200(Lcom/mediatek/audioprofile/AudioProfileService;)Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    move-result-object v3

    move/from16 v0, p1

    invoke-interface {v3, v0}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->onRingtoneChange(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 366
    monitor-exit v20

    .line 419
    :goto_0
    return-void

    .line 369
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$300(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v2

    .line 370
    .local v2, "activeScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$300(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v17

    .line 371
    .local v17, "activeState":Lcom/mediatek/audioprofile/AudioProfileState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "ringtone"

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 372
    .local v19, "uriString":Ljava/lang/String;
    if-nez v19, :cond_3

    const/4 v8, 0x0

    .line 374
    .local v8, "systemUri":Landroid/net/Uri;
    :goto_1
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    if-nez v3, :cond_1

    if-nez v8, :cond_2

    :cond_1
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    if-eqz v3, :cond_4

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    invoke-virtual {v3, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    const/16 v18, 0x1

    .line 376
    .local v18, "isPassiveChange":Z
    :goto_2
    const-string v3, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ringtone changed, mResetFlag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mResetFlag:Z
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  isPassiveChange = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uriString = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileService$9;->$SwitchMap$com$mediatek$audioprofile$AudioProfileManager$Scenario:[I

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    .line 414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->setShouldSyncToSystemFlag(IZ)V

    .line 415
    const-string v3, "AudioProfileService"

    const-string v5, "Ringtone changed in silent profile, sync to system if switch to last active profile."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :goto_3
    monitor-exit v20

    goto/16 :goto_0

    .end local v2    # "activeScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v8    # "systemUri":Landroid/net/Uri;
    .end local v17    # "activeState":Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v18    # "isPassiveChange":Z
    .end local v19    # "uriString":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 372
    .restart local v2    # "activeScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .restart local v17    # "activeState":Lcom/mediatek/audioprofile/AudioProfileState;
    .restart local v19    # "uriString":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_1

    .line 374
    .restart local v8    # "systemUri":Landroid/net/Uri;
    :cond_4
    const/16 v18, 0x0

    goto :goto_2

    .line 381
    .restart local v18    # "isPassiveChange":Z
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$200(Lcom/mediatek/audioprofile/AudioProfileService;)Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->shouldSyncGeneralRingtoneToOutdoor()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 385
    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mResetFlag:Z
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 386
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$400(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v3

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 387
    .local v4, "generalKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$400(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v3

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 388
    .local v10, "outdoorKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mSimId:J
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1100(Lcom/mediatek/audioprofile/AudioProfileService;)J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iput-object v8, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 389
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mSimId:J
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1100(Lcom/mediatek/audioprofile/AudioProfileService;)J

    move-result-wide v6

    invoke-virtual {v3, v10, v6, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iput-object v8, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 390
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mSimId:J
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1100(Lcom/mediatek/audioprofile/AudioProfileService;)J

    move-result-wide v6

    # invokes: Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V
    invoke-static/range {v3 .. v8}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1200(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mSimId:J
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1100(Lcom/mediatek/audioprofile/AudioProfileService;)J

    move-result-wide v12

    move-object v14, v8

    # invokes: Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V
    invoke-static/range {v9 .. v14}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1200(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 392
    const-string v3, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ringtone changed by other app in non-silent profile, synchronize to active profile: new uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 395
    .end local v4    # "generalKey":Ljava/lang/String;
    .end local v10    # "outdoorKey":Ljava/lang/String;
    :cond_5
    const-string v3, "AudioProfileService"

    const-string v5, "Ringtone changed by itself, do nothing!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 403
    :cond_6
    :pswitch_1
    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mResetFlag:Z
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 404
    move-object/from16 v0, v17

    iput-object v8, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 405
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$300(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mSimId:J
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1100(Lcom/mediatek/audioprofile/AudioProfileService;)J

    move-result-wide v14

    move-object/from16 v16, v8

    # invokes: Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V
    invoke-static/range {v11 .. v16}, Lcom/mediatek/audioprofile/AudioProfileService;->access$1200(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 406
    const-string v3, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ringtone changed by other app in non-silent profile, synchronize to active profile: new uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 409
    :cond_7
    const-string v3, "AudioProfileService"

    const-string v5, "Ringtone changed by itself, do nothing!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 378
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
