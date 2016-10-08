.class final Landroid/app/ActivityThread$QueryHistory;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHistory"
.end annotation


# instance fields
.field private mCursorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/ActivityThread$QueryHistoryRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPfdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/ActivityThread$QueryHistoryRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderLeakDetect:Z

.field private mUriMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUriPfdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 2

    .prologue
    .line 5802
    iput-object p1, p0, Landroid/app/ActivityThread$QueryHistory;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5803
    const-string v0, "ProviderLeakDetecter"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityThread$QueryHistory;->mProviderLeakDetect:Z

    .line 5807
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    .line 5809
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    .line 5812
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    .line 5814
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/ActivityThread;
    .param p2, "x1"    # Landroid/app/ActivityThread$1;

    .prologue
    .line 5802
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$QueryHistory;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private checkAeeWarningList()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 5823
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    .line 5824
    .local v6, "uid":I
    const/4 v2, 0x0

    .line 5827
    .local v2, "inStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v8, "/data/system/resmon-uid.txt"

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5829
    .end local v2    # "inStream":Ljava/io/InputStream;
    .local v3, "inStream":Ljava/io/InputStream;
    if-eqz v3, :cond_3

    .line 5830
    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 5831
    .local v4, "inputReader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 5833
    .local v0, "buffReader":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 5834
    .local v5, "line":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_3

    .line 5835
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    if-ne v6, v8, :cond_2

    .line 5836
    const/4 v7, 0x1

    .line 5845
    if-eqz v3, :cond_0

    .line 5847
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    move-object v2, v3

    .line 5849
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local v4    # "inputReader":Ljava/io/InputStreamReader;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v2    # "inStream":Ljava/io/InputStream;
    :cond_1
    :goto_2
    return v7

    .line 5838
    .end local v2    # "inStream":Ljava/io/InputStream;
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    .restart local v4    # "inputReader":Ljava/io/InputStreamReader;
    .restart local v5    # "line":Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    goto :goto_0

    .line 5845
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v4    # "inputReader":Ljava/io/InputStreamReader;
    .end local v5    # "line":Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_4

    .line 5847
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_3
    move-object v2, v3

    .line 5849
    .end local v3    # "inStream":Ljava/io/InputStream;
    .restart local v2    # "inStream":Ljava/io/InputStream;
    goto :goto_2

    .line 5842
    :catch_0
    move-exception v1

    .line 5845
    .local v1, "e":Ljava/io/IOException;
    :goto_4
    if-eqz v2, :cond_1

    .line 5847
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 5848
    :catch_1
    move-exception v8

    goto :goto_2

    .line 5845
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v2, :cond_5

    .line 5847
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 5849
    :cond_5
    :goto_6
    throw v7

    .line 5848
    .end local v2    # "inStream":Ljava/io/InputStream;
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    .restart local v4    # "inputReader":Ljava/io/InputStreamReader;
    .restart local v5    # "line":Ljava/lang/String;
    :catch_2
    move-exception v8

    goto :goto_1

    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v4    # "inputReader":Ljava/io/InputStreamReader;
    .end local v5    # "line":Ljava/lang/String;
    :catch_3
    move-exception v8

    goto :goto_3

    .end local v3    # "inStream":Ljava/io/InputStream;
    .restart local v2    # "inStream":Ljava/io/InputStream;
    :catch_4
    move-exception v8

    goto :goto_6

    .line 5845
    .end local v2    # "inStream":Ljava/io/InputStream;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "inStream":Ljava/io/InputStream;
    .restart local v2    # "inStream":Ljava/io/InputStream;
    goto :goto_5

    .line 5842
    .end local v2    # "inStream":Ljava/io/InputStream;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3    # "inStream":Ljava/io/InputStream;
    .restart local v2    # "inStream":Ljava/io/InputStream;
    goto :goto_4
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Throwable;I)Z
    .locals 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "stackTrace"    # Ljava/lang/Throwable;
    .param p3, "cursorHashCode"    # I

    .prologue
    const/4 v8, 0x1

    .line 5863
    const/4 v3, 0x0

    .line 5865
    .local v3, "reportException":Z
    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    monitor-enter v5

    .line 5866
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_7

    .line 5867
    iget-object v4, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5872
    :goto_0
    iget-boolean v4, p0, Landroid/app/ActivityThread$QueryHistory;->mProviderLeakDetect:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x5

    if-lt v4, v6, :cond_0

    .line 5873
    const-string v4, "ProviderLeakDetecter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PossibleCursorLeak:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",QueryCounter:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5878
    :cond_0
    iget-object v4, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 5879
    new-instance v2, Landroid/app/ActivityThread$QueryHistoryRecord;

    iget-object v4, p0, Landroid/app/ActivityThread$QueryHistory;->this$0:Landroid/app/ActivityThread;

    invoke-direct {v2, v4, p1, p2}, Landroid/app/ActivityThread$QueryHistoryRecord;-><init>(Landroid/app/ActivityThread;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5880
    .local v2, "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    iget-object v4, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5883
    .end local v2    # "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    :cond_1
    iget-boolean v4, p0, Landroid/app/ActivityThread$QueryHistory;->mProviderLeakDetect:Z

    if-eqz v4, :cond_2

    .line 5884
    const-string v4, "ProviderLeakDetecter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cursor Open:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Total Opened Cursor Count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5890
    :cond_2
    iget-object v4, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    const/16 v6, 0x46

    if-eq v4, v6, :cond_3

    iget-object v4, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    const/16 v6, 0x50

    if-ne v4, v6, :cond_4

    .line 5891
    :cond_3
    const-string v4, "ProviderLeakDetecter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total Opened Cursor Count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5892
    invoke-virtual {p0}, Landroid/app/ActivityThread$QueryHistory;->dump()V

    .line 5893
    const/4 v3, 0x1

    .line 5895
    :cond_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5898
    if-eqz v3, :cond_6

    .line 5900
    invoke-direct {p0}, Landroid/app/ActivityThread$QueryHistory;->checkAeeWarningList()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5901
    const/4 v0, 0x0

    .line 5903
    .local v0, "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :try_start_1
    const-string/jumbo v4, "ro.have_aee_feature"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5904
    new-instance v1, Lcom/mediatek/aee/ExceptionLog;

    invoke-direct {v1}, Lcom/mediatek/aee/ExceptionLog;-><init>()V

    .end local v0    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    .local v1, "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    move-object v0, v1

    .line 5906
    .end local v1    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    .restart local v0    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :cond_5
    if-eqz v0, :cond_6

    .line 5907
    const/4 v4, 0x0

    const-string v5, "CursorLeakDetecter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total Opened Cursor Count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/data/cursorleak/traces.txt"

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/mediatek/aee/ExceptionLog;->systemreport(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5920
    .end local v0    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :cond_6
    :goto_1
    return v8

    .line 5869
    :cond_7
    :try_start_2
    iget-object v6, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    iget-object v4, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 5895
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 5914
    .restart local v0    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public addPfd(Ljava/lang/String;Ljava/lang/Throwable;I)Z
    .locals 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "stackTrace"    # Ljava/lang/Throwable;
    .param p3, "hashCode"    # I

    .prologue
    const/4 v8, 0x1

    .line 5959
    const/4 v3, 0x0

    .line 5961
    .local v3, "reportException":Z
    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    monitor-enter v5

    .line 5962
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    .line 5963
    iget-object v4, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5968
    :goto_0
    iget-boolean v4, p0, Landroid/app/ActivityThread$QueryHistory;->mProviderLeakDetect:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x5

    if-lt v4, v6, :cond_0

    .line 5969
    const-string v4, "ProviderLeakDetecter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Possible PFD Leak:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",QueryCounter:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5974
    :cond_0
    iget-object v4, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 5975
    new-instance v2, Landroid/app/ActivityThread$QueryHistoryRecord;

    iget-object v4, p0, Landroid/app/ActivityThread$QueryHistory;->this$0:Landroid/app/ActivityThread;

    invoke-direct {v2, v4, p1, p2}, Landroid/app/ActivityThread$QueryHistoryRecord;-><init>(Landroid/app/ActivityThread;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5976
    .local v2, "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    iget-object v4, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5979
    .end local v2    # "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    :cond_1
    iget-boolean v4, p0, Landroid/app/ActivityThread$QueryHistory;->mProviderLeakDetect:Z

    if-eqz v4, :cond_2

    .line 5980
    const-string v4, "ProviderLeakDetecter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PFD Open:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Total Opened PFD Count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5986
    :cond_2
    iget-object v4, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    const/16 v6, 0xfa

    if-ne v4, v6, :cond_3

    .line 5987
    const-string v4, "ProviderLeakDetecter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total Opened PFD Count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5988
    invoke-virtual {p0}, Landroid/app/ActivityThread$QueryHistory;->dump()V

    .line 5989
    const/4 v3, 0x1

    .line 5991
    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5994
    if-eqz v3, :cond_5

    .line 5996
    invoke-direct {p0}, Landroid/app/ActivityThread$QueryHistory;->checkAeeWarningList()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5997
    const/4 v0, 0x0

    .line 5999
    .local v0, "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :try_start_1
    const-string/jumbo v4, "ro.have_aee_feature"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6000
    new-instance v1, Lcom/mediatek/aee/ExceptionLog;

    invoke-direct {v1}, Lcom/mediatek/aee/ExceptionLog;-><init>()V

    .end local v0    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    .local v1, "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    move-object v0, v1

    .line 6002
    .end local v1    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    .restart local v0    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :cond_4
    if-eqz v0, :cond_5

    .line 6003
    const/4 v4, 0x0

    const-string v5, "PFDLeakDetecter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total Opened PFD Count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/data/cursorleak/traces.txt"

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/mediatek/aee/ExceptionLog;->systemreport(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6015
    .end local v0    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :cond_5
    :goto_1
    return v8

    .line 5965
    :cond_6
    :try_start_2
    iget-object v6, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    iget-object v4, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 5991
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 6009
    .restart local v0    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public dump()V
    .locals 6

    .prologue
    .line 6051
    const-string v3, "ProviderLeakDetecter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Total Opened Cursor Count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6052
    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6053
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6054
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6055
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$QueryHistoryRecord;

    .line 6056
    .local v2, "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    const-string v3, "ProviderLeakDetecter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CursorQueryHistory:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$QueryHistoryRecord;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 6060
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    :cond_0
    const-string v3, "ProviderLeakDetecter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Total Opened PFD Count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6061
    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6062
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6063
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6064
    .restart local v0    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$QueryHistoryRecord;

    .line 6065
    .restart local v2    # "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    const-string v3, "ProviderLeakDetecter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PFDQueryHistory:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$QueryHistoryRecord;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 6067
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    :cond_1
    return-void
.end method

.method public remove(I)V
    .locals 6
    .param p1, "cursorHashCode"    # I

    .prologue
    const/4 v4, 0x1

    .line 5929
    iget-object v2, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    monitor-enter v2

    .line 5930
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$QueryHistoryRecord;

    .line 5931
    .local v0, "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5932
    :cond_0
    const-string v1, "ProviderLeakDetecter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad request for cursor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5933
    monitor-exit v2

    .line 5948
    :goto_0
    return-void

    .line 5934
    :cond_1
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 5935
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5936
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5942
    :cond_2
    :goto_1
    iget-boolean v1, p0, Landroid/app/ActivityThread$QueryHistory;->mProviderLeakDetect:Z

    if-eqz v1, :cond_3

    .line 5943
    const-string v1, "ProviderLeakDetecter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cursor Close:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Total Opened Cursor Count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5947
    :cond_3
    monitor-exit v2

    goto :goto_0

    .end local v0    # "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5937
    .restart local v0    # "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    :cond_4
    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 5938
    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    iget-object v4, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    iget-object v5, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5939
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public removePfd(I)V
    .locals 6
    .param p1, "hashCode"    # I

    .prologue
    const/4 v4, 0x1

    .line 6024
    iget-object v2, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    monitor-enter v2

    .line 6025
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$QueryHistoryRecord;

    .line 6026
    .local v0, "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 6027
    :cond_0
    const-string v1, "ProviderLeakDetecter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad request for pfd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6028
    monitor-exit v2

    .line 6043
    :goto_0
    return-void

    .line 6029
    :cond_1
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 6030
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6031
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6037
    :cond_2
    :goto_1
    iget-boolean v1, p0, Landroid/app/ActivityThread$QueryHistory;->mProviderLeakDetect:Z

    if-eqz v1, :cond_3

    .line 6038
    const-string v1, "ProviderLeakDetecter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PFD Close:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Total Opened PFD Count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6042
    :cond_3
    monitor-exit v2

    goto :goto_0

    .end local v0    # "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6032
    .restart local v0    # "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    :cond_4
    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 6033
    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    iget-object v4, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    iget-object v5, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6034
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
