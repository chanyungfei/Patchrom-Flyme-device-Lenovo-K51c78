.class public Lcom/lenovo/settings/search/SettingsSearchIndexablesProvider;
.super Lcom/lenovo/settings/search/provider/SearchIndexablesProvider;
.source "SettingsSearchIndexablesProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lenovo/settings/search/provider/SearchIndexablesProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 119
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/lenovo/settings/search/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 120
    .local v0, "cursor":Landroid/database/MatrixCursor;
    return-object v0
.end method

.method public queryRawData([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 54
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/lenovo/settings/search/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 74
    .local v0, "cursor":Landroid/database/MatrixCursor;
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isCT()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    const/16 v3, 0xe

    new-array v1, v3, [Ljava/lang/Object;

    .line 76
    .local v1, "ref":[Ljava/lang/Object;
    const/16 v3, 0x1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v7

    .line 77
    invoke-virtual {p0}, Lcom/lenovo/settings/search/SettingsSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c02f4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    .line 78
    aput-object v5, v1, v9

    .line 79
    const/4 v3, 0x3

    aput-object v5, v1, v3

    .line 80
    const/4 v3, 0x4

    aput-object v5, v1, v3

    .line 81
    const/4 v3, 0x5

    aput-object v5, v1, v3

    .line 82
    const/4 v3, 0x6

    aput-object v5, v1, v3

    .line 83
    const/4 v3, 0x7

    aput-object v5, v1, v3

    .line 84
    const/16 v3, 0x8

    const v4, 0x7f020072

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 85
    const/16 v3, 0x9

    aput-object v5, v1, v3

    .line 86
    const/16 v3, 0xa

    aput-object v5, v1, v3

    .line 87
    const/16 v3, 0xb

    aput-object v5, v1, v3

    .line 88
    const/16 v3, 0xc

    const-string v4, "open_4g"

    aput-object v4, v1, v3

    .line 89
    const/16 v3, 0xd

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 90
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 94
    .end local v1    # "ref":[Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/settings/search/SettingsSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c06dc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "title":Ljava/lang/String;
    const/16 v3, 0xe

    new-array v1, v3, [Ljava/lang/Object;

    .line 97
    .restart local v1    # "ref":[Ljava/lang/Object;
    const/16 v3, 0x18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v7

    .line 98
    aput-object v2, v1, v8

    .line 99
    aput-object v5, v1, v9

    .line 100
    const/4 v3, 0x3

    aput-object v5, v1, v3

    .line 101
    const/4 v3, 0x4

    aput-object v5, v1, v3

    .line 102
    const/4 v3, 0x5

    aput-object v5, v1, v3

    .line 103
    const/4 v3, 0x6

    aput-object v5, v1, v3

    .line 104
    const/4 v3, 0x7

    aput-object v5, v1, v3

    .line 105
    const/16 v3, 0x8

    const v4, 0x7f02005d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 106
    const/16 v3, 0x9

    const-string v4, "com.lenovo.lsf.lenovoid.action.USER_CENTER"

    aput-object v4, v1, v3

    .line 107
    const/16 v3, 0xa

    aput-object v5, v1, v3

    .line 108
    const/16 v3, 0xb

    aput-object v5, v1, v3

    .line 109
    const/16 v3, 0xc

    aput-object v5, v1, v3

    .line 110
    const/16 v3, 0xd

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 111
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 114
    return-object v0
.end method

.method public queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 34
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/lenovo/settings/search/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 35
    .local v0, "cursor":Landroid/database/MatrixCursor;
    invoke-static {}, Lcom/lenovo/settings/search/SearchIndexableResources;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 36
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lenovo/settings/search/provider/SearchIndexableResource;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    .line 39
    .local v3, "val":Lcom/lenovo/settings/search/provider/SearchIndexableResource;
    const/4 v4, 0x7

    new-array v2, v4, [Ljava/lang/Object;

    .line 40
    .local v2, "ref":[Ljava/lang/Object;
    const/4 v4, 0x0

    iget v5, v3, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->rank:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 41
    const/4 v4, 0x1

    iget v5, v3, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->xmlResId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 42
    const/4 v4, 0x2

    iget-object v5, v3, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->className:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 43
    const/4 v4, 0x3

    iget v5, v3, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->iconResId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 44
    const/4 v4, 0x4

    aput-object v6, v2, v4

    .line 45
    const/4 v4, 0x5

    aput-object v6, v2, v4

    .line 46
    const/4 v4, 0x6

    aput-object v6, v2, v4

    .line 47
    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 49
    .end local v2    # "ref":[Ljava/lang/Object;
    .end local v3    # "val":Lcom/lenovo/settings/search/provider/SearchIndexableResource;
    :cond_0
    return-object v0
.end method
