.class Landroid/content/ContentProvider$Transport;
.super Landroid/content/ContentProviderNative;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Transport"
.end annotation


# instance fields
.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mModifyPermission:Ljava/lang/String;

.field mQueryPermission:Ljava/lang/String;

.field mReadOp:I

.field mWriteOp:I

.field final synthetic this$0:Landroid/content/ContentProvider;


# direct methods
.method constructor <init>(Landroid/content/ContentProvider;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 194
    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-direct {p0}, Landroid/content/ContentProviderNative;-><init>()V

    .line 195
    iput-object v0, p0, Landroid/content/ContentProvider$Transport;->mQueryPermission:Ljava/lang/String;

    .line 196
    iput-object v0, p0, Landroid/content/ContentProvider$Transport;->mModifyPermission:Ljava/lang/String;

    .line 197
    iput-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 198
    iput v1, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    .line 199
    iput v1, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    return-void
.end method

.method private enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 448
    if-eqz p3, :cond_0

    const/16 v0, 0x77

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 449
    invoke-direct {p0, p1, p2, p4}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "App op not allowed"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "App op not allowed"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_1
    return-void
.end method

.method private enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentProvider;->enforceReadPermissionInner(Landroid/net/Uri;Landroid/os/IBinder;)V

    .line 465
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getQueryPermission()Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/content/ContentProvider;->checkMoMSPermission(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    const/4 v0, 0x1

    .line 472
    :goto_0
    return v0

    .line 469
    :cond_0
    iget v0, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 470
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 472
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 477
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/os/IBinder;)V

    .line 479
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getModifyPermission()Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/content/ContentProvider;->checkMoMSPermission(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    const/4 v0, 0x1

    .line 486
    :goto_0
    return v0

    .line 483
    :cond_0
    iget v0, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 484
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 486
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 12
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x2

    .line 272
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 273
    .local v1, "numOperations":I
    new-array v7, v1, [I

    .line 274
    .local v7, "userIds":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 275
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderOperation;

    .line 276
    .local v2, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 277
    .local v6, "uri":Landroid/net/Uri;
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v8, v6}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 278
    invoke-static {v6}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v8

    aput v8, v7, v0

    .line 279
    aget v8, v7, v0

    if-eq v8, v11, :cond_0

    .line 281
    new-instance v3, Landroid/content/ContentProviderOperation;

    const/4 v8, 0x1

    invoke-direct {v3, v2, v8}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation;Z)V

    .line 282
    .end local v2    # "operation":Landroid/content/ContentProviderOperation;
    .local v3, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {p2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    .line 284
    .end local v3    # "operation":Landroid/content/ContentProviderOperation;
    .restart local v2    # "operation":Landroid/content/ContentProviderOperation;
    :cond_0
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->isReadOperation()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 285
    invoke-direct {p0, p1, v6, v9}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v8

    if-eqz v8, :cond_1

    .line 287
    new-instance v8, Landroid/content/OperationApplicationException;

    const-string v9, "App op not allowed"

    invoke-direct {v8, v9, v10}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 290
    :cond_1
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->isWriteOperation()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 291
    invoke-direct {p0, p1, v6, v9}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v8

    if-eqz v8, :cond_2

    .line 293
    new-instance v8, Landroid/content/OperationApplicationException;

    const-string v9, "App op not allowed"

    invoke-direct {v8, v9, v10}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 274
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    .end local v2    # "operation":Landroid/content/ContentProviderOperation;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_3
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 299
    .local v4, "original":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v8, p2}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 300
    .local v5, "results":[Landroid/content/ContentProviderResult;
    if-eqz v5, :cond_5

    .line 301
    const/4 v0, 0x0

    :goto_1
    array-length v8, v5

    if-ge v0, v8, :cond_5

    .line 302
    aget v8, v7, v0

    if-eq v8, v11, :cond_4

    .line 304
    new-instance v8, Landroid/content/ContentProviderResult;

    aget-object v9, v5, v0

    aget v10, v7, v0

    invoke-direct {v8, v9, v10}, Landroid/content/ContentProviderResult;-><init>(Landroid/content/ContentProviderResult;I)V

    aput-object v8, v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 310
    :cond_5
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v4}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v5

    .end local v5    # "results":[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v9, v4}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v8
.end method

.method public bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "initialValues"    # [Landroid/content/ContentValues;

    .prologue
    .line 255
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 256
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 257
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    const/4 v1, 0x0

    .line 264
    :goto_0
    return v1

    .line 260
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 264
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 379
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3, p4}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 383
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 416
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v3, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 417
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v1

    .line 418
    .local v1, "userId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 419
    invoke-direct {p0, p1, p2, v2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 426
    :goto_0
    return-object v2

    .line 422
    :cond_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2, p2}, Landroid/content/ContentProvider;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 426
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v2
.end method

.method public createCancellationSignal()Landroid/os/ICancellationSignal;
    .locals 1

    .prologue
    .line 411
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 316
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 317
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 318
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    const/4 v1, 0x0

    .line 325
    :goto_0
    return v1

    .line 321
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3, p4}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 325
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method getContentProvider()Landroid/content/ContentProvider;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    .prologue
    .line 389
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 390
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 391
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 232
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 233
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 234
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 239
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v2, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 240
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v1

    .line 241
    .local v1, "userId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 242
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentProvider;->rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 249
    :goto_0
    return-object v2

    .line 245
    :cond_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 249
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v2
.end method

.method public openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 366
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 367
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 368
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v2

    invoke-virtual {v1, p2, p3, v2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 373
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public openFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .param p5, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 349
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 350
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 351
    invoke-direct {p0, p1, p2, p3, p5}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 352
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v2

    invoke-virtual {v1, p2, p3, v2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 357
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 397
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 398
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 399
    const-string/jumbo v1, "r"

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 400
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v2

    invoke-virtual {v1, p2, p3, p4, v2}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 405
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .locals 8
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .param p7, "cancellationSignal"    # Landroid/os/ICancellationSignal;

    .prologue
    .line 214
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v0, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 215
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p7}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProvider;->rejectQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    .line 220
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 222
    .local v7, "original":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p7}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 226
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v7}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v7}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v0
.end method

.method public uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 432
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v3, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 433
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v1

    .line 434
    .local v1, "userId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 435
    invoke-direct {p0, p1, p2, v2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 442
    :goto_0
    return-object v2

    .line 438
    :cond_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2, p2}, Landroid/content/ContentProvider;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 442
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v2
.end method

.method public update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 332
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 333
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 334
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    const/4 v1, 0x0

    .line 341
    :goto_0
    return v1

    .line 337
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 341
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method
