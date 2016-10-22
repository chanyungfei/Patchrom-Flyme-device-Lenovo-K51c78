.class Lcom/android/server/AlarmManagerService$UninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UninstallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 3

    .prologue
    .line 2778
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2779
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2781
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2783
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2784
    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2785
    const-string v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2786
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2787
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2789
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2790
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2791
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2792
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2793
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 2798
    :try_start_0
    const-string v19, "AlarmManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "UninstallReceiver  action = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2799
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 2800
    .local v3, "action":Ljava/lang/String;
    const/4 v14, 0x0

    .line 2801
    .local v14, "pkgList":[Ljava/lang/String;
    const-string v19, "android.intent.action.QUERY_PACKAGE_RESTART"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 2802
    const-string v19, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 2803
    move-object v4, v14

    .local v4, "arr$":[Ljava/lang/String;
    array-length v10, v4

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v10, :cond_1

    aget-object v12, v4, v7

    .line 2804
    .local v12, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 2806
    const-string v19, "android"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 2808
    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$UninstallReceiver;->setResultCode(I)V

    .line 2809
    monitor-exit v20

    .line 2905
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .end local v12    # "packageName":Ljava/lang/String;
    :goto_1
    return-void

    .line 2803
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v7    # "i$":I
    .restart local v10    # "len$":I
    .restart local v12    # "packageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2815
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_1
    monitor-exit v20

    goto :goto_1

    .line 2904
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .end local v14    # "pkgList":[Ljava/lang/String;
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 2816
    .restart local v3    # "action":Ljava/lang/String;
    .restart local v14    # "pkgList":[Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v19, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 2817
    const-string v19, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 2885
    :cond_3
    :goto_2
    if-eqz v14, :cond_10

    array-length v0, v14

    move/from16 v19, v0

    if-lez v19, :cond_10

    .line 2886
    move-object v4, v14

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v10, v4

    .restart local v10    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_3
    if-ge v7, v10, :cond_10

    aget-object v13, v4, v7

    .line 2888
    .local v13, "pkg":Ljava/lang/String;
    const-string v19, "android"

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 2886
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2818
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_5
    const-string v19, "android.intent.action.USER_STOPPED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 2819
    const-string v19, "android.intent.extra.user_handle"

    const/16 v21, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 2820
    .local v18, "userHandle":I
    if-ltz v18, :cond_3

    .line 2821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(I)V

    goto :goto_2

    .line 2823
    .end local v18    # "userHandle":I
    :cond_6
    const-string v19, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 2825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    # invokes: Lcom/android/server/AlarmManagerService;->getIntentPKG(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$2700(Lcom/android/server/AlarmManagerService;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v12

    .line 2826
    .restart local v12    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmLock:Ljava/lang/Object;
    invoke-static/range {v19 .. v19}, Lcom/android/server/AlarmManagerService;->access$1100(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v21

    monitor-enter v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2828
    :try_start_2
    const-string v19, "AlarmManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "newPolicy for "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " policy is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/AlarmManagerService;->isInWhiteList(Ljava/lang/String;)Z
    invoke-static {v0, v12}, Lcom/android/server/AlarmManagerService;->access$2800(Lcom/android/server/AlarmManagerService;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    const/4 v15, 0x0

    .line 2830
    .local v15, "policy":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmPolicies:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/android/server/AlarmManagerService;->access$2900(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v19

    new-instance v22, Landroid/app/AlarmManager$AlarmPolicy;

    move-object/from16 v0, v22

    invoke-direct {v0, v12, v15}, Landroid/app/AlarmManager$AlarmPolicy;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2831
    const-string v19, "AlarmManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ACTION_PACKAGE_ADDED "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " policy is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    monitor-exit v21

    goto/16 :goto_2

    .end local v15    # "policy":I
    :catchall_1
    move-exception v19

    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v19

    .line 2829
    :cond_7
    const/4 v15, 0x1

    goto :goto_4

    .line 2837
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_8
    const-string v19, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    const-string v19, "android.intent.extra.REPLACING"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 2840
    monitor-exit v20

    goto/16 :goto_1

    .line 2845
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    # invokes: Lcom/android/server/AlarmManagerService;->getIntentPKG(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$2700(Lcom/android/server/AlarmManagerService;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v12

    .line 2846
    .restart local v12    # "packageName":Ljava/lang/String;
    const-string v19, "AlarmManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ACTION_PACKAGE_REMOVED "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmLock:Ljava/lang/Object;
    invoke-static/range {v19 .. v19}, Lcom/android/server/AlarmManagerService;->access$1100(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v21

    monitor-enter v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2848
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmPolicies:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/android/server/AlarmManagerService;->access$2900(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_b

    const-string v19, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 2849
    const-string v19, "AlarmManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "before PACKAGE_REMOVED mAlarmPolicies size:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmPolicies:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/android/server/AlarmManagerService;->access$2900(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmPolicies:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/android/server/AlarmManagerService;->access$2900(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 2851
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/AlarmManager$AlarmPolicy;>;"
    :cond_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 2852
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AlarmManager$AlarmPolicy;

    .line 2853
    .local v11, "p":Landroid/app/AlarmManager$AlarmPolicy;
    if-eqz v12, :cond_a

    iget-object v0, v11, Landroid/app/AlarmManager$AlarmPolicy;->app:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 2854
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 2855
    const-string v19, "AlarmManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "after PACKAGE_REMOVED mAlarmPolicies size:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmPolicies:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/android/server/AlarmManagerService;->access$2900(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/AlarmManager$AlarmPolicy;>;"
    .end local v11    # "p":Landroid/app/AlarmManager$AlarmPolicy;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmStats:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/android/server/AlarmManagerService;->access$3000(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_d

    .line 2862
    const-string v19, "AlarmManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "before PACKAGE_REMOVED mAlarmStats size:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmStats:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/android/server/AlarmManagerService;->access$3000(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmStats:Ljava/util/ArrayList;
    invoke-static/range {v19 .. v19}, Lcom/android/server/AlarmManagerService;->access$3000(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 2864
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/AlarmManager$AlarmStats;>;"
    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 2865
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/AlarmManager$AlarmStats;

    .line 2866
    .local v16, "s":Landroid/app/AlarmManager$AlarmStats;
    if-eqz v12, :cond_c

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/AlarmManager$AlarmStats;->app:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 2867
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 2868
    const-string v19, "AlarmManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "after PACKAGE_REMOVED mAlarmStats size:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmStats:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/android/server/AlarmManagerService;->access$3000(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/AlarmManager$AlarmStats;>;"
    .end local v16    # "s":Landroid/app/AlarmManager$AlarmStats;
    :cond_d
    monitor-exit v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2877
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 2878
    .local v5, "data":Landroid/net/Uri;
    if-eqz v5, :cond_3

    .line 2879
    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v13

    .line 2880
    .restart local v13    # "pkg":Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 2881
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v14, v0, [Ljava/lang/String;

    .end local v14    # "pkgList":[Ljava/lang/String;
    const/16 v19, 0x0

    aput-object v13, v14, v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .restart local v14    # "pkgList":[Ljava/lang/String;
    goto/16 :goto_2

    .line 2873
    .end local v5    # "data":Landroid/net/Uri;
    .end local v13    # "pkg":Ljava/lang/String;
    :catchall_2
    move-exception v19

    :try_start_6
    monitor-exit v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v19

    .line 2892
    .end local v12    # "packageName":Ljava/lang/String;
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v7    # "i$":I
    .restart local v10    # "len$":I
    .restart local v13    # "pkg":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/lang/String;)V

    .line 2893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v19

    add-int/lit8 v6, v19, -0x1

    .local v6, "i":I
    :goto_5
    if-ltz v6, :cond_4

    .line 2895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/ArrayMap;

    .line 2896
    .local v17, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_f

    .line 2897
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v19

    if-gtz v19, :cond_f

    .line 2898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2894
    :cond_f
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 2904
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v17    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_10
    monitor-exit v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1
.end method
