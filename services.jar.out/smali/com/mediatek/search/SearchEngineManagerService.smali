.class public Lcom/mediatek/search/SearchEngineManagerService;
.super Lcom/mediatek/search/ISearchEngineManagerService$Stub;
.source "SearchEngineManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/search/SearchEngineManagerService$LocaleChangeReceiver;,
        Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchEngineManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngine;

.field private mSearchEngineObserver:Landroid/database/ContentObserver;

.field private mSearchEngines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/search/SearchEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;-><init>()V

    .line 106
    new-instance v0, Lcom/mediatek/search/SearchEngineManagerService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/search/SearchEngineManagerService$1;-><init>(Lcom/mediatek/search/SearchEngineManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngineObserver:Landroid/database/ContentObserver;

    .line 98
    iput-object p1, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    .line 99
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;-><init>(Lcom/mediatek/search/SearchEngineManagerService;Lcom/mediatek/search/SearchEngineManagerService$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/common/regionalphone/RegionalPhone;->SEARCHENGINE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngineObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 104
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/search/SearchEngineManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/search/SearchEngineManagerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/mediatek/search/SearchEngineManagerService;->initSearchEngines()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/search/SearchEngineManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/search/SearchEngineManagerService;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private broadcastSearchEngineChangedInternal(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.search.SEARCH_ENGINE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 200
    const-string v1, "SearchEngineManagerService"

    const-string v2, "broadcast serach engine changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method

.method private getByFavicon(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;
    .locals 4
    .param p1, "favicon"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/mediatek/search/SearchEngineManagerService;->getAvailables()Ljava/util/List;

    move-result-object v1

    .line 221
    .local v1, "engines":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/search/SearchEngine;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/search/SearchEngine;

    .line 222
    .local v0, "engine":Lcom/mediatek/common/search/SearchEngine;
    invoke-virtual {v0}, Lcom/mediatek/common/search/SearchEngine;->getFaviconUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    .end local v0    # "engine":Lcom/mediatek/common/search/SearchEngine;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getByName(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/mediatek/search/SearchEngineManagerService;->getAvailables()Ljava/util/List;

    move-result-object v1

    .line 234
    .local v1, "engines":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/search/SearchEngine;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/search/SearchEngine;

    .line 235
    .local v0, "engine":Lcom/mediatek/common/search/SearchEngine;
    invoke-virtual {v0}, Lcom/mediatek/common/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 239
    .end local v0    # "engine":Lcom/mediatek/common/search/SearchEngine;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initSearchEngines()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 147
    const-class v7, Lcom/mediatek/common/search/IRegionalPhoneSearchEngineExt;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/common/search/IRegionalPhoneSearchEngineExt;

    .line 149
    .local v3, "regionalPhoneSearchEngineExt":Lcom/mediatek/common/search/IRegionalPhoneSearchEngineExt;
    if-eqz v3, :cond_0

    .line 150
    iget-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v3, v7}, Lcom/mediatek/common/search/IRegionalPhoneSearchEngineExt;->initSearchEngineInfosFromRpm(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngines:Ljava/util/List;

    .line 151
    iget-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngines:Ljava/util/List;

    if-eqz v7, :cond_0

    .line 152
    iget-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngines:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/common/search/SearchEngine;

    iput-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngine;

    .line 153
    const-string v7, "SearchEngineManagerService"

    const-string v8, "RegionalPhone Search engine init"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_0
    return-void

    .line 158
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngines:Ljava/util/List;

    .line 159
    iget-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 160
    .local v4, "res":Landroid/content/res/Resources;
    const v7, 0x8040006

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 161
    .local v5, "searchEngines":[Ljava/lang/String;
    if-eqz v5, :cond_1

    const/4 v7, 0x1

    array-length v8, v5

    if-lt v7, v8, :cond_2

    .line 163
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "No data found for "

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 165
    :cond_2
    aget-object v6, v5, v9

    .line 166
    .local v6, "sp":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v7, v5

    if-ge v1, v7, :cond_3

    .line 167
    aget-object v0, v5, v1

    .line 168
    .local v0, "configInfo":Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/mediatek/common/search/SearchEngine;->parseFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v2

    .line 169
    .local v2, "info":Lcom/mediatek/common/search/SearchEngine;
    iget-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngines:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 173
    .end local v0    # "configInfo":Ljava/lang/String;
    .end local v2    # "info":Lcom/mediatek/common/search/SearchEngine;
    :cond_3
    iget-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngine;

    if-eqz v7, :cond_4

    .line 174
    iget-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngine;

    invoke-virtual {v7}, Lcom/mediatek/common/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngine;

    invoke-virtual {v8}, Lcom/mediatek/common/search/SearchEngine;->getFaviconUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/mediatek/search/SearchEngineManagerService;->getBestMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v7

    iput-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngine;

    .line 178
    :cond_4
    iget-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngine;

    if-nez v7, :cond_5

    .line 179
    iget-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngines:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/common/search/SearchEngine;

    iput-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngine;

    .line 182
    :cond_5
    iget-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/mediatek/search/SearchEngineManagerService;->broadcastSearchEngineChangedInternal(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getAvailables()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/search/SearchEngine;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    const-string v0, "SearchEngineManagerService"

    const-string v1, "get avilable search engines"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngines:Ljava/util/List;

    if-nez v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/mediatek/search/SearchEngineManagerService;->initSearchEngines()V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngines:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBestMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "favicon"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/mediatek/search/SearchEngineManagerService;->getByName(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v0

    .line 213
    .local v0, "engine":Lcom/mediatek/common/search/SearchEngine;
    if-eqz v0, :cond_0

    .end local v0    # "engine":Lcom/mediatek/common/search/SearchEngine;
    :goto_0
    return-object v0

    .restart local v0    # "engine":Lcom/mediatek/common/search/SearchEngine;
    :cond_0
    invoke-direct {p0, p2}, Lcom/mediatek/search/SearchEngineManagerService;->getByFavicon(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefault()Lcom/mediatek/common/search/SearchEngine;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngine;

    return-object v0
.end method

.method public getSearchEngine(ILjava/lang/String;)Lcom/mediatek/common/search/SearchEngine;
    .locals 1
    .param p1, "field"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 250
    packed-switch p1, :pswitch_data_0

    .line 256
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 252
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/mediatek/search/SearchEngineManagerService;->getByName(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v0

    goto :goto_0

    .line 254
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/mediatek/search/SearchEngineManagerService;->getByFavicon(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v0

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setDefault(Lcom/mediatek/common/search/SearchEngine;)Z
    .locals 5
    .param p1, "engine"    # Lcom/mediatek/common/search/SearchEngine;

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/mediatek/search/SearchEngineManagerService;->getAvailables()Ljava/util/List;

    move-result-object v1

    .line 277
    .local v1, "engines":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/search/SearchEngine;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/search/SearchEngine;

    .line 278
    .local v0, "eng":Lcom/mediatek/common/search/SearchEngine;
    invoke-virtual {v0}, Lcom/mediatek/common/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mediatek/common/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    iput-object p1, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngine;

    .line 280
    const/4 v3, 0x1

    .line 283
    .end local v0    # "eng":Lcom/mediatek/common/search/SearchEngine;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
