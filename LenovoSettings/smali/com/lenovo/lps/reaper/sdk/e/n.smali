.class public final Lcom/lenovo/lps/reaper/sdk/e/n;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/lenovo/lps/reaper/sdk/e/n;


# instance fields
.field private c:Lcom/lenovo/lps/reaper/sdk/e/d;

.field private d:Lcom/lenovo/lps/reaper/sdk/e/l;

.field private e:Lcom/lenovo/lps/reaper/sdk/e/e;

.field private f:Lcom/lenovo/lps/reaper/sdk/e/h;

.field private g:Lcom/lenovo/lps/reaper/sdk/e/q;

.field private h:Lcom/lenovo/lps/reaper/sdk/e/c;

.field private i:Lcom/lenovo/lps/reaper/sdk/e/g;

.field private j:Lcom/lenovo/lps/reaper/sdk/e/f;

.field private k:Lcom/lenovo/lps/reaper/sdk/e/b;

.field private l:Lcom/lenovo/lps/reaper/sdk/e/j;

.field private m:Lcom/lenovo/lps/reaper/sdk/e/a;

.field private n:Lcom/lenovo/lps/reaper/sdk/e/k;

.field private o:Lcom/lenovo/lps/reaper/sdk/e/p;

.field private p:Lcom/lenovo/lps/reaper/sdk/e/o;

.field private q:Lcom/lenovo/lps/reaper/sdk/e/m;

.field private r:Lorg/json/JSONObject;

.field private s:Ljava/util/List;

.field private t:Z

.field private u:J

.field private v:J

.field private w:J

.field private x:J

.field private y:Ljava/lang/String;

.field private z:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/lenovo/lps/reaper/sdk/e/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/e/n;->a:Ljava/lang/String;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/e/n;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/e/n;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/e/n;->b:Lcom/lenovo/lps/reaper/sdk/e/n;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/e/d;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/e/d;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->c:Lcom/lenovo/lps/reaper/sdk/e/d;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/e/l;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/e/l;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->d:Lcom/lenovo/lps/reaper/sdk/e/l;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/e/e;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/e/e;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->e:Lcom/lenovo/lps/reaper/sdk/e/e;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/e/h;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/e/h;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->f:Lcom/lenovo/lps/reaper/sdk/e/h;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/e/q;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/e/q;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->g:Lcom/lenovo/lps/reaper/sdk/e/q;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/e/c;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/e/c;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->h:Lcom/lenovo/lps/reaper/sdk/e/c;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/e/g;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/e/g;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->i:Lcom/lenovo/lps/reaper/sdk/e/g;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/e/f;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/e/f;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->j:Lcom/lenovo/lps/reaper/sdk/e/f;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/e/b;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/e/b;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->k:Lcom/lenovo/lps/reaper/sdk/e/b;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/e/j;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/e/j;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->l:Lcom/lenovo/lps/reaper/sdk/e/j;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/e/a;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/e/a;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->m:Lcom/lenovo/lps/reaper/sdk/e/a;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/e/k;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/e/k;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->n:Lcom/lenovo/lps/reaper/sdk/e/k;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/e/p;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/e/p;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->o:Lcom/lenovo/lps/reaper/sdk/e/p;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/e/o;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/e/o;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->p:Lcom/lenovo/lps/reaper/sdk/e/o;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/e/m;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/e/m;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->q:Lcom/lenovo/lps/reaper/sdk/e/m;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->s:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/lenovo/lps/reaper/sdk/e/n;
    .locals 1

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/e/n;->b:Lcom/lenovo/lps/reaper/sdk/e/n;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lps/reaper/sdk/e/i;

    invoke-interface {v0, p1}, Lcom/lenovo/lps/reaper/sdk/e/i;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    invoke-interface {v0, p1, v4}, Lcom/lenovo/lps/reaper/sdk/e/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private t()V
    .locals 2

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/e/n;->a:Ljava/lang/String;

    const-string v1, "ServerConfigStorage is Reset"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lps/reaper/sdk/e/i;

    invoke-interface {v0}, Lcom/lenovo/lps/reaper/sdk/e/i;->a()V

    goto :goto_0
.end method

.method private u()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->u:J

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->z:Landroid/content/Context;

    const-string v1, "ConfigUpdate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LastUpdateTimestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private v()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->v:J

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->z:Landroid/content/Context;

    const-string v1, "ConfigUpdate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "AppLastUpdateTimestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private w()V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/e/n;->a:Ljava/lang/String;

    const-string v1, "Loading Configuration From Preferences..."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->z:Landroid/content/Context;

    const-string v1, "reaper"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/lenovo/lps/reaper/sdk/e/n;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/e/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load config from preferences error. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private x()V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/e/n;->a:Ljava/lang/String;

    const-string v1, "Loading App Configuration From Preferences..."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->z:Landroid/content/Context;

    const-string v1, "ReaperAppConfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "data"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->r:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/e/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load app config from preferences error. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private y()V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/e/n;->a:Ljava/lang/String;

    const-string v1, "loadOtherPreferences..."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->z:Landroid/content/Context;

    const-string v1, "ConfigUpdate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "LastUpdateTimestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->u:J

    const-string v1, "AppLastUpdateTimestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->v:J

    const-string v1, "TrackInstalledAppTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->w:J

    const-string v1, "TrackAppUsageTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->x:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/e/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load app config from preferences error. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private z()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->z:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/reaperfiles/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->y:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->y:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/e/n;->a:Ljava/lang/String;

    const-string v1, "exception when init other app data file path"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/e/n;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "otherAppDataFilePath: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/e/n;->a:Ljava/lang/String;

    const-string v2, "exception when init other app data file path"

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/i/i;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->i:Lcom/lenovo/lps/reaper/sdk/e/g;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/e/g;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/i/i;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->r:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->r:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/lenovo/lps/reaper/sdk/e/n;->a:Ljava/lang/String;

    const-string v3, "get app online configuration exception"

    invoke-static {v2, v3, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->z:Landroid/content/Context;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->c:Lcom/lenovo/lps/reaper/sdk/e/d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->d:Lcom/lenovo/lps/reaper/sdk/e/l;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->e:Lcom/lenovo/lps/reaper/sdk/e/e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->f:Lcom/lenovo/lps/reaper/sdk/e/h;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->g:Lcom/lenovo/lps/reaper/sdk/e/q;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->h:Lcom/lenovo/lps/reaper/sdk/e/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->i:Lcom/lenovo/lps/reaper/sdk/e/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->j:Lcom/lenovo/lps/reaper/sdk/e/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->k:Lcom/lenovo/lps/reaper/sdk/e/b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->l:Lcom/lenovo/lps/reaper/sdk/e/j;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->m:Lcom/lenovo/lps/reaper/sdk/e/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->n:Lcom/lenovo/lps/reaper/sdk/e/k;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->o:Lcom/lenovo/lps/reaper/sdk/e/p;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->p:Lcom/lenovo/lps/reaper/sdk/e/o;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->q:Lcom/lenovo/lps/reaper/sdk/e/m;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/e/n;->t()V

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/e/n;->w()V

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/e/n;->x()V

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/e/n;->y()V

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/e/n;->z()V

    return-void
.end method

.method public declared-synchronized a(Lorg/json/JSONArray;)V
    .locals 7

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/e/n;->t()V

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->z:Landroid/content/Context;

    const-string v2, "reaper"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/e/n;->u()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v0, ""

    const-string v5, ""

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v5

    invoke-direct {v5, v0, v4}, Lcom/lenovo/lps/reaper/sdk/e/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v4, Lcom/lenovo/lps/reaper/sdk/e/n;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lorg/json/JSONObject;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->r:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->z:Landroid/content/Context;

    const-string v1, "ReaperAppConfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/e/n;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->t:Z

    return-void
.end method

.method public a(I)Z
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->c:Lcom/lenovo/lps/reaper/sdk/e/d;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/e/d;->a(I)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/lenovo/lps/reaper/sdk/i/i;)Z
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->e:Lcom/lenovo/lps/reaper/sdk/e/e;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/e/e;->b(Lcom/lenovo/lps/reaper/sdk/i/i;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;D)Z
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->j:Lcom/lenovo/lps/reaper/sdk/e/f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lenovo/lps/reaper/sdk/e/f;->a(Ljava/lang/String;Ljava/lang/String;D)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/lenovo/lps/reaper/sdk/i/i;)I
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->e:Lcom/lenovo/lps/reaper/sdk/e/e;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/e/e;->a(Lcom/lenovo/lps/reaper/sdk/i/i;)I

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->w:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->o:Lcom/lenovo/lps/reaper/sdk/e/p;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/e/p;->b()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x36ee80

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->w:J

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->z:Landroid/content/Context;

    const-string v1, "ConfigUpdate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TrackInstalledAppTime"

    iget-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->w:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public d()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->x:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->p:Lcom/lenovo/lps/reaper/sdk/e/o;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/e/o;->b()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x36ee80

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->x:J

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->z:Landroid/content/Context;

    const-string v1, "ConfigUpdate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TrackAppUsageTime"

    iget-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->x:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public f()Z
    .locals 6

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->t:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->u:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v4, v2

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/e/n;->i()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 6

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->t:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->v:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v4, v2

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/e/n;->j()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->v:J

    return-wide v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->g:Lcom/lenovo/lps/reaper/sdk/e/q;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/q;->b()I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->h:Lcom/lenovo/lps/reaper/sdk/e/c;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/c;->b()I

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->d:Lcom/lenovo/lps/reaper/sdk/e/l;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/l;->b()Z

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->q:Lcom/lenovo/lps/reaper/sdk/e/m;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/m;->b()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->f:Lcom/lenovo/lps/reaper/sdk/e/h;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/h;->b()I

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->k:Lcom/lenovo/lps/reaper/sdk/e/b;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/b;->b()Z

    move-result v0

    return v0
.end method

.method public o()J
    .locals 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->l:Lcom/lenovo/lps/reaper/sdk/e/j;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/j;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->l:Lcom/lenovo/lps/reaper/sdk/e/j;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/j;->b()Z

    move-result v0

    return v0
.end method

.method public q()I
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->m:Lcom/lenovo/lps/reaper/sdk/e/a;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/a;->b()I

    move-result v0

    return v0
.end method

.method public r()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->n:Lcom/lenovo/lps/reaper/sdk/e/k;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/k;->b()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/e/n;->y:Ljava/lang/String;

    return-object v0
.end method
