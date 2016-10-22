.class public final Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
    .locals 1

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    return-object v0
.end method

.method private printVal(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const-string p1, "null"

    .end local p1    # "s":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public addDownloadAllMsgTask()V
    .locals 3

    const-string v0, "addDownloadAllMsgTask"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/c;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when addDownloadAllMsgTask."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public addDownloadMsgTask()V
    .locals 3

    const-string v0, "addDownloadMsgTask"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/c;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when addDownloadMsgTask."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public addUploadMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "msgHead"    # Ljava/lang/String;
    .param p2, "msgBody"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addUploadMsg: msgHead="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msgBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when addUploadMsg."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public countEvent()I
    .locals 3

    const-string v0, "countEvent"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/c;->h()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when countEvent."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public disableReport()V
    .locals 1

    const-string v0, "disableReport"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/c;->b()V

    return-void
.end method

.method public dispatch()V
    .locals 3

    const-string v0, "dispatch"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/c;->f(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when dispatch."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public dispatchNow()V
    .locals 3

    const-string v0, "dispatchNow"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/c;->f(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when dispatch."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public dispatchOtherAppData()V
    .locals 3

    const-string v0, "dispatchOtherAppData"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/c;->h(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when dispatch other app data."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public dispatchStandAloneAppData()V
    .locals 3

    const-string v0, "dispatchStandAloneAppData"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/c;->h(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when dispatch stand alone app data."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public enableReport()V
    .locals 1

    const-string v0, "enableReport"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/c;->c()V

    return-void
.end method

.method public forceFlush(Z)V
    .locals 3
    .param p1, "sync"    # Z

    .prologue
    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/c;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "force flush."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public forceUpdateOnlineConfiguration()V
    .locals 3

    const-string v0, "forceUpdateOnlineConfiguration"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/c;->g(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when update online configuration."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getApplicationToken()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getChannel: channel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    return-object v0
.end method

.method public getDeviceInfo(Landroid/content/Context;)Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "getDeviceInfo"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/b/c;->b(Landroid/content/Context;)Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when get device info."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOnlineConfiguration(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getOnlineConfiguration key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/c;->f(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when get online configuration."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOnlineConfigurationUpdateTimeInMills()J
    .locals 3

    const-string v0, "getOnlineConfigurationUpdateTimeInMills"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/c;->i()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when get online configuration update time."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    :try_start_0
    const-string v0, "sdk initialize"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/c;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when initialize."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appToken"    # Ljava/lang/String;
    .param p3, "reportIntervalInSeconds"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->initialize(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setAppToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appToken"    # Ljava/lang/String;
    .param p3, "appChannel"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->initialize(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setAppToken(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setAppChannel(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isPermitReportData()Z
    .locals 1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/c;->d()Z

    move-result v0

    return v0
.end method

.method public isTrackerInitialized()Z
    .locals 1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/f/h;->a()Lcom/lenovo/lps/reaper/sdk/f/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/f/h;->b()Z

    move-result v0

    return v0
.end method

.method public needReport(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/e/n;->a()Lcom/lenovo/lps/reaper/sdk/e/n;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/lenovo/lps/reaper/sdk/e/n;->a(Ljava/lang/String;Ljava/lang/String;D)Z

    move-result v0

    return v0
.end method

.method public setAppChannel(Ljava/lang/String;)V
    .locals 2
    .param p1, "appChannel"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setAppChannel: appChannel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setAppToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "appToken"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setAppToken: appToken="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;I)V
    .locals 2
    .param p1, "appVersionName"    # Ljava/lang/String;
    .param p2, "appVersionCode"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appVersionName: appVersionName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " appVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setAppVersionName(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setAppVersionCode(I)V

    return-void
.end method

.method public setAppVersionCode(I)V
    .locals 2
    .param p1, "appVersionCode"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appVersionCode: appVersionCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/c;->a(I)V

    return-void
.end method

.method public setAppVersionName(Ljava/lang/String;)V
    .locals 2
    .param p1, "appVersionName"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appVersionName: appVersionName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/c;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setInterOsVersion(Z)V
    .locals 1
    .param p1, "isNeed"    # Z

    .prologue
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/c;->d(Z)V

    return-void
.end method

.method public setOnMsgListener(Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    .prologue
    const-string v0, "setOnMsgListener"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/c;->a(Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when setOnMsgListener."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setParam(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/lps/reaper/sdk/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUserId(J)V
    .locals 3
    .param p1, "lenovoUserId"    # J

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setUserId: lenovoUserId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const-string v1, "LenovoID"

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setUserId(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1
    .param p1, "lenovoUserId"    # Ljava/lang/String;

    .prologue
    const-string v0, "LenovoID"

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setUserId(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userIdClass"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setUserId: userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userIdClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when setUserId."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public showLog(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/c;->c(Z)V

    return-void
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method

.method public smartInitialize(Landroid/content/Context;)V
    .locals 3
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    :try_start_0
    const-string v0, "sdk smartInitialize"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/c;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when smartInitialize."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackActivity(Ljava/lang/String;)V
    .locals 8
    .param p1, "activity"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    const-string v1, "__PAGEVIEW__"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    return-void
.end method

.method public trackAppUsageData()V
    .locals 3

    const-string v0, "trackAppUsageData"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/c;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when trackAppUsageData."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackDomainDetectEvent(Ljava/lang/String;)V
    .locals 4
    .param p1, "testDomain"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trackDomainDetectEvent: testDomain="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "testDomain is empty"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lps/reaper/sdk/i/c;->a:Lcom/lenovo/lps/reaper/sdk/i/c;

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/i/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when trackDomainDetectEvent."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    move-object v0, p1

    goto :goto_1
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trackEvent: category="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when trackEvent."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)V
    .locals 8
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "param"    # Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    .prologue
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trackEvent: category="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when trackEvent."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # I

    .prologue
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trackEvent: category="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    int-to-double v4, p4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when trackEvent."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/lps/reaper/sdk/api/ParamMap;)V
    .locals 8
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # I
    .param p5, "param"    # Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    .prologue
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trackEvent: category="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    int-to-double v4, p4

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when trackEvent."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/lps/reaper/sdk/i/i;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)V
    .locals 9
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # I
    .param p5, "prio"    # Lcom/lenovo/lps/reaper/sdk/i/i;
    .param p6, "param"    # Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    .prologue
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trackEvent: category="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    int-to-double v4, p4

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/i/i;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when trackEvent."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackEventBegin(Ljava/lang/String;)V
    .locals 3
    .param p1, "eventAction"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trackEventBegin: eventAction="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when trackEventBegin."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackEventBySync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/lps/reaper/sdk/api/ParamMap;)V
    .locals 8
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # I
    .param p5, "param"    # Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    .prologue
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trackEventBySync: category="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    int-to-double v4, p4

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when trackEvent."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackEventDuration(Ljava/lang/String;DJ)V
    .locals 6
    .param p1, "eventAction"    # Ljava/lang/String;
    .param p2, "dataLength"    # D
    .param p4, "duration"    # J

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trackEventDuration: eventAction="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/String;DJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when track event duration."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackEventDuration(Ljava/lang/String;J)V
    .locals 4
    .param p1, "eventAction"    # Ljava/lang/String;
    .param p2, "duration"    # J

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trackEventDuration: eventAction="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when trackEventDuration."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackEventEnd(Ljava/lang/String;)V
    .locals 3
    .param p1, "eventAction"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trackEventEnd: eventAction="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when trackEventEnd."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackEventEnd(Ljava/lang/String;D)V
    .locals 4
    .param p1, "eventAction"    # Ljava/lang/String;
    .param p2, "dataLength"    # D

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trackEventEnd: eventAction="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when trackEventEnd."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackFeedback(Ljava/lang/String;)V
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trackFeedback: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    const-string v0, "__FEEDBACK__"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public trackHttpDetectEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "testHttpUri"    # Ljava/lang/String;

    .prologue
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trackHttpDetectEvent: testHttpUri="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/i/c;->b:Lcom/lenovo/lps/reaper/sdk/i/c;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/i/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when trackHttpDetectEvent."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackInstalledApps(Z)V
    .locals 3
    .param p1, "includeSystemApp"    # Z

    .prologue
    const-string v0, "trackInstalledApps"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/c;->e(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when trackInstalledApps."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackPagePause(Ljava/lang/String;)V
    .locals 2
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trackPagePause: pageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPagePause(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public trackPagePause(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "framePageName"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trackPagePause: pageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " framePageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/lenovo/lps/reaper/sdk/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when trackPagePause."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackPageResume(Ljava/lang/String;)V
    .locals 2
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trackPageResume: pageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPageResume(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public trackPageResume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "framePageName"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trackPageResume: pageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " framePageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when trackPageResume."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackPause(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "trackPause"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPagePause(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public trackResume(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "trackResume"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPageResume(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public trackThrowable(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trackThrowable: message="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/c;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when trackThrowable."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public trackUserAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "userActionName"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public trackUserAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "userActionName"    # Ljava/lang/String;
    .param p2, "pageName"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trackUserAction: userActionName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->printVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/lenovo/lps/reaper/sdk/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when trackUserAction."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public unInitialize(Z)V
    .locals 3
    .param p1, "sync"    # Z

    .prologue
    :try_start_0
    const-string v0, "sdk unInitialize"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/c;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when unInitialize."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateOnlineConfiguration()V
    .locals 3

    const-string v0, "updateOnlineConfiguration"

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/i/o;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/c;->a()Lcom/lenovo/lps/reaper/sdk/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/c;->g(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnalyticsTracker"

    const-string v2, "Exception when update online configuration."

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
