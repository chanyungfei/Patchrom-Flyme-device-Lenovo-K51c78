.class public final Lcom/lenovo/lps/reaper/sdk/db/d;
.super Lde/greenrobot/dao/AbstractDaoSession;


# instance fields
.field private final a:Lde/greenrobot/dao/internal/DaoConfig;

.field private final b:Lde/greenrobot/dao/internal/DaoConfig;

.field private final c:Lcom/lenovo/lps/reaper/sdk/db/EventDao;

.field private final d:Lcom/lenovo/lps/reaper/sdk/db/SessionDao;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lde/greenrobot/dao/identityscope/IdentityScopeType;Ljava/util/Map;)V
    .locals 2

    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDaoSession;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    const-class v0, Lcom/lenovo/lps/reaper/sdk/db/EventDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/d;->a:Lde/greenrobot/dao/internal/DaoConfig;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/d;->a:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    const-class v0, Lcom/lenovo/lps/reaper/sdk/db/SessionDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/d;->b:Lde/greenrobot/dao/internal/DaoConfig;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/d;->b:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/db/EventDao;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/db/d;->a:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/lenovo/lps/reaper/sdk/db/EventDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/lenovo/lps/reaper/sdk/db/d;)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/d;->c:Lcom/lenovo/lps/reaper/sdk/db/EventDao;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/db/SessionDao;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/db/d;->b:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/lenovo/lps/reaper/sdk/db/SessionDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/lenovo/lps/reaper/sdk/db/d;)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/d;->d:Lcom/lenovo/lps/reaper/sdk/db/SessionDao;

    const-class v0, Lcom/lenovo/lps/reaper/sdk/db/Event;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/db/d;->c:Lcom/lenovo/lps/reaper/sdk/db/EventDao;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/lps/reaper/sdk/db/d;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    const-class v0, Lcom/lenovo/lps/reaper/sdk/db/Session;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/db/d;->d:Lcom/lenovo/lps/reaper/sdk/db/SessionDao;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/lps/reaper/sdk/db/d;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/lenovo/lps/reaper/sdk/db/EventDao;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/d;->c:Lcom/lenovo/lps/reaper/sdk/db/EventDao;

    return-object v0
.end method

.method public b()Lcom/lenovo/lps/reaper/sdk/db/SessionDao;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/db/d;->d:Lcom/lenovo/lps/reaper/sdk/db/SessionDao;

    return-object v0
.end method
