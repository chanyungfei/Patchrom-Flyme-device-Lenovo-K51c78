.class Lcom/android/server/notification/NotificationManagerService$9;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$id:I

.field final synthetic val$isSystemNotification:Z

.field final synthetic val$notification:Landroid/app/Notification;

.field final synthetic val$opPkg:Ljava/lang/String;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$user:Landroid/os/UserHandle;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/os/UserHandle;IZ)V
    .locals 0

    .prologue
    .line 2177
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$pkg:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$opPkg:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$id:I

    iput-object p6, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$tag:Ljava/lang/String;

    iput p7, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingUid:I

    iput p8, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingPid:I

    iput-object p9, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$user:Landroid/os/UserHandle;

    iput p10, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$userId:I

    iput-boolean p11, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$isSystemNotification:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 2181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 2186
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->priority:I

    const/4 v5, -0x2

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Lcom/android/server/notification/NotificationManagerService;->clamp(III)I

    move-result v4

    iput v4, v3, Landroid/app/Notification;->priority:I

    .line 2189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    .line 2190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->priority:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 2191
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    const/4 v4, 0x2

    iput v4, v3, Landroid/app/Notification;->priority:I

    .line 2201
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->priority:I

    mul-int/lit8 v9, v3, 0xa

    .line 2204
    .local v9, "score":I
    new-instance v2, Landroid/service/notification/StatusBarNotification;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$opPkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$id:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingUid:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingPid:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$user:Landroid/os/UserHandle;

    invoke-direct/range {v2 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2207
    .local v2, "n":Landroid/service/notification/StatusBarNotification;
    new-instance v22, Lcom/android/server/notification/NotificationRecord;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v9}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/service/notification/StatusBarNotification;I)V

    .line 2208
    .local v22, "r":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/notification/NotificationRecord;

    .line 2209
    .local v20, "old":Lcom/android/server/notification/NotificationRecord;
    if-eqz v20, :cond_1

    .line 2211
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationRecord;->copyRankingInformation(Lcom/android/server/notification/NotificationRecord;)V

    .line 2216
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingUid:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingPid:I

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    # invokes: Lcom/android/server/notification/NotificationManagerService;->handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    invoke-static {v3, v0, v1, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->access$4700(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V

    .line 2217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingUid:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingPid:I

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    # invokes: Lcom/android/server/notification/NotificationManagerService;->removeUnusedGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)Z
    invoke-static {v3, v0, v1, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->access$4800(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)Z

    move-result v18

    .line 2222
    .local v18, "ignoreNotification":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$pkg:Ljava/lang/String;

    const-string v4, "com.android.providers.downloads"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "DownloadManager"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2224
    :cond_2
    const/16 v17, 0x0

    .line 2225
    .local v17, "enqueueStatus":I
    if-eqz v18, :cond_5

    .line 2226
    const/16 v17, 0x2

    .line 2230
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingUid:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingPid:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$id:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$userId:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    invoke-virtual {v3}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v10 .. v17}, Lcom/android/server/EventLogTags;->writeNotificationEnqueue(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    .line 2235
    .end local v17    # "enqueueStatus":I
    :cond_4
    if-eqz v18, :cond_6

    .line 2236
    monitor-exit v23

    .line 2316
    :goto_1
    return-void

    .line 2227
    .restart local v17    # "enqueueStatus":I
    :cond_5
    if-eqz v20, :cond_3

    .line 2228
    const/16 v17, 0x1

    goto :goto_0

    .line 2239
    .end local v17    # "enqueueStatus":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    .line 2244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$id:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->blockApps(Ljava/lang/String;ILandroid/app/Notification;)Z
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/notification/NotificationManagerService;->access$4900(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/Notification;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2245
    const/16 v9, -0x3e8

    .line 2249
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingUid:I

    # invokes: Lcom/android/server/notification/NotificationManagerService;->noteNotificationOp(Ljava/lang/String;I)Z
    invoke-static {v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 2250
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$isSystemNotification:Z

    if-nez v3, :cond_8

    .line 2256
    const/16 v3, -0x14

    move-object/from16 v0, v22

    iput v3, v0, Lcom/android/server/notification/NotificationRecord;->score:I

    .line 2257
    const-string v3, "LenovoNotificationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Suppressing notification from package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", But we let it go"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    :cond_8
    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/server/notification/NotificationRecord;->score:I

    const/16 v4, -0x14

    if-ge v3, v4, :cond_9

    .line 2264
    monitor-exit v23

    goto :goto_1

    .line 2315
    .end local v2    # "n":Landroid/service/notification/StatusBarNotification;
    .end local v9    # "score":I
    .end local v18    # "ignoreNotification":Z
    .end local v20    # "old":Lcom/android/server/notification/NotificationRecord;
    .end local v22    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v3

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2267
    .restart local v2    # "n":Landroid/service/notification/StatusBarNotification;
    .restart local v9    # "score":I
    .restart local v18    # "ignoreNotification":Z
    .restart local v20    # "old":Lcom/android/server/notification/NotificationRecord;
    .restart local v22    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;)I

    move-result v19

    .line 2268
    .local v19, "index":I
    if-gez v19, :cond_b

    .line 2269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2270
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$5100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerPostedByApp(Lcom/android/server/notification/NotificationRecord;)V

    .line 2281
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_a

    .line 2286
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x22

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 2290
    if-eqz v20, :cond_a

    .line 2291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-wide v4, v4, Landroid/app/Notification;->when:J

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    .line 2294
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, v22

    # invokes: Lcom/android/server/notification/NotificationManagerService;->applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V
    invoke-static {v3, v0}, Lcom/android/server/notification/NotificationManagerService;->access$5200(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V

    .line 2295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 2297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->flags:I

    const/high16 v4, 0x10000000

    and-int/2addr v3, v4

    if-nez v3, :cond_d

    .line 2300
    if-eqz v20, :cond_c

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v21, v0

    .line 2301
    .local v21, "oldSbn":Landroid/service/notification/StatusBarNotification;
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v2, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)V

    .line 2314
    .end local v21    # "oldSbn":Landroid/service/notification/StatusBarNotification;
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, v22

    # invokes: Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V
    invoke-static {v3, v0}, Lcom/android/server/notification/NotificationManagerService;->access$5300(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V

    .line 2315
    monitor-exit v23

    goto/16 :goto_1

    .line 2272
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "old":Lcom/android/server/notification/NotificationRecord;
    check-cast v20, Lcom/android/server/notification/NotificationRecord;

    .line 2273
    .restart local v20    # "old":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$5100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Lcom/android/server/notification/NotificationUsageStats;->registerUpdatedByApp(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 2276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    iget v4, v3, Landroid/app/Notification;->flags:I

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x40

    or-int/2addr v4, v5

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 2278
    const/4 v3, 0x1

    move-object/from16 v0, v22

    iput-boolean v3, v0, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    goto/16 :goto_2

    .line 2300
    :cond_c
    const/16 v21, 0x0

    goto :goto_3

    .line 2303
    :cond_d
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not posting notification with icon==0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$notification:Landroid/app/Notification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    if-eqz v20, :cond_e

    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-nez v3, :cond_e

    .line 2305
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Landroid/service/notification/StatusBarNotification;)V

    .line 2310
    :cond_e
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WARNING: In a future release this will crash the app: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4
.end method
