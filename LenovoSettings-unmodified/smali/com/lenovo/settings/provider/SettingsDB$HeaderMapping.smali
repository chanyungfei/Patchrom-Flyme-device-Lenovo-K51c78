.class public final Lcom/lenovo/settings/provider/SettingsDB$HeaderMapping;
.super Ljava/lang/Object;
.source "SettingsDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/provider/SettingsDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "HeaderMapping"
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field protected static final HEADER_ID:Ljava/lang/String; = "_headerId"

.field protected static final PREF_KEY:Ljava/lang/String; = "_prefKey"

.field protected static final PREF_POS:Ljava/lang/String; = "_pos"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 536
    const-string v0, "content://com.lenovo.settings.db/mapping"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/provider/SettingsDB$HeaderMapping;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static bulkInsert(Landroid/content/Context;Ljava/util/List;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 549
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 550
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 551
    new-array v2, v0, [Landroid/content/ContentValues;

    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ContentValues;

    .line 552
    .local v1, "values":[Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/lenovo/settings/provider/SettingsDB$HeaderMapping;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v2

    .line 554
    .end local v1    # "values":[Landroid/content/ContentValues;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static loadHeaderMappings(Landroid/content/Context;Ljava/util/Hashtable;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 558
    .local p1, "headerIdMappings":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 559
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 562
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/lenovo/settings/provider/SettingsDB$HeaderMapping;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 564
    const-string v1, "_headerId"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 565
    .local v7, "headerIdIndex":I
    const-string v1, "_prefKey"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 567
    .local v8, "keyIndex":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 568
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 571
    .end local v7    # "headerIdIndex":I
    .end local v8    # "keyIndex":I
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_0

    .line 572
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v1

    .line 571
    .restart local v7    # "headerIdIndex":I
    .restart local v8    # "keyIndex":I
    :cond_1
    if-eqz v6, :cond_2

    .line 572
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 575
    :cond_2
    return-void
.end method
