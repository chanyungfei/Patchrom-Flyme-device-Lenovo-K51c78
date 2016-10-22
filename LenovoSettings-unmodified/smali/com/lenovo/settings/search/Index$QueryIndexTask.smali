.class Lcom/lenovo/settings/search/Index$QueryIndexTask;
.super Landroid/os/AsyncTask;
.source "Index.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/search/Index;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryIndexTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/search/Index;


# direct methods
.method private constructor <init>(Lcom/lenovo/settings/search/Index;)V
    .locals 0

    .prologue
    .line 1339
    iput-object p1, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/settings/search/Index;Lcom/lenovo/settings/search/Index$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/settings/search/Index;
    .param p2, "x1"    # Lcom/lenovo/settings/search/Index$1;

    .prologue
    .line 1339
    invoke-direct {p0, p1}, Lcom/lenovo/settings/search/Index$QueryIndexTask;-><init>(Lcom/lenovo/settings/search/Index;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1339
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/search/Index$QueryIndexTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v11, 0x0

    .line 1360
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.lenovo.action.SEARCH_INDEXABLES_PROVIDER"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1361
    .local v5, "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/lenovo/settings/search/Index;->access$500(Lcom/lenovo/settings/search/Index;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v5, v11}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 1364
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v10, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/lenovo/settings/search/Index;->access$500(Lcom/lenovo/settings/search/Index;)Landroid/content/Context;

    move-result-object v10

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1366
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    .line 1367
    .local v9, "size":I
    const/4 v7, 0x0

    .local v7, "n":I
    :goto_0
    if-ge v7, v9, :cond_3

    .line 1368
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1369
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    iget-object v10, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # invokes: Lcom/lenovo/settings/search/Index;->isWellKnownProvider(Landroid/content/pm/ResolveInfo;)Z
    invoke-static {v10, v4}, Lcom/lenovo/settings/search/Index;->access$600(Lcom/lenovo/settings/search/Index;Landroid/content/pm/ResolveInfo;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1367
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1372
    :cond_0
    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v10, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 1373
    .local v1, "authority":Ljava/lang/String;
    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v8, v10, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 1376
    .local v8, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mBaseAuthority:Ljava/lang/String;
    invoke-static {v10}, Lcom/lenovo/settings/search/Index;->access$700(Lcom/lenovo/settings/search/Index;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/lenovo/settings/search/Index;->access$500(Lcom/lenovo/settings/search/Index;)Landroid/content/Context;

    move-result-object v2

    .line 1378
    .local v2, "context":Landroid/content/Context;
    :goto_2
    iget-object v10, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # invokes: Lcom/lenovo/settings/search/Index;->addIndexablesFromRemoteProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v10, v2, v8, v1}, Lcom/lenovo/settings/search/Index;->access$800(Lcom/lenovo/settings/search/Index;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1379
    iget-object v10, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # invokes: Lcom/lenovo/settings/search/Index;->addNonIndexablesKeysFromRemoteProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v2, v8, v1}, Lcom/lenovo/settings/search/Index;->access$900(Lcom/lenovo/settings/search/Index;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1387
    .end local v2    # "context":Landroid/content/Context;
    :goto_3
    :try_start_1
    iget-object v10, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mKillWhiteList:Ljava/util/HashSet;
    invoke-static {v10}, Lcom/lenovo/settings/search/Index;->access$400(Lcom/lenovo/settings/search/Index;)Ljava/util/HashSet;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1388
    const-string v10, "Index"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Index from provider: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " completed. But do not force stop process: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1394
    :catch_0
    move-exception v3

    .line 1395
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1376
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    iget-object v10, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/lenovo/settings/search/Index;->access$500(Lcom/lenovo/settings/search/Index;)Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v8, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    goto :goto_2

    .line 1382
    :catch_1
    move-exception v3

    .line 1383
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 1390
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    :try_start_3
    const-string v10, "Index"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Index from provider: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " completed. Force stop process: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 1399
    .end local v1    # "authority":Ljava/lang/String;
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    return-object v10
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1339
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/search/Index$QueryIndexTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # invokes: Lcom/lenovo/settings/search/Index;->updateInternal()V
    invoke-static {v0}, Lcom/lenovo/settings/search/Index;->access$1000(Lcom/lenovo/settings/search/Index;)V

    .line 1405
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1406
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mIsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/lenovo/settings/search/Index;->access$300(Lcom/lenovo/settings/search/Index;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1344
    iget-object v0, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mKillWhiteList:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/lenovo/settings/search/Index;->access$400(Lcom/lenovo/settings/search/Index;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1346
    iget-object v0, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mKillWhiteList:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/lenovo/settings/search/Index;->access$400(Lcom/lenovo/settings/search/Index;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/settings/search/Index;->access$500(Lcom/lenovo/settings/search/Index;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1348
    iget-object v0, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mKillWhiteList:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/lenovo/settings/search/Index;->access$400(Lcom/lenovo/settings/search/Index;)Ljava/util/HashSet;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1349
    iget-object v0, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mKillWhiteList:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/lenovo/settings/search/Index;->access$400(Lcom/lenovo/settings/search/Index;)Ljava/util/HashSet;

    move-result-object v0

    const-string v1, "com.lenovo.lenovoglovemode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1350
    iget-object v0, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mKillWhiteList:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/lenovo/settings/search/Index;->access$400(Lcom/lenovo/settings/search/Index;)Ljava/util/HashSet;

    move-result-object v0

    const-string v1, "com.lenovo.keyguard.settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1351
    iget-object v0, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mKillWhiteList:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/lenovo/settings/search/Index;->access$400(Lcom/lenovo/settings/search/Index;)Ljava/util/HashSet;

    move-result-object v0

    const-string v1, "com.lenovo.frameworks.singlehand"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1352
    iget-object v0, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mKillWhiteList:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/lenovo/settings/search/Index;->access$400(Lcom/lenovo/settings/search/Index;)Ljava/util/HashSet;

    move-result-object v0

    const-string v1, "com.lenovo.fingerprint"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1353
    iget-object v0, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mKillWhiteList:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/lenovo/settings/search/Index;->access$400(Lcom/lenovo/settings/search/Index;)Ljava/util/HashSet;

    move-result-object v0

    const-string v1, "com.lenovo.lenovofingerprintsettings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1354
    iget-object v0, p0, Lcom/lenovo/settings/search/Index$QueryIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mKillWhiteList:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/lenovo/settings/search/Index;->access$400(Lcom/lenovo/settings/search/Index;)Ljava/util/HashSet;

    move-result-object v0

    const-string v1, "com.lenovo.smartstandby"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1355
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1356
    return-void
.end method
