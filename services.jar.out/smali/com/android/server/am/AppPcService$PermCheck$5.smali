.class Lcom/android/server/am/AppPcService$PermCheck$5;
.super Ljava/lang/Object;
.source "AppPcService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppPcService$PermCheck;->startSyncSystemWhiteLists()V
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
    .line 1901
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermCheck$5;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1904
    const/4 v6, 0x0

    .line 1906
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck$5;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermCheck;->access$4100(Lcom/android/server/am/AppPcService$PermCheck;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_WHITE_LIST_SYS_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/am/AppPcService$PermCheck;->access$4000()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1909
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1910
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck$5;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mSystemWhiteLists:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermCheck;->access$4200(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1911
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1912
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1929
    if-eqz v6, :cond_0

    .line 1930
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1934
    :cond_0
    :goto_0
    return-void

    .line 1914
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck$5;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mSystemWhiteLists:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermCheck;->access$4200(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1915
    const-string v0, "package"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1918
    .local v8, "packageColumnIndex":I
    :cond_2
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1920
    .local v9, "packageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck$5;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mSystemWhiteLists:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermCheck;->access$4200(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1922
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1923
    :cond_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1929
    .end local v8    # "packageColumnIndex":I
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_4
    if-eqz v6, :cond_5

    .line 1930
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1933
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck$5;->this$0:Lcom/android/server/am/AppPcService$PermCheck;

    # setter for: Lcom/android/server/am/AppPcService$PermCheck;->mSystemWhiteListsSyncThread:Ljava/lang/Thread;
    invoke-static {v0, v10}, Lcom/android/server/am/AppPcService$PermCheck;->access$4302(Lcom/android/server/am/AppPcService$PermCheck;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_0

    .line 1923
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1925
    :catch_0
    move-exception v7

    .line 1926
    .local v7, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v0, "Security_PermCheck"

    const-string v1, "startSyncSystemWhiteLists error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1929
    if-eqz v6, :cond_5

    .line 1930
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1929
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_6

    .line 1930
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method
