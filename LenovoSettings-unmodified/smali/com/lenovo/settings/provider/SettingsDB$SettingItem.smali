.class public final Lcom/lenovo/settings/provider/SettingsDB$SettingItem;
.super Ljava/lang/Object;
.source "SettingsDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/provider/SettingsDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SettingItem"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final CONTENT_URI_HEADER:Landroid/net/Uri;

.field private static final CONTENT_URI_PREF:Landroid/net/Uri;

.field public static final ITEM_CLASS:Ljava/lang/String; = "_class"

.field public static final ITEM_DEPENDENCY:Ljava/lang/String; = "_dependency"

.field public static final ITEM_INTENT:Ljava/lang/String; = "_intent"

.field public static final ITEM_KEY:Ljava/lang/String; = "_key"

.field public static final ITEM_PACKAGE:Ljava/lang/String; = "_package"

.field public static final ITEM_PARENT_KEY:Ljava/lang/String; = "_pKey"

.field public static final ITEM_POSITION:Ljava/lang/String; = "_pos"

.field public static final ITEM_VERSION:Ljava/lang/String; = "_ver"

.field public static final ITEM_VISIBLE:Ljava/lang/String; = "_visible"

.field public static final TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "content://com.lenovo.settings.db/setting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->CONTENT_URI:Landroid/net/Uri;

    .line 35
    const-string v0, "content://com.lenovo.settings.db/view_header_plugin"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->CONTENT_URI_HEADER:Landroid/net/Uri;

    .line 38
    const-string v0, "content://com.lenovo.settings.db/view_pref_plugin"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->CONTENT_URI_PREF:Landroid/net/Uri;

    .line 41
    const-class v0, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bulkInsert(Landroid/content/Context;Ljava/util/Map;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/settings/pluginItem/PluginItemInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    const/4 v9, 0x0

    .line 104
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v7

    .line 105
    .local v7, "size":I
    if-eqz p1, :cond_0

    if-nez v7, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v9

    .line 109
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 110
    .local v6, "resolver":Landroid/content/ContentResolver;
    new-array v0, v7, [Landroid/content/ContentValues;

    .line 111
    .local v0, "allValues":[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .line 112
    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 113
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .line 114
    .local v5, "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 115
    .local v8, "values":Landroid/content/ContentValues;
    const-string v10, "_key"

    invoke-virtual {v5}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v10, "_pKey"

    invoke-virtual {v5}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getParentKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v10, "_pos"

    invoke-virtual {v5}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPosition()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 118
    const-string v10, "_package"

    invoke-virtual {v5}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v10, "_class"

    invoke-virtual {v5}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v10, "_ver"

    invoke-virtual {v5}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v5}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getSettingItem()Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 122
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_2

    .line 123
    const-string v10, "_intent"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_2
    const-string v10, "_dependency"

    invoke-virtual {v5}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getSettingItem()Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;->getDependencyPluginKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    aput-object v8, v0, v2

    .line 128
    add-int/lit8 v2, v2, 0x1

    .line 129
    goto :goto_1

    .line 131
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_3
    sget-object v9, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v9, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v9

    goto/16 :goto_0
.end method

.method public static bulkInsert(Landroid/content/Context;[Landroid/content/ContentValues;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 97
    array-length v0, p1

    if-lez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 224
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "*"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 225
    return-void
.end method

.method public static getCount(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 372
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 373
    .local v6, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 376
    .local v7, "count":I
    :try_start_0
    sget-object v1, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_key"

    aput-object v4, v2, v3

    const-string v3, "_key<>_pKey"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 377
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 379
    if-eqz v6, :cond_0

    .line 380
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 383
    :cond_0
    return v7

    .line 379
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_1

    .line 380
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1
.end method

.method public static getParentKeyByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 462
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v7

    .line 479
    :cond_0
    :goto_0
    return-object v1

    .line 466
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 467
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 470
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_pKey"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 472
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 473
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 478
    if-eqz v6, :cond_0

    .line 479
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 478
    :cond_2
    if-eqz v6, :cond_3

    .line 479
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v1, v7

    goto :goto_0

    .line 478
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 479
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static getPositionByKey(Landroid/content/Context;Ljava/lang/String;)F
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/high16 v7, -0x40800000    # -1.0f

    .line 491
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v7

    .line 508
    :cond_0
    :goto_0
    return v1

    .line 495
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 496
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 499
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_pos"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 501
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 502
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getFloat(I)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 507
    if-eqz v6, :cond_0

    .line 508
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 507
    :cond_2
    if-eqz v6, :cond_3

    .line 508
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v1, v7

    goto :goto_0

    .line 507
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 508
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static getSettingItemByKey(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 423
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-object v8

    .line 427
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 428
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 429
    .local v6, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 432
    .local v8, "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    :try_start_0
    sget-object v1, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 435
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 436
    new-instance v9, Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    invoke-direct {v9, p0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    .end local v8    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    .local v9, "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->setKey(Ljava/lang/String;)V

    .line 438
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->setParentKey(Ljava/lang/String;)V

    .line 439
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v9, v1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->setPosition(F)V

    .line 440
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->setPackageName(Ljava/lang/String;)V

    .line 441
    const/4 v1, 0x4

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->setClassName(Ljava/lang/String;)V

    .line 442
    const/4 v1, 0x5

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->setVersion(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v9, p0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->initPlugin(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v8, v9

    .line 448
    .end local v9    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    .restart local v8    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    :cond_2
    if-eqz v6, :cond_0

    .line 449
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 445
    :catch_0
    move-exception v7

    .line 446
    .local v7, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v8, 0x0

    .line 448
    if-eqz v6, :cond_0

    .line 449
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 448
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :goto_2
    if-eqz v6, :cond_3

    .line 449
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 448
    .end local v8    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    .restart local v9    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    :catchall_1
    move-exception v1

    move-object v8, v9

    .end local v9    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    .restart local v8    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    goto :goto_2

    .line 445
    .end local v8    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    .restart local v9    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    :catch_1
    move-exception v7

    move-object v8, v9

    .end local v9    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    .restart local v8    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    goto :goto_1
.end method

.method public static insert(Landroid/content/Context;Lcom/lenovo/settings/pluginItem/PluginItemInfo;)Landroid/net/Uri;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "plugin"    # Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    const/4 v2, 0x0

    .line 93
    :goto_0
    return-object v2

    .line 83
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 85
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 86
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "_key"

    invoke-virtual {p1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v2, "_pKey"

    invoke-virtual {p1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getParentKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "_pos"

    invoke-virtual {p1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPosition()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 89
    const-string v2, "_package"

    invoke-virtual {p1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v2, "_class"

    invoke-virtual {p1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v2, "_ver"

    invoke-virtual {p1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v2, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public static isItemExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 393
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    :goto_0
    return v9

    .line 397
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 398
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 399
    .local v6, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 402
    .local v7, "existed":Z
    :try_start_0
    sget-object v1, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_key"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 404
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_2

    move v7, v8

    .line 406
    :goto_1
    if-eqz v6, :cond_1

    .line 407
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v9, v7

    .line 410
    goto :goto_0

    :cond_2
    move v7, v9

    .line 404
    goto :goto_1

    .line 406
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 407
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public static loadAllPluginItems(Landroid/content/Context;)V
    .locals 28
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 263
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 265
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v25, Ljava/util/Hashtable;

    invoke-direct/range {v25 .. v25}, Ljava/util/Hashtable;-><init>()V

    .line 266
    .local v25, "sHeaderIdMappings":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/lenovo/settings/provider/SettingsDB$HeaderMapping;->loadHeaderMappings(Landroid/content/Context;Ljava/util/Hashtable;)V

    .line 268
    const/4 v8, 0x0

    .line 272
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->clearCache()V

    .line 274
    sget-object v3, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->CONTENT_URI_HEADER:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 276
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 277
    const-string v3, "_key"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 278
    .local v12, "keyIndex":I
    const-string v3, "_pKey"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 279
    .local v14, "pKeyIndex":I
    const-string v3, "_pos"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 280
    .local v18, "posIndex":I
    const-string v3, "_package"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 281
    .local v15, "pkgIndex":I
    const-string v3, "_class"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 282
    .local v9, "classIndex":I
    const-string v3, "_ver"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 283
    .local v27, "verIndex":I
    const-string v3, "_intent"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 284
    .local v11, "intentIndex":I
    const-string v3, "_dependency"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 286
    .local v10, "dependencyIndex":I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 287
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 289
    .local v17, "pluginKey":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getPluginItemIfExisted(Ljava/lang/String;)Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    move-result-object v16

    .line 290
    .local v16, "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    if-nez v16, :cond_0

    .line 291
    new-instance v16, Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .end local v16    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;-><init>(Landroid/content/Context;)V

    .line 292
    .restart local v16    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    invoke-virtual/range {v16 .. v17}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->setKey(Ljava/lang/String;)V

    .line 293
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->setParentKey(Ljava/lang/String;)V

    .line 294
    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->setPosition(F)V

    .line 295
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->setPackageName(Ljava/lang/String;)V

    .line 296
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->setClassName(Ljava/lang/String;)V

    .line 297
    move/from16 v0, v27

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->setVersion(Ljava/lang/String;)V

    .line 298
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->setIntentDescription(Ljava/lang/String;)V

    .line 299
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->setDependency(Ljava/lang/String;)V

    .line 300
    const/4 v3, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->initPlugin(Landroid/content/Context;Z)V

    .line 303
    :cond_0
    invoke-static/range {v16 .. v16}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->addHeaderPluginItem(Lcom/lenovo/settings/pluginItem/PluginItemInfo;)V

    .line 304
    invoke-static/range {v16 .. v16}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->addPluginDependency(Lcom/lenovo/settings/pluginItem/PluginItemInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 359
    .end local v9    # "classIndex":I
    .end local v10    # "dependencyIndex":I
    .end local v11    # "intentIndex":I
    .end local v12    # "keyIndex":I
    .end local v14    # "pKeyIndex":I
    .end local v15    # "pkgIndex":I
    .end local v16    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    .end local v17    # "pluginKey":Ljava/lang/String;
    .end local v18    # "posIndex":I
    .end local v27    # "verIndex":I
    :catchall_0
    move-exception v3

    if-eqz v8, :cond_1

    .line 360
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v3

    .line 307
    :cond_2
    :try_start_1
    const-string v3, "SettingsDB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Nothing queried from URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->CONTENT_URI_HEADER:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 310
    const/4 v8, 0x0

    .line 312
    sget-object v3, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->CONTENT_URI_PREF:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 314
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_8

    .line 315
    const/4 v13, 0x0

    .line 316
    .local v13, "pKey":Ljava/lang/String;
    const/16 v26, 0x0

    .line 317
    .local v26, "settingItemList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    const-string v3, "_key"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 318
    .restart local v12    # "keyIndex":I
    const-string v3, "_key"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 319
    .local v20, "prefKeyIndex":I
    const-string v3, "_pKey"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 320
    .local v21, "prefPKeyIndex":I
    const-string v3, "_pos"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 321
    .local v23, "prefPosIndex":I
    const-string v3, "_package"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 322
    .local v22, "prefPkgIndex":I
    const-string v3, "_class"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 323
    .local v19, "prefClassIndex":I
    const-string v3, "_ver"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 324
    .local v24, "prefVerIndex":I
    :cond_4
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 325
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 327
    .restart local v17    # "pluginKey":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getPluginItemIfExisted(Ljava/lang/String;)Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    move-result-object v16

    .line 328
    .restart local v16    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    if-nez v16, :cond_5

    .line 329
    new-instance v16, Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .end local v16    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;-><init>(Landroid/content/Context;)V

    .line 330
    .restart local v16    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    move/from16 v0, v20

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->setKey(Ljava/lang/String;)V

    .line 331
    move/from16 v0, v21

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->setParentKey(Ljava/lang/String;)V

    .line 332
    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->setPosition(F)V

    .line 333
    move/from16 v0, v22

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->setPackageName(Ljava/lang/String;)V

    .line 334
    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->setClassName(Ljava/lang/String;)V

    .line 335
    move/from16 v0, v24

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->setVersion(Ljava/lang/String;)V

    .line 336
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->initPlugin(Landroid/content/Context;)V

    .line 340
    :cond_5
    invoke-virtual/range {v16 .. v16}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->isPluginValid()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 346
    if-eqz v13, :cond_6

    invoke-virtual/range {v16 .. v16}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getParentKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v26, :cond_7

    .line 347
    :cond_6
    invoke-virtual/range {v16 .. v16}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getParentKey()Ljava/lang/String;

    move-result-object v13

    .line 349
    const/16 v26, 0x0

    .line 350
    invoke-static {v13}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getPrefPluginItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v26

    .line 352
    :cond_7
    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-static/range {v16 .. v16}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->addPluginDependency(Lcom/lenovo/settings/pluginItem/PluginItemInfo;)V

    goto/16 :goto_1

    .line 356
    .end local v12    # "keyIndex":I
    .end local v13    # "pKey":Ljava/lang/String;
    .end local v16    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    .end local v17    # "pluginKey":Ljava/lang/String;
    .end local v19    # "prefClassIndex":I
    .end local v20    # "prefKeyIndex":I
    .end local v21    # "prefPKeyIndex":I
    .end local v22    # "prefPkgIndex":I
    .end local v23    # "prefPosIndex":I
    .end local v24    # "prefVerIndex":I
    .end local v26    # "settingItemList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    :cond_8
    const-string v3, "SettingsDB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Nothing queried from URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->CONTENT_URI_PREF:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    :cond_9
    if-eqz v8, :cond_a

    .line 360
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 363
    :cond_a
    return-void
.end method

.method public static removeByKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 233
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 235
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 237
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method public static removeByPackageName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 246
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 248
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_package=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 250
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return v1
.end method

.method public static setItemsVisibleByPackage(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 210
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 211
    .local v1, "values":Landroid/content/ContentValues;
    const-string v5, "_visible"

    if-eqz p2, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    sget-object v2, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_package=?"

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v1, v5, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 214
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    return v4

    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "values":Landroid/content/ContentValues;
    :cond_1
    move v2, v4

    .line 211
    goto :goto_0
.end method

.method public static setParentKeyByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newParentKey"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    :cond_0
    const/4 v2, 0x0

    .line 176
    :goto_0
    return v2

    .line 171
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 173
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 174
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "_pKey"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v2, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public static setPositionByKey(Landroid/content/Context;Ljava/lang/String;F)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newPosition"    # F

    .prologue
    const/4 v4, 0x0

    .line 187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1

    .line 188
    :cond_0
    const/4 v2, 0x0

    .line 196
    :goto_0
    return v2

    .line 191
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 193
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 194
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "_pos"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 196
    sget-object v2, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public setSettingItem(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/settings/pluginItem/PluginItemInfo;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "plugin"    # Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .prologue
    const/4 v4, 0x0

    .line 143
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p3, :cond_1

    .line 144
    :cond_0
    const/4 v2, 0x0

    .line 156
    :goto_0
    return v2

    .line 147
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 149
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 150
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "_pKey"

    invoke-virtual {p3}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getParentKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v2, "_pos"

    invoke-virtual {p3}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPosition()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 152
    const-string v2, "_package"

    invoke-virtual {p3}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v2, "_class"

    invoke-virtual {p3}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v2, "_ver"

    invoke-virtual {p3}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget-object v2, Lcom/lenovo/settings/provider/SettingsDB$SettingItem;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method
