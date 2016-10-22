.class public final Lcom/lenovo/lps/reaper/sdk/b/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:J

.field private q:J

.field private r:J

.field private s:I

.field private t:Z

.field private u:Z

.field private v:[I

.field private w:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->b:I

    iput-boolean v2, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->j:Z

    iput-boolean v2, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->l:Z

    iput-boolean v1, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->m:Z

    iput v1, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->n:I

    iput-boolean v1, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->t:Z

    iput-boolean v1, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->u:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->v:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x258
        0x258
    .end array-data
.end method

.method private a(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "lenovo:daysOfNoTraffic"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {p2, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const-string v3, "AppConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "packageInfo.firstInstallTime: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/lps/reaper/sdk/i/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v2, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    sub-long v2, v4, v2

    int-to-long v4, v1

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->j:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "config: daysOfNoTraffic="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPermitTraffic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(Landroid/content/pm/ApplicationInfo;)V
    .locals 3

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "lenovo:isScreenOffNoTraffic"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->k:Z

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "config: isScreenOffNoTraffic=true"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/content/pm/ApplicationInfo;)V
    .locals 3

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "lenovo:isDisabledSaveEvents"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->l:Z

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->l:Z

    if-nez v0, :cond_0

    const-string v0, "config: isDisabledSaveEvents=false"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private c(Landroid/content/pm/ApplicationInfo;)V
    .locals 3

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "lenovo:eventCacheSize"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->o:I

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->o:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "config: eventCacheSize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->o:I

    goto :goto_0
.end method

.method private d(Landroid/content/pm/ApplicationInfo;)V
    .locals 4

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "lenovo:reportInterval"

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->p:J

    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->p:J

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->p:J

    return-void
.end method

.method private e(Landroid/content/pm/ApplicationInfo;)V
    .locals 4

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "lenovo:flushInterval"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->q:J

    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->q:J

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->q:J

    return-void
.end method

.method private f(Landroid/content/pm/ApplicationInfo;)V
    .locals 8

    const-wide/16 v6, 0x5a0

    const-wide/16 v4, 0x0

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "lenovo:taskInterval"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->r:J

    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->r:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_0

    iput-wide v6, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->r:J

    :cond_0
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->r:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    iput-wide v4, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->r:J

    :cond_1
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->r:J

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->r:J

    return-void
.end method

.method private g(Landroid/content/pm/ApplicationInfo;)V
    .locals 3

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "lenovo:sendType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->n:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "needSingleSend = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->a(Ljava/lang/String;)V

    return-void
.end method

.method private h(Landroid/content/pm/ApplicationInfo;)V
    .locals 5

    const v4, 0x186a0

    const/16 v3, 0x7d0

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "lenovo:dbStorageNum"

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->s:I

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->s:I

    if-gt v0, v3, :cond_0

    iput v3, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->s:I

    :cond_0
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->s:I

    if-lt v0, v4, :cond_1

    iput v4, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->s:I

    :cond_1
    return-void
.end method

.method private i(Landroid/content/pm/ApplicationInfo;)V
    .locals 3

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "lenovo:evcryption"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->t:Z

    return-void
.end method

.method private j(Landroid/content/pm/ApplicationInfo;)V
    .locals 2

    const-string v0, "ZUK"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/lps/reaper/sdk/i/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->u:Z

    return-void
.end method

.method private k(Landroid/content/pm/ApplicationInfo;)V
    .locals 3

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "lenovo:isInitialEvent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->m:Z

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->m:Z

    if-nez v0, :cond_0

    const-string v0, "config: isInitialEvent=false"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private l(Landroid/content/pm/ApplicationInfo;)V
    .locals 2

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "lenovo:isCustomDispatch"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->i:Z

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->i:Z

    if-eqz v0, :cond_0

    const-string v0, "config: isCustomDispatch=true"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private m(Landroid/content/pm/ApplicationInfo;)V
    .locals 2

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "lenovo:isTestMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->h:Z

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->h:Z

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Z)V

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "config: isTestMode=true"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private n(Landroid/content/pm/ApplicationInfo;)V
    .locals 2

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "lenovo:forceUpdateConfig"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->f:Z

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->f:Z

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/e/n;->a(Z)V

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "config: isForceUpdate=true"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private o(Landroid/content/pm/ApplicationInfo;)V
    .locals 3

    :try_start_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, "All"

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->d:Ljava/lang/String;

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "lenovo:channel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->d:Ljava/lang/String;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "config: channel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->a(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    const-string v0, "All"

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AppConfig"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "All"

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "config: channel error. use default channel: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private p(Landroid/content/pm/ApplicationInfo;)V
    .locals 4

    :try_start_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "lenovo:applicationToken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "lenovo.open.appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "lenovo:applicationToken is not config in AndroidManifest.xml"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "AppConfig"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    :try_start_1
    const-string v1, "[^0-9a-zA-Z.]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_4

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "applicationToken is too long:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "config: applicationToken="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method private q(Landroid/content/pm/ApplicationInfo;)V
    .locals 4

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "lenovo:level0EventNum"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "lenovo:level1EventNum"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->v:[I

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v2, v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "config: level0EventNum="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->v:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->a(Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->v:[I

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "config: level1EventNum="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->v:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "config: event num error"

    invoke-static {v1}, Lcom/lenovo/lps/reaper/sdk/i/o;->e(Ljava/lang/String;)V

    const-string v1, "AppConfig"

    const-string v2, "event num error"

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private r(Landroid/content/pm/ApplicationInfo;)V
    .locals 2

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "lenovo:autoDispatchData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->e:Z

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "config: autoDispatchData=true"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private u()V
    .locals 2

    const-string v0, "3.2.1"

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "app: analytics sdk version= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->w:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->w:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->a:Ljava/lang/String;

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/a;->e(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AppConfig"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "app: app version name error"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->b:I

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->w:Landroid/content/Context;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/lenovo/lps/reaper/sdk/b/a;->r(Landroid/content/pm/ApplicationInfo;)V

    invoke-direct {p0, v1}, Lcom/lenovo/lps/reaper/sdk/b/a;->q(Landroid/content/pm/ApplicationInfo;)V

    invoke-direct {p0, v1}, Lcom/lenovo/lps/reaper/sdk/b/a;->p(Landroid/content/pm/ApplicationInfo;)V

    invoke-direct {p0, v1}, Lcom/lenovo/lps/reaper/sdk/b/a;->o(Landroid/content/pm/ApplicationInfo;)V

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/b/a;->u()V

    invoke-direct {p0, v1}, Lcom/lenovo/lps/reaper/sdk/b/a;->n(Landroid/content/pm/ApplicationInfo;)V

    invoke-direct {p0, v1}, Lcom/lenovo/lps/reaper/sdk/b/a;->m(Landroid/content/pm/ApplicationInfo;)V

    invoke-direct {p0, v1}, Lcom/lenovo/lps/reaper/sdk/b/a;->l(Landroid/content/pm/ApplicationInfo;)V

    invoke-direct {p0, v1}, Lcom/lenovo/lps/reaper/sdk/b/a;->a(Landroid/content/pm/ApplicationInfo;)V

    invoke-direct {p0, v1}, Lcom/lenovo/lps/reaper/sdk/b/a;->b(Landroid/content/pm/ApplicationInfo;)V

    invoke-direct {p0, v1}, Lcom/lenovo/lps/reaper/sdk/b/a;->c(Landroid/content/pm/ApplicationInfo;)V

    invoke-direct {p0, v1}, Lcom/lenovo/lps/reaper/sdk/b/a;->k(Landroid/content/pm/ApplicationInfo;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/a;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)V

    invoke-direct {p0, v1}, Lcom/lenovo/lps/reaper/sdk/b/a;->d(Landroid/content/pm/ApplicationInfo;)V

    invoke-direct {p0, v1}, Lcom/lenovo/lps/reaper/sdk/b/a;->e(Landroid/content/pm/ApplicationInfo;)V

    invoke-direct {p0, v1}, Lcom/lenovo/lps/reaper/sdk/b/a;->f(Landroid/content/pm/ApplicationInfo;)V

    invoke-direct {p0, v1}, Lcom/lenovo/lps/reaper/sdk/b/a;->g(Landroid/content/pm/ApplicationInfo;)V

    invoke-direct {p0, v1}, Lcom/lenovo/lps/reaper/sdk/b/a;->h(Landroid/content/pm/ApplicationInfo;)V

    invoke-direct {p0, v1}, Lcom/lenovo/lps/reaper/sdk/b/a;->i(Landroid/content/pm/ApplicationInfo;)V

    invoke-direct {p0, v1}, Lcom/lenovo/lps/reaper/sdk/b/a;->j(Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/i/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public b()I
    .locals 3

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->w:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->w:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->b:I

    return v0

    :catch_0
    move-exception v0

    const-string v1, "AppConfig"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "app: app version code error"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/i/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/i/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()[I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->v:[I

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->v:[I

    aget v1, v1, v3

    aput v1, v0, v3

    return-object v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->p:J

    return-wide v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->q:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->r:J

    return-wide v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->s:I

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->e:Z

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->j:Z

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->i:Z

    return v0
.end method

.method n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->k:Z

    return v0
.end method

.method o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->l:Z

    return v0
.end method

.method p()I
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->o:I

    return v0
.end method

.method q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->m:Z

    return v0
.end method

.method r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->t:Z

    return v0
.end method

.method s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->u:Z

    return v0
.end method

.method t()I
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/b/a;->n:I

    return v0
.end method
