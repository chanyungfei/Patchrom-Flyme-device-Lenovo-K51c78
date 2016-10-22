.class public Lcom/mediatek/search/SearchEngineManager;
.super Ljava/lang/Object;
.source "SearchEngineManager.java"


# static fields
.field public static final ACTION_SEARCH_ENGINE_CHANGED:Ljava/lang/String; = "com.mediatek.search.SEARCH_ENGINE_CHANGED"

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "SearchEngineManager"

.field private static mService:Lcom/mediatek/search/ISearchEngineManagerService;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/mediatek/search/SearchEngineManager;->mContext:Landroid/content/Context;

    .line 94
    const-string/jumbo v0, "search_engine"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/search/ISearchEngineManagerService;

    move-result-object v0

    sput-object v0, Lcom/mediatek/search/SearchEngineManager;->mService:Lcom/mediatek/search/ISearchEngineManagerService;

    .line 96
    return-void
.end method


# virtual methods
.method public getAvailables()Ljava/util/List;
    .locals 4
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
    .line 105
    :try_start_0
    sget-object v1, Lcom/mediatek/search/SearchEngineManager;->mService:Lcom/mediatek/search/ISearchEngineManagerService;

    invoke-interface {v1}, Lcom/mediatek/search/ISearchEngineManagerService;->getAvailables()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 108
    :goto_0
    return-object v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SearchEngineManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSearchEngineInfos() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBestMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "favicon"    # Ljava/lang/String;

    .prologue
    .line 122
    :try_start_0
    sget-object v1, Lcom/mediatek/search/SearchEngineManager;->mService:Lcom/mediatek/search/ISearchEngineManagerService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/search/ISearchEngineManagerService;->getBestMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 125
    :goto_0
    return-object v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SearchEngineManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBestMatch() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getByFavicon(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;
    .locals 1
    .param p1, "favicon"    # Ljava/lang/String;

    .prologue
    .line 136
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/search/SearchEngineManager;->getSearchEngine(ILjava/lang/String;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v0

    return-object v0
.end method

.method public getByName(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 145
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/search/SearchEngineManager;->getSearchEngine(ILjava/lang/String;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v0

    return-object v0
.end method

.method public getDefault()Lcom/mediatek/common/search/SearchEngine;
    .locals 4

    .prologue
    .line 171
    :try_start_0
    sget-object v1, Lcom/mediatek/search/SearchEngineManager;->mService:Lcom/mediatek/search/ISearchEngineManagerService;

    invoke-interface {v1}, Lcom/mediatek/search/ISearchEngineManagerService;->getDefault()Lcom/mediatek/common/search/SearchEngine;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 174
    :goto_0
    return-object v1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SearchEngineManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSystemDefaultSearchEngine() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSearchEngine(ILjava/lang/String;)Lcom/mediatek/common/search/SearchEngine;
    .locals 4
    .param p1, "field"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 157
    :try_start_0
    sget-object v1, Lcom/mediatek/search/SearchEngineManager;->mService:Lcom/mediatek/search/ISearchEngineManagerService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/search/ISearchEngineManagerService;->getSearchEngine(ILjava/lang/String;)Lcom/mediatek/common/search/SearchEngine;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 160
    :goto_0
    return-object v1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SearchEngineManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSearchEngine(int field, String value) failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDefault(Lcom/mediatek/common/search/SearchEngine;)Z
    .locals 4
    .param p1, "engine"    # Lcom/mediatek/common/search/SearchEngine;

    .prologue
    .line 186
    :try_start_0
    sget-object v1, Lcom/mediatek/search/SearchEngineManager;->mService:Lcom/mediatek/search/ISearchEngineManagerService;

    invoke-interface {v1, p1}, Lcom/mediatek/search/ISearchEngineManagerService;->setDefault(Lcom/mediatek/common/search/SearchEngine;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 189
    :goto_0
    return v1

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SearchEngineManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSystemDefaultSearchEngine() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v1, 0x0

    goto :goto_0
.end method
