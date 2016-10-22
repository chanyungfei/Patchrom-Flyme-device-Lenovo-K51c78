.class public final Lcom/lenovo/lps/reaper/sdk/db/a;
.super Lde/greenrobot/dao/AbstractDaoMaster;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const/16 v0, 0xd

    invoke-direct {p0, p1, v0}, Lde/greenrobot/dao/AbstractDaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;I)V

    const-class v0, Lcom/lenovo/lps/reaper/sdk/db/EventDao;

    invoke-virtual {p0, v0}, Lcom/lenovo/lps/reaper/sdk/db/a;->registerDaoClass(Ljava/lang/Class;)V

    const-class v0, Lcom/lenovo/lps/reaper/sdk/db/SessionDao;

    invoke-virtual {p0, v0}, Lcom/lenovo/lps/reaper/sdk/db/a;->registerDaoClass(Ljava/lang/Class;)V

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    invoke-static {p0, p1}, Lcom/lenovo/lps/reaper/sdk/db/SessionDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method


# virtual methods
.method public a()Lcom/lenovo/lps/reaper/sdk/db/d;
    .locals 4

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/db/d;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/db/a;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lde/greenrobot/dao/identityscope/IdentityScopeType;->Session:Lde/greenrobot/dao/identityscope/IdentityScopeType;

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/db/a;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/db/d;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lde/greenrobot/dao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public a(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lcom/lenovo/lps/reaper/sdk/db/d;
    .locals 3

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/db/d;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/db/a;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/db/a;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, Lcom/lenovo/lps/reaper/sdk/db/d;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lde/greenrobot/dao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public synthetic newSession()Lde/greenrobot/dao/AbstractDaoSession;
    .locals 1

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/db/a;->a()Lcom/lenovo/lps/reaper/sdk/db/d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newSession(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lde/greenrobot/dao/AbstractDaoSession;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/lenovo/lps/reaper/sdk/db/a;->a(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lcom/lenovo/lps/reaper/sdk/db/d;

    move-result-object v0

    return-object v0
.end method
