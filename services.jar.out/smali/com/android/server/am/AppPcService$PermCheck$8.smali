.class Lcom/android/server/am/AppPcService$PermCheck$8;
.super Ljava/lang/Object;
.source "AppPcService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppPcService$PermCheck;->startSyncUserPermissionLists()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPcService$PermCheck;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcService$PermCheck;)V
    .locals 0

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermCheck$8;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 2030
    const/4 v9, 0x0

    .line 2032
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppPcService$PermCheck$8;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/AppPcService$PermCheck;->access$4100(Lcom/android/server/am/AppPcService$PermCheck;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_USER_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/am/AppPcService$PermCheck;->access$5100()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2033
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2034
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppPcService$PermCheck$8;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionLists:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/am/AppPcService$PermCheck;->access$5200(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2035
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppPcService$PermCheck$8;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mUidPackageNameMaps:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/am/AppPcService$PermCheck;->access$3400(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2036
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2037
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2063
    if-eqz v9, :cond_0

    .line 2064
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2068
    :cond_0
    :goto_0
    return-void

    .line 2039
    :cond_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppPcService$PermCheck$8;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionLists:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/am/AppPcService$PermCheck;->access$5200(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2040
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppPcService$PermCheck$8;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mUidPackageNameMaps:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/am/AppPcService$PermCheck;->access$3400(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2041
    const-string v1, "package"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 2042
    .local v11, "packageColumnIndex":I
    const-string v1, "permission"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 2043
    .local v13, "permissionColumnIndex":I
    const-string v1, "permission_status"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 2044
    .local v15, "permissionStatusColumnIndex":I
    const-string v1, "extra_data_1"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2046
    .local v8, "backgroundStatusColumnIndex":I
    :cond_2
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2047
    .local v12, "packageName":Ljava/lang/String;
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2048
    .local v14, "permissionName":Ljava/lang/String;
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 2049
    .local v16, "status":I
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/am/AppPcService$PermCheck;->translateBackgroundStatus(Ljava/lang/String;)I
    invoke-static {v1}, Lcom/android/server/am/AppPcService$PermCheck;->access$4900(Ljava/lang/String;)I

    move-result v7

    .line 2050
    .local v7, "backgroundStatus":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppPcService$PermCheck$8;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionLists:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/am/AppPcService$PermCheck;->access$5200(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v12, v14}, Lcom/android/server/am/AppPcService$PermCheck;->genNotifyTypeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v5, v6

    const/4 v6, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2051
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppPcService$PermCheck$8;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    # invokes: Lcom/android/server/am/AppPcService$PermCheck;->getUidByPackageName(Ljava/lang/String;)Ljava/lang/Integer;
    invoke-static {v1, v12}, Lcom/android/server/am/AppPcService$PermCheck;->access$5300(Lcom/android/server/am/AppPcService$PermCheck;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    .line 2052
    .local v17, "uid":Ljava/lang/Integer;
    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppPcService$PermCheck$8;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mUidPackageNameMaps:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/am/AppPcService$PermCheck;->access$3400(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2053
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppPcService$PermCheck$8;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mUidPackageNameMaps:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/am/AppPcService$PermCheck;->access$3400(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2055
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2056
    :cond_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2057
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2063
    .end local v7    # "backgroundStatus":I
    .end local v8    # "backgroundStatusColumnIndex":I
    .end local v11    # "packageColumnIndex":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "permissionColumnIndex":I
    .end local v14    # "permissionName":Ljava/lang/String;
    .end local v15    # "permissionStatusColumnIndex":I
    .end local v16    # "status":I
    .end local v17    # "uid":Ljava/lang/Integer;
    :cond_5
    if-eqz v9, :cond_6

    .line 2064
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2067
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppPcService$PermCheck$8;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionListsSyncThread:Ljava/lang/Thread;
    invoke-static {v1, v2}, Lcom/android/server/am/AppPcService$PermCheck;->access$5402(Lcom/android/server/am/AppPcService$PermCheck;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto/16 :goto_0

    .line 2056
    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1

    .line 2057
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2059
    :catch_0
    move-exception v10

    .line 2060
    .local v10, "e":Ljava/lang/Exception;
    :try_start_9
    const-string v1, "Security_PermCheck"

    const-string v2, "startSyncUserPermissionLists error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2063
    if-eqz v9, :cond_6

    .line 2064
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2063
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v1

    if-eqz v9, :cond_7

    .line 2064
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1
.end method
