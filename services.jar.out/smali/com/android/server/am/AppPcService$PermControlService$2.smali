.class Lcom/android/server/am/AppPcService$PermControlService$2;
.super Ljava/lang/Object;
.source "AppPcService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppPcService$PermControlService;->recordCheckHistory(Ljava/lang/String;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/AppPcService$PermControlService;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcService$PermControlService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1442
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    iput-object p2, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1446
    const/4 v2, 0x0

    .line 1447
    .local v2, "values":Landroid/content/ContentValues;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/am/AppPcService$PermControlService;->access$3000(Lcom/android/server/am/AppPcService$PermControlService;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1448
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/am/AppPcService$PermControlService;->access$3000(Lcom/android/server/am/AppPcService$PermControlService;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->val$key:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/content/ContentValues;

    move-object v2, v0

    .line 1449
    monitor-exit v4

    .line 1450
    if-nez v2, :cond_0

    .line 1468
    :goto_0
    return-void

    .line 1449
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1465
    :catch_0
    move-exception v1

    .line 1466
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1459
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/am/AppPcService$PermControlService;->access$3100(Lcom/android/server/am/AppPcService$PermControlService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1460
    :try_start_4
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/am/AppPcService$PermControlService;->access$3100(Lcom/android/server/am/AppPcService$PermControlService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1461
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/am/AppPcService$PermControlService;->access$3100(Lcom/android/server/am/AppPcService$PermControlService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v5, 0x64

    if-le v3, v5, :cond_1

    .line 1462
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/am/AppPcService$PermControlService;->access$3100(Lcom/android/server/am/AppPcService$PermControlService;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1464
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_1
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0
.end method
