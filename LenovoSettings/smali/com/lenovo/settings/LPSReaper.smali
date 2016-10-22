.class public Lcom/lenovo/settings/LPSReaper;
.super Ljava/lang/Object;
.source "LPSReaper.java"


# static fields
.field private static final ACTION_ENTER_SEARCH:Ljava/lang/String; = "action_enter_search"

.field private static final ACTION_HEADER_LAUNCH:Ljava/lang/String; = "action_header_launch"

.field private static final ACTION_HEADER_SORT:Ljava/lang/String; = "action_header_sort"

.field private static final ACTION_HEADER_SORT_CHANGED:Ljava/lang/String; = "action_header_sort_changed"

.field private static final ACTION_LAUNCH_SETTING:Ljava/lang/String; = "action_launch_setting"

.field private static final ACTION_SETTING_CHANGED:Ljava/lang/String; = "action_setting_changed"

.field private static final CATEGORY_SETTINGS:Ljava/lang/String; = "Settings_Event"

.field private static final TAG:Ljava/lang/String; = "LPSReaper"

.field private static mIsEnabled:Z

.field private static final sAsyncAnalytics:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/settings/LPSReaper;->mIsEnabled:Z

    .line 31
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/lenovo/settings/LPSReaper;->sAsyncAnalytics:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 17
    invoke-static {}, Lcom/lenovo/settings/LPSReaper;->initCanUseAnalyticsc()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/lenovo/settings/LPSReaper;->mIsEnabled:Z

    return v0
.end method

.method private static initCanUseAnalyticsc()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/lenovo/settings/LPSReaper;->isBGDataEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/lenovo/settings/LPSReaper;->mIsEnabled:Z

    .line 50
    sget-boolean v0, Lcom/lenovo/settings/LPSReaper;->mIsEnabled:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Lcom/lenovo/settings/LPSReaper;->isCMCCProject()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/settings/LPSReaper;->mIsEnabled:Z

    .line 53
    :cond_0
    return-void

    .line 51
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    sget-object v0, Lcom/lenovo/settings/LPSReaper;->sAsyncAnalytics:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/lenovo/settings/LPSReaper$1;

    invoke-direct {v1, p0}, Lcom/lenovo/settings/LPSReaper$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method

.method private static isBGDataEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 57
    :try_start_0
    const-string v2, "persist.backgrounddata.enable"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 58
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 59
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static isCMCCProject()Z
    .locals 3

    .prologue
    .line 65
    const-string v1, "ro.lenovo.operator"

    const-string v2, "open"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "operator":Ljava/lang/String;
    const-string v1, "cmcc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const/4 v1, 0x1

    .line 70
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static trackCharacterSettings(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "charKey"    # Ljava/lang/String;
    .param p1, "onOff"    # Z

    .prologue
    .line 208
    sget-boolean v0, Lcom/lenovo/settings/LPSReaper;->mIsEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    sget-object v0, Lcom/lenovo/settings/LPSReaper;->sAsyncAnalytics:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/lenovo/settings/LPSReaper$6;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/settings/LPSReaper$6;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static trackHeaderLaunch(Ljava/lang/String;)V
    .locals 2
    .param p0, "headerName"    # Ljava/lang/String;

    .prologue
    .line 134
    sget-boolean v0, Lcom/lenovo/settings/LPSReaper;->mIsEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    sget-object v0, Lcom/lenovo/settings/LPSReaper;->sAsyncAnalytics:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/lenovo/settings/LPSReaper$3;

    invoke-direct {v1, p0}, Lcom/lenovo/settings/LPSReaper$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static trackHeaderSort(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "headerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-boolean v0, Lcom/lenovo/settings/LPSReaper;->mIsEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    sget-object v0, Lcom/lenovo/settings/LPSReaper;->sAsyncAnalytics:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/lenovo/settings/LPSReaper$4;

    invoke-direct {v1, p0}, Lcom/lenovo/settings/LPSReaper$4;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static trackHeaderSortChanged()V
    .locals 2

    .prologue
    .line 185
    sget-boolean v0, Lcom/lenovo/settings/LPSReaper;->mIsEnabled:Z

    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 189
    :cond_0
    sget-object v0, Lcom/lenovo/settings/LPSReaper;->sAsyncAnalytics:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/lenovo/settings/LPSReaper$5;

    invoke-direct {v1}, Lcom/lenovo/settings/LPSReaper$5;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static trackLaunchSettings()V
    .locals 2

    .prologue
    .line 111
    sget-boolean v0, Lcom/lenovo/settings/LPSReaper;->mIsEnabled:Z

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 115
    :cond_0
    sget-object v0, Lcom/lenovo/settings/LPSReaper;->sAsyncAnalytics:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/lenovo/settings/LPSReaper$2;

    invoke-direct {v1}, Lcom/lenovo/settings/LPSReaper$2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static trackPause(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    if-eqz p0, :cond_0

    sget-boolean v1, Lcom/lenovo/settings/LPSReaper;->mIsEnabled:Z

    if-nez v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPause(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LPSReaper"

    const-string v2, "LPSReaper error: "

    invoke-static {v1, v2, v0}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static trackResume(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    if-eqz p0, :cond_0

    sget-boolean v1, Lcom/lenovo/settings/LPSReaper;->mIsEnabled:Z

    if-nez v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackResume(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LPSReaper"

    const-string v2, "LPSReaper error: "

    invoke-static {v1, v2, v0}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static trackSearchEvent()V
    .locals 2

    .prologue
    .line 229
    sget-boolean v0, Lcom/lenovo/settings/LPSReaper;->mIsEnabled:Z

    if-nez v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 233
    :cond_0
    sget-object v0, Lcom/lenovo/settings/LPSReaper;->sAsyncAnalytics:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/lenovo/settings/LPSReaper$7;

    invoke-direct {v1}, Lcom/lenovo/settings/LPSReaper$7;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
