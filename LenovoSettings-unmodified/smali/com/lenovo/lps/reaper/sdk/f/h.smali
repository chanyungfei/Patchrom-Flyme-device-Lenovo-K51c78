.class public final Lcom/lenovo/lps/reaper/sdk/f/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/lenovo/lps/reaper/sdk/f/h;


# instance fields
.field private b:Ljava/util/List;

.field private c:Landroid/app/Activity;

.field private d:I

.field private e:I

.field private f:J

.field private g:J

.field private h:Z

.field private i:Ljava/util/Map;

.field private j:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/f/h;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/f/h;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/f/h;->a:Lcom/lenovo/lps/reaper/sdk/f/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/h;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/f/h;->h:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/h;->i:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/h;->j:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/lenovo/lps/reaper/sdk/f/h;
    .locals 1

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/f/h;->a:Lcom/lenovo/lps/reaper/sdk/f/h;

    return-object v0
.end method

.method private b(Landroid/content/Context;)Lcom/lenovo/lps/reaper/sdk/a/b;
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    if-ne v0, v2, :cond_2

    const-string v0, "ReaperAppManager"

    const-string v2, "not found this process."

    invoke-static {v0, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    goto :goto_0

    :cond_2
    const-string v2, "ReaperAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uid: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    cmp-long v0, v2, v6

    if-nez v0, :cond_3

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/a/b;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/lenovo/lps/reaper/sdk/a/b;-><init>(JJ)V

    goto :goto_1

    :cond_4
    const-string v0, "ReaperAppManager"

    const-string v2, "get traffic stats error."

    invoke-static {v0, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1
.end method

.method private e(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "ReaperAppManager"

    const-string v1, "invalid page name"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/h;->i:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private l()J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/f/h;->f:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private m()J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/f/h;->g:J

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/lenovo/lps/reaper/sdk/a/b;
    .locals 12

    const-wide/16 v10, 0x0

    const-string v0, "traffic"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "traffic_rx"

    invoke-interface {v1, v0, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v0, "traffic_tx"

    invoke-interface {v1, v0, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v0, "ReaperAppManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "lastRxTrafficNumber: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ReaperAppManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "lastTxTrafficNumber: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/f/h;->b(Landroid/content/Context;)Lcom/lenovo/lps/reaper/sdk/a/b;

    move-result-object v6

    if-nez v6, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "ReaperAppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "curRxTrafficNumber: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/a/b;->a()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ReaperAppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "curTxTrafficNumber: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/a/b;->b()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/a/b;

    invoke-direct {v0, v10, v11, v10, v11}, Lcom/lenovo/lps/reaper/sdk/a/b;-><init>(JJ)V

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/a/b;->a()J

    move-result-wide v8

    cmp-long v7, v8, v2

    if-lez v7, :cond_2

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "traffic_rx"

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/a/b;->a()J

    move-result-wide v10

    invoke-interface {v7, v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/a/b;->a()J

    move-result-wide v8

    sub-long v2, v8, v2

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/lps/reaper/sdk/a/b;->a(J)V

    :cond_2
    :goto_1
    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/a/b;->b()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "traffic_tx"

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/a/b;->b()J

    move-result-wide v8

    invoke-interface {v1, v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/a/b;->b()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/lps/reaper/sdk/a/b;->b(J)V

    goto :goto_0

    :cond_3
    const-string v2, "ReaperAppManager"

    const-string v3, "put rx traffic data error"

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v1, "ReaperAppManager"

    const-string v2, "put tx traffic data error"

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/f/h;->c:Landroid/app/Activity;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/f/h;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/f/h;->e()V

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/f/h;->g()V

    return-void
.end method

.method public b(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v2, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "ReaperAppManager"

    const-string v1, "invalid page name"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v2

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/h;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_2

    const-string v0, "ReaperAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "not found resume event of this page: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/f/h;->i:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    goto :goto_0
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/h;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/f/h;->h:Z

    return v0
.end method

.method public c()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/h;->c:Landroid/app/Activity;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "ReaperAppManager"

    const-string v1, "invalid eventAction"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/h;->j:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public c(Landroid/app/Activity;)Z
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/h;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/f/h;->d:I

    return v0
.end method

.method public d(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v2, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "ReaperAppManager"

    const-string v1, "invalid eventAction"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v2

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/f/h;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_2

    const-string v0, "ReaperAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "not found this begin event of this event action: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/i/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/f/h;->j:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/f/h;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/f/h;->d:I

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/f/h;->e:I

    return v0
.end method

.method public g()V
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/f/h;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/f/h;->e:I

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/f/h;->e:I

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/f/h;->d:I

    return-void
.end method

.method public i()Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/e/n;->q()I

    move-result v0

    int-to-long v4, v0

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/f/h;->l()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/f/h;->m()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-lez v3, :cond_1

    move v3, v1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    const-string v0, "ReaperAppManager"

    const-string v2, "is Time For Add Session Visits"

    invoke-static {v0, v2}, Lcom/lenovo/lps/reaper/sdk/i/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public j()V
    .locals 2

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/f/h;->h()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/f/h;->g:J

    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/f/h;->h:Z

    return-void
.end method
