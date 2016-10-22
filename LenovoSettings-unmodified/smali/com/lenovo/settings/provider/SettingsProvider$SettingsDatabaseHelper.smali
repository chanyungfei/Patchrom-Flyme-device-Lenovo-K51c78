.class public Lcom/lenovo/settings/provider/SettingsProvider$SettingsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/provider/SettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsDatabaseHelper"
.end annotation


# static fields
.field protected static final DATABASE_NAME:Ljava/lang/String; = "settings_item.db"

.field private static final DATABASE_VERSION:I = 0x10

.field private static final TAG:Ljava/lang/String; = "PlugInDatabaseHelper"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "settings_item.db"

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 152
    return-void
.end method

.method private createSettingTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 187
    const-string v0, "CREATE TABLE IF NOT EXISTS configuration (_key TEXT PRIMARY KEY UNIQUE,_value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    const-string v0, "CREATE TABLE IF NOT EXISTS mapping (_headerId INTEGER PRIMARY KEY,_prefKey TEXT NOT NULL,_pos INTEGER NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 198
    const-string v0, "CREATE TABLE IF NOT EXISTS setting (_key TEXT PRIMARY KEY,_pKey TEXT NOT NULL,_pos FLOAT(0, 2) DEFAULT (-1.0),_package TEXT,_class TEXT,_ver TEXT,_visible INTEGER DEFAULT (1),_intent TEXT,_dependency TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method private createSettingViews(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 211
    const-string v8, "DROP VIEW IF EXISTS view_header_plugin"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 212
    const-string v8, "DROP VIEW IF EXISTS view_pref_plugin"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 214
    const-string v2, "SELECT setting._key,setting._pKey,setting._pos,setting._package,setting._class,setting._ver,setting._intent,setting._dependency,mapping._headerId FROM setting"

    .line 226
    .local v2, "headerSelectClause":Ljava/lang/String;
    const-string v0, " LEFT JOIN mapping ON (setting._pKey=mapping._prefKey)"

    .line 230
    .local v0, "headerJoinClause":Ljava/lang/String;
    const-string v3, " WHERE mapping._prefKey IS NOT NULL AND setting._visible=1"

    .line 234
    .local v3, "headerWhereClause":Ljava/lang/String;
    const-string v1, " ORDER BY mapping._pos,setting._pos"

    .line 238
    .local v1, "headerOrderClause":Ljava/lang/String;
    const-string v6, "SELECT setting._key,setting._pKey,setting._pos,setting._package,setting._class,setting._ver FROM setting"

    .line 247
    .local v6, "prefSelectClause":Ljava/lang/String;
    const-string v4, " LEFT JOIN mapping ON (setting._pKey=mapping._prefKey)"

    .line 251
    .local v4, "prefJoinClause":Ljava/lang/String;
    const-string v7, " WHERE mapping._prefKey IS NULL AND setting._visible=1"

    .line 255
    .local v7, "prefWhereClause":Ljava/lang/String;
    const-string v5, " ORDER BY setting._pKey,setting._pos"

    .line 259
    .local v5, "prefOrderClause":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CREATE VIEW IF NOT EXISTS view_header_plugin AS "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 263
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CREATE VIEW IF NOT EXISTS view_pref_plugin AS "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 266
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/lenovo/settings/provider/SettingsProvider$SettingsDatabaseHelper;->createSettingTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 157
    invoke-direct {p0, p1}, Lcom/lenovo/settings/provider/SettingsProvider$SettingsDatabaseHelper;->createSettingViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 160
    invoke-static {p1}, Lcom/lenovo/settings/search/IndexDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 161
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 182
    invoke-static {p1, p2, p3}, Lcom/lenovo/settings/search/IndexDatabaseHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 183
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 165
    const-string v0, "PlugInDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will alter table."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "DROP TABLE IF EXISTS configuration"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 169
    const-string v0, "DROP TABLE IF EXISTS mapping"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 170
    const-string v0, "DROP TABLE IF EXISTS setting"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/lenovo/settings/provider/SettingsProvider$SettingsDatabaseHelper;->createSettingTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 173
    invoke-direct {p0, p1}, Lcom/lenovo/settings/provider/SettingsProvider$SettingsDatabaseHelper;->createSettingViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 176
    invoke-static {p1, p2, p3}, Lcom/lenovo/settings/search/IndexDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 177
    return-void
.end method
