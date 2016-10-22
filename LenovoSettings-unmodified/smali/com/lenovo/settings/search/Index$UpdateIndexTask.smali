.class Lcom/lenovo/settings/search/Index$UpdateIndexTask;
.super Landroid/os/AsyncTask;
.source "Index.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/search/Index;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateIndexTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/lenovo/settings/search/Index$UpdateData;",
        "Ljava/lang/Integer;",
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
    .line 1412
    iput-object p1, p0, Lcom/lenovo/settings/search/Index$UpdateIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/settings/search/Index;Lcom/lenovo/settings/search/Index$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/settings/search/Index;
    .param p2, "x1"    # Lcom/lenovo/settings/search/Index$1;

    .prologue
    .line 1412
    invoke-direct {p0, p1}, Lcom/lenovo/settings/search/Index$UpdateIndexTask;-><init>(Lcom/lenovo/settings/search/Index;)V

    return-void
.end method

.method private delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "columName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1531
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v0, v2

    .line 1533
    .local v0, "whereArgs":[Ljava/lang/String;
    const-string v2, "prefs_index"

    invoke-virtual {p1, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private processDataToDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;)Z
    .locals 16
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "localeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/settings/search/provider/SearchIndexableData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1500
    .local p3, "dataToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/search/provider/SearchIndexableData;>;"
    const/4 v10, 0x0

    .line 1501
    .local v10, "result":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1503
    .local v4, "current":J
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    .line 1504
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_0
    if-ge v6, v2, :cond_4

    .line 1505
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/settings/search/provider/SearchIndexableData;

    .line 1506
    .local v3, "data":Lcom/lenovo/settings/search/provider/SearchIndexableData;
    if-nez v3, :cond_1

    .line 1504
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1509
    :cond_1
    iget-object v11, v3, Lcom/lenovo/settings/search/provider/SearchIndexableData;->className:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1510
    const-string v11, "class_name"

    iget-object v12, v3, Lcom/lenovo/settings/search/provider/SearchIndexableData;->className:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v12}, Lcom/lenovo/settings/search/Index$UpdateIndexTask;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1511
    :cond_2
    iget-object v11, v3, Lcom/lenovo/settings/search/provider/SearchIndexableData;->intentTargetPackage:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 1512
    const-string v11, "intent_target_package"

    iget-object v12, v3, Lcom/lenovo/settings/search/provider/SearchIndexableData;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v12}, Lcom/lenovo/settings/search/Index$UpdateIndexTask;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1514
    :cond_3
    instance-of v11, v3, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    if-eqz v11, :cond_0

    move-object v7, v3

    .line 1515
    check-cast v7, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .line 1516
    .local v7, "raw":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    iget-object v11, v7, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1517
    const-string v11, "data_title"

    iget-object v12, v7, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v12}, Lcom/lenovo/settings/search/Index$UpdateIndexTask;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1523
    .end local v3    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableData;
    .end local v7    # "raw":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1524
    .local v8, "now":J
    const-string v11, "Index"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Deleting data for locale \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' took "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v14, v8, v4

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " millis"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    return v10
.end method

.method private processDataToUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Z)Z
    .locals 18
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "localeStr"    # Ljava/lang/String;
    .param p5, "forceUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/settings/search/provider/SearchIndexableData;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;Z)Z"
        }
    .end annotation

    .prologue
    .line 1458
    .local p3, "dataToUpdate":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/search/provider/SearchIndexableData;>;"
    .local p4, "nonIndexableKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez p5, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/search/Index$UpdateIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    # invokes: Lcom/lenovo/settings/search/Index;->isLocaleAlreadyIndexed(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    invoke-static {v13, v0, v1}, Lcom/lenovo/settings/search/Index;->access$1200(Lcom/lenovo/settings/search/Index;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1459
    const-string v13, "Index"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Locale \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\' is already indexed"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    const/4 v12, 0x1

    .line 1485
    :goto_0
    return v12

    .line 1463
    :cond_0
    const/4 v12, 0x0

    .line 1464
    .local v12, "result":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1466
    .local v6, "current":J
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    .line 1467
    .local v4, "count":I
    const/4 v9, 0x0

    .local v9, "n":I
    :goto_1
    if-ge v9, v4, :cond_2

    .line 1468
    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/settings/search/provider/SearchIndexableData;

    .line 1469
    .local v5, "data":Lcom/lenovo/settings/search/provider/SearchIndexableData;
    iget v13, v5, Lcom/lenovo/settings/search/provider/SearchIndexableData;->rank:I

    const/16 v14, -0x111

    if-ne v13, v14, :cond_1

    iget-object v13, v5, Lcom/lenovo/settings/search/provider/SearchIndexableData;->intentTargetPackage:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1471
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/lenovo/settings/search/Index$UpdateIndexTask;->updateSearchIndexableDataEnable(Landroid/database/sqlite/SQLiteDatabase;Lcom/lenovo/settings/search/provider/SearchIndexableData;)I

    .line 1467
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1475
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/settings/search/Index$UpdateIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    # invokes: Lcom/lenovo/settings/search/Index;->indexOneSearchIndexableData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/lenovo/settings/search/provider/SearchIndexableData;Ljava/util/Map;)V
    invoke-static {v13, v0, v1, v5, v2}, Lcom/lenovo/settings/search/Index;->access$1300(Lcom/lenovo/settings/search/Index;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/lenovo/settings/search/provider/SearchIndexableData;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1476
    :catch_0
    move-exception v8

    .line 1477
    .local v8, "e":Ljava/lang/Exception;
    const-string v13, "Index"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot index: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v5, Lcom/lenovo/settings/search/provider/SearchIndexableData;->className:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " for locale: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v8}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1482
    .end local v5    # "data":Lcom/lenovo/settings/search/provider/SearchIndexableData;
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1483
    .local v10, "now":J
    const-string v13, "Index"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Indexing locale \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\' took "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v16, v10, v6

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " millis"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateSearchIndexableDataEnable(Landroid/database/sqlite/SQLiteDatabase;Lcom/lenovo/settings/search/provider/SearchIndexableData;)I
    .locals 5
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "data"    # Lcom/lenovo/settings/search/provider/SearchIndexableData;

    .prologue
    .line 1489
    const-string v2, "intent_target_package=?"

    .line 1490
    .local v2, "whereClause":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p2, Lcom/lenovo/settings/search/provider/SearchIndexableData;->intentTargetPackage:Ljava/lang/String;

    aput-object v4, v1, v3

    .line 1491
    .local v1, "whereArgs":[Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1492
    .local v0, "values":Landroid/content/ContentValues;
    const-string v3, "enabled"

    iget-boolean v4, p2, Lcom/lenovo/settings/search/provider/SearchIndexableData;->enabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1494
    const-string v3, "prefs_index"

    const-string v4, "intent_target_package=?"

    invoke-virtual {p1, v3, v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1412
    check-cast p1, [Lcom/lenovo/settings/search/Index$UpdateData;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/search/Index$UpdateIndexTask;->doInBackground([Lcom/lenovo/settings/search/Index$UpdateData;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/lenovo/settings/search/Index$UpdateData;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Lcom/lenovo/settings/search/Index$UpdateData;

    .prologue
    const/4 v7, 0x0

    .line 1428
    aget-object v0, p1, v7

    iget-object v3, v0, Lcom/lenovo/settings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    .line 1429
    .local v3, "dataToUpdate":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/search/provider/SearchIndexableData;>;"
    aget-object v0, p1, v7

    iget-object v6, v0, Lcom/lenovo/settings/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    .line 1430
    .local v6, "dataToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/search/provider/SearchIndexableData;>;"
    aget-object v0, p1, v7

    iget-object v4, v0, Lcom/lenovo/settings/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    .line 1432
    .local v4, "nonIndexableKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    aget-object v0, p1, v7

    iget-boolean v5, v0, Lcom/lenovo/settings/search/Index$UpdateData;->forceUpdate:Z

    .line 1434
    .local v5, "forceUpdate":Z
    iget-object v0, p0, Lcom/lenovo/settings/search/Index$UpdateIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # invokes: Lcom/lenovo/settings/search/Index;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/lenovo/settings/search/Index;->access$1100(Lcom/lenovo/settings/search/Index;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1435
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1438
    .local v2, "localeStr":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1439
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1440
    invoke-direct {p0, v1, v2, v6}, Lcom/lenovo/settings/search/Index$UpdateIndexTask;->processDataToDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;)Z

    .line 1442
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    move-object v0, p0

    .line 1443
    invoke-direct/range {v0 .. v5}, Lcom/lenovo/settings/search/Index$UpdateIndexTask;->processDataToUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Z)Z

    .line 1446
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1448
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1451
    const/4 v0, 0x0

    return-object v0

    .line 1448
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1412
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/search/Index$UpdateIndexTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/lenovo/settings/search/Index$UpdateIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mIsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/lenovo/settings/search/Index;->access$300(Lcom/lenovo/settings/search/Index;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1423
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1424
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1416
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1417
    iget-object v0, p0, Lcom/lenovo/settings/search/Index$UpdateIndexTask;->this$0:Lcom/lenovo/settings/search/Index;

    # getter for: Lcom/lenovo/settings/search/Index;->mIsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/lenovo/settings/search/Index;->access$300(Lcom/lenovo/settings/search/Index;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1418
    return-void
.end method
