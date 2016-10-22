.class public Lcom/lenovo/lps/reaper/sdk/db/EventDao;
.super Lde/greenrobot/dao/AbstractDao;


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "EVENT"

.field private static final TAG:Ljava/lang/String; = "EVENTDAO"


# instance fields
.field private mSession:Lcom/lenovo/lps/reaper/sdk/db/Session;

.field private mSessionDao:Lcom/lenovo/lps/reaper/sdk/db/SessionDao;

.field private random:Ljava/util/Random;

.field private sessionVisitsUpdated:Z


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;)V
    .locals 4
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;

    .prologue
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;)V

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/lenovo/lps/reaper/sdk/db/d;)V
    .locals 4
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/lenovo/lps/reaper/sdk/db/d;

    .prologue
    invoke-direct {p0, p1, p2}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lde/greenrobot/dao/AbstractDaoSession;)V

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->random:Ljava/util/Random;

    return-void
.end method

.method private buildJSONArray(Lorg/json/JSONArray;Ljava/util/Map$Entry;)V
    .locals 3
    .param p1, "arrs"    # Lorg/json/JSONArray;

    .prologue
    .local p2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "key"

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method private buildParamtoString(Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)Ljava/lang/String;
    .locals 6
    .param p1, "paramMap"    # Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    .prologue
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x1

    :goto_0
    const/4 v5, 0x5

    if-le v0, v5, :cond_0

    :try_start_0
    const-string v0, "name"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "value"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "extra"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->getExtraParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    return-object v0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->getName(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->putString(Lorg/json/JSONArray;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->putString(Lorg/json/JSONArray;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {p0, v4, v0}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->buildJSONArray(Lorg/json/JSONArray;Ljava/util/Map$Entry;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "EVENTDAO"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_2
.end method

.method private buildStringtoParam(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    .locals 8
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x5

    new-instance v2, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v1, "value"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-le v1, v0, :cond_3

    :cond_0
    const-string v0, "extra"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-lt v1, v4, :cond_4

    :cond_1
    :goto_3
    return-object v2

    :cond_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v1, v6, v7}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v5, "key"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->putExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "EVENTDAO"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifNotExists"    # Z

    .prologue
    if-eqz p1, :cond_0

    const-string v0, "IF NOT EXISTS "

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE TABLE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'EVENT\' ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'ID\' TEXT PRIMARY KEY ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'PKG\' TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'ACCOUNT\' TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'SESSION_ID\' INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'RANDOM_VAL\' INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'SESSION_TIME_FIRST\' INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'SESSION_TIME_PRE\' INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'SESSION_TIME_CUR\' INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'VISITS\' INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'CATEGORY\' TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'ACTION\' TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'LABEL\' TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'VALUE\' REAL,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'NETWORK_STATUS\' INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'NET_SUB_TYPE\' INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'USER_ID\' TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'USER_ID_CLASS\' TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'EVENT_TIME\' INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'APP_VERSION_CODE\' INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'APP_VERSION_NAME\' TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'APP_CHANNEL\' TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'PRIO\' INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'PARAMMAP\' TEXT);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, ""

    goto/16 :goto_0
.end method

.method public static dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifExists"    # Z

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "DROP TABLE "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "IF EXISTS "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'EVENT\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getPriority(I)Lcom/lenovo/lps/reaper/sdk/i/i;
    .locals 1
    .param p1, "value"    # I

    .prologue
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/i/i;->b:Lcom/lenovo/lps/reaper/sdk/i/i;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/i/i;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/i/i;->b:Lcom/lenovo/lps/reaper/sdk/i/i;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/i/i;->a:Lcom/lenovo/lps/reaper/sdk/i/i;

    goto :goto_0
.end method

.method private putString(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 0
    .param p1, "arrs"    # Lorg/json/JSONArray;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    return-void
.end method


# virtual methods
.method public addSessionVisits()V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->mSessionDao:Lcom/lenovo/lps/reaper/sdk/db/SessionDao;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/SessionDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->listLazy()Lde/greenrobot/dao/query/LazyList;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lde/greenrobot/dao/query/LazyList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/db/Session;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/db/Session;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/lenovo/lps/reaper/sdk/db/Session;->setId(J)V

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/lenovo/lps/reaper/sdk/db/Session;->setSessionId(I)V

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/lps/reaper/sdk/db/Session;->setFirstView(J)V

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/lps/reaper/sdk/db/Session;->setPreviousView(J)V

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/lps/reaper/sdk/db/Session;->setCurrentView(J)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/db/Session;->setVisits(I)V

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->mSessionDao:Lcom/lenovo/lps/reaper/sdk/db/SessionDao;

    invoke-virtual {v2, v0}, Lcom/lenovo/lps/reaper/sdk/db/SessionDao;->insertOrReplace(Ljava/lang/Object;)J

    :goto_0
    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->mSession:Lcom/lenovo/lps/reaper/sdk/db/Session;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v6, p0, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->sessionVisitsUpdated:Z

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lde/greenrobot/dao/query/LazyList;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lde/greenrobot/dao/query/LazyList;->close()V

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->mSession:Lcom/lenovo/lps/reaper/sdk/db/Session;

    if-nez v0, :cond_1

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/db/Session;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/db/Session;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->mSession:Lcom/lenovo/lps/reaper/sdk/db/Session;

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Lde/greenrobot/dao/query/LazyList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lps/reaper/sdk/db/Session;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/Session;->getCurrentView()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/lenovo/lps/reaper/sdk/db/Session;->setPreviousView(J)V

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/lps/reaper/sdk/db/Session;->setCurrentView(J)V

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/Session;->getVisits()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/db/Session;->setVisits(I)V

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->mSessionDao:Lcom/lenovo/lps/reaper/sdk/db/SessionDao;

    invoke-virtual {v2, v0}, Lcom/lenovo/lps/reaper/sdk/db/SessionDao;->update(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "EVENTDAO"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-boolean v6, p0, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->sessionVisitsUpdated:Z

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lde/greenrobot/dao/query/LazyList;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lde/greenrobot/dao/query/LazyList;->close()V

    :cond_3
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->mSession:Lcom/lenovo/lps/reaper/sdk/db/Session;

    if-nez v0, :cond_1

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/db/Session;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/db/Session;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->mSession:Lcom/lenovo/lps/reaper/sdk/db/Session;

    goto :goto_1

    :catchall_0
    move-exception v0

    iput-boolean v6, p0, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->sessionVisitsUpdated:Z

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lde/greenrobot/dao/query/LazyList;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lde/greenrobot/dao/query/LazyList;->close()V

    :cond_4
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->mSession:Lcom/lenovo/lps/reaper/sdk/db/Session;

    if-nez v1, :cond_5

    new-instance v1, Lcom/lenovo/lps/reaper/sdk/db/Session;

    invoke-direct {v1}, Lcom/lenovo/lps/reaper/sdk/db/Session;-><init>()V

    iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->mSession:Lcom/lenovo/lps/reaper/sdk/db/Session;

    :cond_5
    throw v0
.end method

.method protected bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/lenovo/lps/reaper/sdk/db/Event;)V
    .locals 4
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/lenovo/lps/reaper/sdk/db/Event;

    .prologue
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getPkg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getAccount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getSessionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_3
    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getRandomVal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_4
    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getSessionTimeFirst()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_5
    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getSessionTimePre()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_6
    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getSessionTimeCur()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_7
    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getVisits()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_8
    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getCategory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_9
    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_a
    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_b
    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    :cond_c
    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getNetworkStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_d

    const/16 v1, 0xe

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_d
    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getNetSubType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_e

    const/16 v1, 0xf

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_e
    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const/16 v1, 0x10

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_f
    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getUserIdClass()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const/16 v1, 0x11

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_10
    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getEventTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    const/16 v1, 0x12

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_11
    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getAppVersionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_12

    const/16 v1, 0x13

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_12
    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    const/16 v1, 0x14

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_13
    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getAppChannel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const/16 v1, 0x15

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_14
    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getPriority()Lcom/lenovo/lps/reaper/sdk/i/i;

    move-result-object v0

    if-eqz v0, :cond_15

    const/16 v1, 0x16

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/i/i;->ordinal()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_15
    invoke-virtual {p2}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getParamMap()Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    move-result-object v0

    if-eqz v0, :cond_16

    const/16 v1, 0x17

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->buildParamtoString(Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_16
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/lenovo/lps/reaper/sdk/db/Event;

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/lenovo/lps/reaper/sdk/db/Event;)V

    return-void
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/lenovo/lps/reaper/sdk/db/Event;

    invoke-virtual {p0, p1}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->getKey(Lcom/lenovo/lps/reaper/sdk/db/Event;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey(Lcom/lenovo/lps/reaper/sdk/db/Event;)Ljava/lang/String;
    .locals 1
    .param p1, "entity"    # Lcom/lenovo/lps/reaper/sdk/db/Event;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertOrReplaceInTx(Ljava/lang/Iterable;)V
    .locals 3

    .prologue
    .local p1, "events":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/lenovo/lps/reaper/sdk/db/Event;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lde/greenrobot/dao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lps/reaper/sdk/db/Event;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->saveEvent(Lcom/lenovo/lps/reaper/sdk/db/Event;Z)V

    goto :goto_0
.end method

.method protected isEntityUpdateable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/lenovo/lps/reaper/sdk/db/Event;
    .locals 31
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    new-instance v2, Lcom/lenovo/lps/reaper/sdk/db/Event;

    add-int/lit8 v3, p2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, p2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    add-int/lit8 v5, p2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    :goto_2
    add-int/lit8 v6, p2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    :goto_3
    add-int/lit8 v7, p2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    :goto_4
    add-int/lit8 v8, p2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_5

    const-wide/16 v8, 0x0

    :goto_5
    add-int/lit8 v10, p2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_6

    const-wide/16 v10, 0x0

    :goto_6
    add-int/lit8 v12, p2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_7

    const-wide/16 v12, 0x0

    :goto_7
    add-int/lit8 v14, p2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    :goto_8
    add-int/lit8 v15, p2, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v15, 0x0

    :goto_9
    add-int/lit8 v16, p2, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_a

    const/16 v16, 0x0

    :goto_a
    add-int/lit8 v17, p2, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_b

    const/16 v17, 0x0

    :goto_b
    add-int/lit8 v18, p2, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_c

    const-wide/16 v18, 0x0

    :goto_c
    add-int/lit8 v20, p2, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_d

    const/16 v20, 0x0

    :goto_d
    add-int/lit8 v21, p2, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_e

    const/16 v21, 0x0

    :goto_e
    add-int/lit8 v22, p2, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_f

    const/16 v22, 0x0

    :goto_f
    add-int/lit8 v23, p2, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_10

    const/16 v23, 0x0

    :goto_10
    add-int/lit8 v24, p2, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_11

    const-wide/16 v24, 0x0

    :goto_11
    add-int/lit8 v26, p2, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_12

    const/16 v26, 0x0

    :goto_12
    add-int/lit8 v27, p2, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_13

    const/16 v27, 0x0

    :goto_13
    add-int/lit8 v28, p2, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_14

    const/16 v28, 0x0

    :goto_14
    add-int/lit8 v29, p2, 0x15

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_15

    const/16 v29, 0x0

    :goto_15
    add-int/lit8 v30, p2, 0x16

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_16

    const/16 v30, 0x0

    :goto_16
    invoke-direct/range {v2 .. v30}, Lcom/lenovo/lps/reaper/sdk/db/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DIILjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/i/i;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)V

    return-object v2

    :cond_0
    add-int/lit8 v3, p2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_1
    add-int/lit8 v4, p2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_2
    add-int/lit8 v5, p2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v6, p2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    goto/16 :goto_3

    :cond_4
    add-int/lit8 v7, p2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    goto/16 :goto_4

    :cond_5
    add-int/lit8 v8, p2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    goto/16 :goto_5

    :cond_6
    add-int/lit8 v10, p2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    goto/16 :goto_6

    :cond_7
    add-int/lit8 v12, p2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    goto/16 :goto_7

    :cond_8
    add-int/lit8 v14, p2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    goto/16 :goto_8

    :cond_9
    add-int/lit8 v15, p2, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_9

    :cond_a
    add-int/lit8 v16, p2, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_a

    :cond_b
    add-int/lit8 v17, p2, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_b

    :cond_c
    add-int/lit8 v18, p2, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    goto/16 :goto_c

    :cond_d
    add-int/lit8 v20, p2, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    goto/16 :goto_d

    :cond_e
    add-int/lit8 v21, p2, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    goto/16 :goto_e

    :cond_f
    add-int/lit8 v22, p2, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_f

    :cond_10
    add-int/lit8 v23, p2, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_10

    :cond_11
    add-int/lit8 v24, p2, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    goto/16 :goto_11

    :cond_12
    add-int/lit8 v26, p2, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    goto/16 :goto_12

    :cond_13
    add-int/lit8 v27, p2, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_13

    :cond_14
    add-int/lit8 v28, p2, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_14

    :cond_15
    add-int/lit8 v29, p2, 0x15

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->getPriority(I)Lcom/lenovo/lps/reaper/sdk/i/i;

    move-result-object v29

    goto/16 :goto_15

    :cond_16
    add-int/lit8 v30, p2, 0x16

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->buildStringtoParam(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    move-result-object v30

    goto/16 :goto_16
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->readEntity(Landroid/database/Cursor;I)Lcom/lenovo/lps/reaper/sdk/db/Event;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/lenovo/lps/reaper/sdk/db/Event;I)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/lenovo/lps/reaper/sdk/db/Event;
    .param p3, "offset"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setPkg(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    invoke-virtual {p2, v0}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setAccount(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    invoke-virtual {p2, v0}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setSessionId(I)V

    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_4
    invoke-virtual {p2, v0}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setRandomVal(I)V

    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-wide v4, v6

    :goto_5
    invoke-virtual {p2, v4, v5}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setSessionTimeFirst(J)V

    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-wide v4, v6

    :goto_6
    invoke-virtual {p2, v4, v5}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setSessionTimePre(J)V

    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move-wide v4, v6

    :goto_7
    invoke-virtual {p2, v4, v5}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setSessionTimeCur(J)V

    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    :goto_8
    invoke-virtual {p2, v0}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setVisits(I)V

    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    :goto_9
    invoke-virtual {p2, v0}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setCategory(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v1

    :goto_a
    invoke-virtual {p2, v0}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setAction(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v1

    :goto_b
    invoke-virtual {p2, v0}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setLabel(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const-wide/16 v4, 0x0

    :goto_c
    invoke-virtual {p2, v4, v5}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setValue(D)V

    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    :goto_d
    invoke-virtual {p2, v0}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setNetworkStatus(I)V

    add-int/lit8 v0, p3, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v2

    :goto_e
    invoke-virtual {p2, v0}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setNetSubType(I)V

    add-int/lit8 v0, p3, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v0, v1

    :goto_f
    invoke-virtual {p2, v0}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setUserId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v0, v1

    :goto_10
    invoke-virtual {p2, v0}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setUserIdClass(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_11

    :goto_11
    invoke-virtual {p2, v6, v7}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setEventTime(J)V

    add-int/lit8 v0, p3, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_12
    invoke-virtual {p2, v2}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setAppVersionCode(I)V

    add-int/lit8 v0, p3, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v0, v1

    :goto_13
    invoke-virtual {p2, v0}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setAppVersionName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_14

    move-object v0, v1

    :goto_14
    invoke-virtual {p2, v0}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setAppChannel(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_15

    move-object v0, v1

    :goto_15
    invoke-virtual {p2, v0}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setPriority(Lcom/lenovo/lps/reaper/sdk/i/i;)V

    add-int/lit8 v0, p3, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_16

    :goto_16
    invoke-virtual {p2, v1}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setParamMap(Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)V

    return-void

    :cond_0
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_2
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto/16 :goto_3

    :cond_4
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto/16 :goto_4

    :cond_5
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto/16 :goto_5

    :cond_6
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto/16 :goto_6

    :cond_7
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto/16 :goto_7

    :cond_8
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto/16 :goto_8

    :cond_9
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_a
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_b
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    :cond_c
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    goto/16 :goto_c

    :cond_d
    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto/16 :goto_d

    :cond_e
    add-int/lit8 v0, p3, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto/16 :goto_e

    :cond_f
    add-int/lit8 v0, p3, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_10
    add-int/lit8 v0, p3, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    :cond_11
    add-int/lit8 v0, p3, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    goto/16 :goto_11

    :cond_12
    add-int/lit8 v0, p3, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    goto/16 :goto_12

    :cond_13
    add-int/lit8 v0, p3, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    :cond_14
    add-int/lit8 v0, p3, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    :cond_15
    add-int/lit8 v0, p3, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->getPriority(I)Lcom/lenovo/lps/reaper/sdk/i/i;

    move-result-object v0

    goto/16 :goto_15

    :cond_16
    add-int/lit8 v0, p3, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->buildStringtoParam(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    move-result-object v1

    goto/16 :goto_16
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lcom/lenovo/lps/reaper/sdk/db/Event;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->readEntity(Landroid/database/Cursor;Lcom/lenovo/lps/reaper/sdk/db/Event;I)V

    return-void
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public resetSessionVisits()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->sessionVisitsUpdated:Z

    return-void
.end method

.method public saveEvent(Lcom/lenovo/lps/reaper/sdk/db/Event;)V
    .locals 1
    .param p1, "event"    # Lcom/lenovo/lps/reaper/sdk/db/Event;

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->saveEvent(Lcom/lenovo/lps/reaper/sdk/db/Event;Z)V

    return-void
.end method

.method public saveEvent(Lcom/lenovo/lps/reaper/sdk/db/Event;Z)V
    .locals 3
    .param p1, "event"    # Lcom/lenovo/lps/reaper/sdk/db/Event;
    .param p2, "insert"    # Z

    .prologue
    :goto_0
    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->sessionVisitsUpdated:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->random:Ljava/util/Random;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setRandomVal(I)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->mSession:Lcom/lenovo/lps/reaper/sdk/db/Session;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/Session;->getSessionId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setSessionId(I)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->mSession:Lcom/lenovo/lps/reaper/sdk/db/Session;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/Session;->getCurrentView()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setSessionTimeCur(J)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->mSession:Lcom/lenovo/lps/reaper/sdk/db/Session;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/Session;->getFirstView()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setSessionTimeFirst(J)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->mSession:Lcom/lenovo/lps/reaper/sdk/db/Session;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/Session;->getPreviousView()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setSessionTimePre(J)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->mSession:Lcom/lenovo/lps/reaper/sdk/db/Session;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/db/Session;->getVisits()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setVisits(I)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/f/g;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setNetSubType(I)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/f/g;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setNetworkStatus(I)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setAppChannel(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setAppVersionCode(I)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lenovo/lps/reaper/sdk/db/Event;->setAppVersionName(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->insertOrReplace(Ljava/lang/Object;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    const-string v0, "EVENTDAO"

    const-string v1, "waiting for session visits update."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "EVENTDAO"

    const-string v1, "InterruptedException when waiting for session visits update."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "EVENTDAO"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setDaoSession(Lcom/lenovo/lps/reaper/sdk/db/SessionDao;)V
    .locals 0
    .param p1, "sessionDao"    # Lcom/lenovo/lps/reaper/sdk/db/SessionDao;

    .prologue
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->mSessionDao:Lcom/lenovo/lps/reaper/sdk/db/SessionDao;

    return-void
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/lenovo/lps/reaper/sdk/db/Event;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->updateKeyAfterInsert(Lcom/lenovo/lps/reaper/sdk/db/Event;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateKeyAfterInsert(Lcom/lenovo/lps/reaper/sdk/db/Event;J)Ljava/lang/String;
    .locals 1
    .param p1, "entity"    # Lcom/lenovo/lps/reaper/sdk/db/Event;
    .param p2, "rowId"    # J

    .prologue
    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/db/Event;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
