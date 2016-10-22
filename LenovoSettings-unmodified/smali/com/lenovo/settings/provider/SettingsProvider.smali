.class public Lcom/lenovo/settings/provider/SettingsProvider;
.super Landroid/content/ContentProvider;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/provider/SettingsProvider$SqlArguments;,
        Lcom/lenovo/settings/provider/SettingsProvider$SettingsDatabaseHelper;,
        Lcom/lenovo/settings/provider/SettingsProvider$Views;,
        Lcom/lenovo/settings/provider/SettingsProvider$Tables;
    }
.end annotation


# instance fields
.field private mDBHelper:Lcom/lenovo/settings/provider/SettingsProvider$SettingsDatabaseHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 281
    return-void
.end method

.method private getOrInitReadableSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 91
    iget-object v2, p0, Lcom/lenovo/settings/provider/SettingsProvider;->mDBHelper:Lcom/lenovo/settings/provider/SettingsProvider$SettingsDatabaseHelper;

    if-eqz v2, :cond_0

    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/settings/provider/SettingsProvider;->mDBHelper:Lcom/lenovo/settings/provider/SettingsProvider$SettingsDatabaseHelper;

    invoke-virtual {v2}, Lcom/lenovo/settings/provider/SettingsProvider$SettingsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 94
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 108
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-object v0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/settings/provider/SettingsProvider;->initSQLiteOpenHelper()V

    .line 105
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/settings/provider/SettingsProvider;->mDBHelper:Lcom/lenovo/settings/provider/SettingsProvider$SettingsDatabaseHelper;

    invoke-virtual {v2}, Lcom/lenovo/settings/provider/SettingsProvider$SettingsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 106
    :catch_1
    move-exception v1

    .line 107
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOrInitWritableSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 113
    iget-object v2, p0, Lcom/lenovo/settings/provider/SettingsProvider;->mDBHelper:Lcom/lenovo/settings/provider/SettingsProvider$SettingsDatabaseHelper;

    if-eqz v2, :cond_0

    .line 115
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/settings/provider/SettingsProvider;->mDBHelper:Lcom/lenovo/settings/provider/SettingsProvider$SettingsDatabaseHelper;

    invoke-virtual {v2}, Lcom/lenovo/settings/provider/SettingsProvider$SettingsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 116
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 130
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-object v0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/settings/provider/SettingsProvider;->initSQLiteOpenHelper()V

    .line 127
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/settings/provider/SettingsProvider;->mDBHelper:Lcom/lenovo/settings/provider/SettingsProvider$SettingsDatabaseHelper;

    invoke-virtual {v2}, Lcom/lenovo/settings/provider/SettingsProvider$SettingsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 128
    :catch_1
    move-exception v1

    .line 129
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initSQLiteOpenHelper()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lenovo/settings/provider/SettingsProvider;->mDBHelper:Lcom/lenovo/settings/provider/SettingsProvider$SettingsDatabaseHelper;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/lenovo/settings/provider/SettingsProvider;->mDBHelper:Lcom/lenovo/settings/provider/SettingsProvider$SettingsDatabaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/settings/provider/SettingsProvider$SettingsDatabaseHelper;->close()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/settings/provider/SettingsProvider;->mDBHelper:Lcom/lenovo/settings/provider/SettingsProvider$SettingsDatabaseHelper;

    .line 140
    :cond_0
    new-instance v0, Lcom/lenovo/settings/provider/SettingsProvider$SettingsDatabaseHelper;

    invoke-virtual {p0}, Lcom/lenovo/settings/provider/SettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/settings/provider/SettingsProvider$SettingsDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/settings/provider/SettingsProvider;->mDBHelper:Lcom/lenovo/settings/provider/SettingsProvider$SettingsDatabaseHelper;

    .line 141
    iget-object v0, p0, Lcom/lenovo/settings/provider/SettingsProvider;->mDBHelper:Lcom/lenovo/settings/provider/SettingsProvider$SettingsDatabaseHelper;

    invoke-static {v0}, Lcom/lenovo/settings/search/IndexDatabaseHelper;->setDatabasehelper(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 142
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/lenovo/settings/provider/SettingsProvider;->getOrInitWritableSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 77
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Lcom/lenovo/settings/provider/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/lenovo/settings/provider/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 79
    .local v0, "args":Lcom/lenovo/settings/provider/SettingsProvider$SqlArguments;
    iget-object v2, v0, Lcom/lenovo/settings/provider/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v3, v0, Lcom/lenovo/settings/provider/SettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v0, Lcom/lenovo/settings/provider/SettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x0

    .line 58
    invoke-direct {p0}, Lcom/lenovo/settings/provider/SettingsProvider;->getOrInitWritableSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 59
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Lcom/lenovo/settings/provider/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/lenovo/settings/provider/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 61
    .local v0, "args":Lcom/lenovo/settings/provider/SettingsProvider$SqlArguments;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 62
    .local v4, "values":Landroid/content/ContentValues;
    const-wide/16 v2, 0x0

    .line 63
    .local v2, "rowId":J
    const-string v6, "configuration"

    iget-object v7, v0, Lcom/lenovo/settings/provider/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 64
    iget-object v6, v0, Lcom/lenovo/settings/provider/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v7, 0x5

    invoke-virtual {v1, v6, v5, p2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 68
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 69
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 71
    :cond_0
    return-object v5

    .line 66
    :cond_1
    iget-object v6, v0, Lcom/lenovo/settings/provider/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v6, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lenovo/settings/provider/SettingsProvider;->initSQLiteOpenHelper()V

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 43
    invoke-direct {p0}, Lcom/lenovo/settings/provider/SettingsProvider;->getOrInitReadableSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 44
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v8, Lcom/lenovo/settings/provider/SettingsProvider$SqlArguments;

    invoke-direct {v8, p1, p3, p4}, Lcom/lenovo/settings/provider/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 46
    .local v8, "args":Lcom/lenovo/settings/provider/SettingsProvider$SqlArguments;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 47
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v2, v8, Lcom/lenovo/settings/provider/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 48
    iget-object v3, v8, Lcom/lenovo/settings/provider/SettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v8, Lcom/lenovo/settings/provider/SettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/lenovo/settings/provider/SettingsProvider;->getOrInitWritableSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 85
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Lcom/lenovo/settings/provider/SettingsProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/lenovo/settings/provider/SettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 87
    .local v0, "args":Lcom/lenovo/settings/provider/SettingsProvider$SqlArguments;
    iget-object v2, v0, Lcom/lenovo/settings/provider/SettingsProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v3, v0, Lcom/lenovo/settings/provider/SettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v0, Lcom/lenovo/settings/provider/SettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v1, v2, p2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method