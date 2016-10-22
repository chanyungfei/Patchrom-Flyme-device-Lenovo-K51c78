.class public Landroid/content/ContentProviderClient;
.super Ljava/lang/Object;
.source "ContentProviderClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentProviderClient$1;,
        Landroid/content/ContentProviderClient$NotRespondingRunnable;
    }
.end annotation


# static fields
.field private static final IS_ENG_BUILD:Z

.field private static final PROVIDER_LEAK_DETECT:Z

.field private static final TAG:Ljava/lang/String; = "ContentProviderClient"

.field private static sAnrHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "ContentProviderClient.class"
    .end annotation
.end field


# instance fields
.field private mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

.field private mAnrTimeout:J

.field private final mContentProvider:Landroid/content/IContentProvider;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mGuard:Ldalvik/system/CloseGuard;

.field private final mPackageName:Ljava/lang/String;

.field private mReleased:Z

.field private final mStable:Z

.field private final mStackTrace:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    const-string v0, "ProviderLeakDetecter"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/content/ContentProviderClient;->PROVIDER_LEAK_DETECT:Z

    .line 85
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/content/ContentProviderClient;->IS_ENG_BUILD:Z

    return-void
.end method

.method constructor <init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Z)V
    .locals 2
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentProvider"    # Landroid/content/IContentProvider;
    .param p3, "stable"    # Z

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderClient;->mGuard:Ldalvik/system/CloseGuard;

    .line 92
    iput-object p1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    .line 93
    iput-object p2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    .line 94
    iget-object v0, p1, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    .line 95
    iput-boolean p3, p0, Landroid/content/ContentProviderClient;->mStable:Z

    .line 97
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 100
    sget-boolean v0, Landroid/content/ContentProviderClient;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Ensure that resources ContentProviderClient are closed after use"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderClient;->mStackTrace:Ljava/lang/Throwable;

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProviderClient;->mStackTrace:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/content/ContentProviderClient;)Landroid/content/IContentProvider;
    .locals 1
    .param p0, "x0"    # Landroid/content/ContentProviderClient;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/ContentProviderClient;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Landroid/content/ContentProviderClient;

    .prologue
    .line 63
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private afterRemote()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    :cond_0
    return-void
.end method

.method private beforeRemote()V
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    iget-wide v2, p0, Landroid/content/ContentProviderClient;->mAnrTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    :cond_0
    return-void
.end method

.method private checkAeeWarningList()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 496
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    .line 497
    .local v6, "uid":I
    const/4 v2, 0x0

    .line 500
    .local v2, "inStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v8, "/data/system/resmon-uid.txt"

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    .end local v2    # "inStream":Ljava/io/InputStream;
    .local v3, "inStream":Ljava/io/InputStream;
    if-eqz v3, :cond_3

    .line 503
    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 504
    .local v4, "inputReader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 506
    .local v0, "buffReader":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 507
    .local v5, "line":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_3

    .line 508
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    if-ne v6, v8, :cond_2

    .line 509
    const/4 v7, 0x1

    .line 518
    if-eqz v3, :cond_0

    .line 520
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    move-object v2, v3

    .line 523
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local v4    # "inputReader":Ljava/io/InputStreamReader;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v2    # "inStream":Ljava/io/InputStream;
    :cond_1
    :goto_2
    return v7

    .line 511
    .end local v2    # "inStream":Ljava/io/InputStream;
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    .restart local v4    # "inputReader":Ljava/io/InputStreamReader;
    .restart local v5    # "line":Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    goto :goto_0

    .line 518
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v4    # "inputReader":Ljava/io/InputStreamReader;
    .end local v5    # "line":Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_4

    .line 520
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_3
    move-object v2, v3

    .line 523
    .end local v3    # "inStream":Ljava/io/InputStream;
    .restart local v2    # "inStream":Ljava/io/InputStream;
    goto :goto_2

    .line 515
    :catch_0
    move-exception v1

    .line 518
    .local v1, "e":Ljava/lang/Exception;
    :goto_4
    if-eqz v2, :cond_1

    .line 520
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 521
    :catch_1
    move-exception v8

    goto :goto_2

    .line 518
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v2, :cond_5

    .line 520
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 523
    :cond_5
    :goto_6
    throw v7

    .line 521
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

    .line 518
    .end local v2    # "inStream":Ljava/io/InputStream;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "inStream":Ljava/io/InputStream;
    .restart local v2    # "inStream":Ljava/io/InputStream;
    goto :goto_5

    .line 515
    .end local v2    # "inStream":Ljava/io/InputStream;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3    # "inStream":Ljava/io/InputStream;
    .restart local v2    # "inStream":Ljava/io/InputStream;
    goto :goto_4
.end method

.method public static releaseQuietly(Landroid/content/ContentProviderClient;)V
    .locals 1
    .param p0, "client"    # Landroid/content/ContentProviderClient;

    .prologue
    .line 543
    if-eqz p0, :cond_0

    .line 545
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 546
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 404
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 406
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/IContentProvider;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 413
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v1

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 409
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 411
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v1
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # [Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 248
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Landroid/content/IContentProvider;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 255
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return v1

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 251
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 253
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 419
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 421
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2, p3}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 428
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v1

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 424
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 426
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v1
.end method

.method public final canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 203
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/IContentProvider;->canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 210
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v1

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 206
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 208
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 264
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2, p3}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 271
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return v1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 267
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 269
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v1
.end method

.method protected finalize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 455
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v2, :cond_0

    .line 456
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 461
    :cond_0
    sget-boolean v2, Landroid/content/ContentProviderClient;->IS_ENG_BUILD:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/content/ContentProviderClient;->mReleased:Z

    if-nez v2, :cond_3

    .line 462
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mStackTrace:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 463
    const-string v2, "ContentProviderClient"

    const-string v3, "Ensure that resources ContentProviderClient are closed after use."

    iget-object v4, p0, Landroid/content/ContentProviderClient;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 468
    :cond_1
    sget-boolean v2, Landroid/content/ContentProviderClient;->PROVIDER_LEAK_DETECT:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->checkAeeWarningList()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 470
    const/4 v0, 0x0

    .line 471
    .local v0, "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :try_start_0
    const-string v2, "ro.have_aee_feature"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 472
    new-instance v1, Lcom/mediatek/aee/ExceptionLog;

    invoke-direct {v1}, Lcom/mediatek/aee/ExceptionLog;-><init>()V

    .end local v0    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    .local v1, "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    move-object v0, v1

    .line 474
    .end local v1    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    .restart local v0    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :cond_2
    if-eqz v0, :cond_3

    .line 475
    const/4 v2, 0x0

    const-string v3, "ContentProviderClient.java"

    const-string v4, "Ensure that resources ContentProviderClient are closed after use."

    const-string v5, "/data/leak/traces.txt"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/mediatek/aee/ExceptionLog;->systemreport(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    .end local v0    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :cond_3
    :goto_0
    return-void

    .line 481
    .restart local v0    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getLocalContentProvider()Landroid/content/ContentProvider;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-static {v0}, Landroid/content/ContentProvider;->coerceToLocalContentProvider(Landroid/content/IContentProvider;)Landroid/content/ContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 188
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1, p1, p2}, Landroid/content/IContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 195
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 191
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 193
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 173
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v1, p1}, Landroid/content/IContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 180
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 176
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 178
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 233
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 240
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 236
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 238
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v1
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 354
    const/4 v1, 0x0

    .line 355
    .local v1, "remoteSignal":Landroid/os/ICancellationSignal;
    if-eqz p3, :cond_0

    .line 356
    :try_start_0
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 357
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v2}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v1

    .line 358
    invoke-virtual {p3, v1}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 360
    :cond_0
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2, v1}, Landroid/content/IContentProvider;->openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 367
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v2

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v2, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v2, :cond_1

    .line 363
    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 365
    :cond_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v2
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 314
    const/4 v4, 0x0

    .line 315
    .local v4, "remoteSignal":Landroid/os/ICancellationSignal;
    if-eqz p3, :cond_0

    .line 316
    :try_start_0
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 317
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v0}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v4

    .line 318
    invoke-virtual {p3, v4}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 320
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->openFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 327
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v0

    .line 321
    :catch_0
    move-exception v6

    .line 322
    .local v6, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v0, :cond_1

    .line 323
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 325
    :cond_1
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    .end local v6    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v0
.end method

.method public final openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 374
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentProviderClient;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 383
    const/4 v5, 0x0

    .line 384
    .local v5, "remoteSignal":Landroid/os/ICancellationSignal;
    if-eqz p4, :cond_0

    .line 385
    :try_start_0
    invoke-virtual {p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 386
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v0}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v5

    .line 387
    invoke-virtual {p4, v5}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 389
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 397
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v0

    .line 391
    :catch_0
    move-exception v6

    .line 392
    .local v6, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v0, :cond_1

    .line 393
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 395
    :cond_1
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    .end local v6    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 143
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 9
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 151
    const/4 v7, 0x0

    .line 152
    .local v7, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    if-eqz p6, :cond_0

    .line 153
    :try_start_0
    invoke-virtual {p6}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 154
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-interface {v0}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v7

    .line 155
    invoke-virtual {p6, v7}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 157
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 165
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v0

    .line 159
    :catch_0
    move-exception v8

    .line 160
    .local v8, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v0, :cond_1

    .line 161
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 163
    :cond_1
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .end local v8    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v0
.end method

.method public release()Z
    .locals 2

    .prologue
    .line 438
    monitor-enter p0

    .line 439
    :try_start_0
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mReleased:Z

    if-eqz v0, :cond_0

    .line 440
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 442
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/content/ContentProviderClient;->mReleased:Z

    .line 443
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 444
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    move-result v0

    monitor-exit p0

    .line 447
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    move-result v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setDetectNotResponding(J)V
    .locals 5
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 112
    const-class v1, Landroid/content/ContentProviderClient;

    monitor-enter v1

    .line 113
    :try_start_0
    iput-wide p1, p0, Landroid/content/ContentProviderClient;->mAnrTimeout:J

    .line 115
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_2

    .line 116
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Landroid/content/ContentProviderClient$NotRespondingRunnable;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/content/ContentProviderClient$NotRespondingRunnable;-><init>(Landroid/content/ContentProviderClient;Landroid/content/ContentProviderClient$1;)V

    iput-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    .line 119
    :cond_0
    sget-object v0, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    sput-object v0, Landroid/content/ContentProviderClient;->sAnrHandler:Landroid/os/Handler;

    .line 125
    :cond_1
    :goto_0
    monitor-exit v1

    .line 126
    return-void

    .line 123
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProviderClient;->mAnrRunnable:Landroid/content/ContentProviderClient$NotRespondingRunnable;

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 218
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/IContentProvider;->uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 225
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return-object v1

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v1, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v1, :cond_0

    .line 221
    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 223
    :cond_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->beforeRemote()V

    .line 280
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mPackageName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 287
    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    return v0

    .line 281
    :catch_0
    move-exception v6

    .line 282
    .local v6, "e":Landroid/os/DeadObjectException;
    :try_start_1
    iget-boolean v0, p0, Landroid/content/ContentProviderClient;->mStable:Z

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Landroid/content/ContentProviderClient;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentProviderClient;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 285
    :cond_0
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    .end local v6    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/content/ContentProviderClient;->afterRemote()V

    throw v0
.end method
