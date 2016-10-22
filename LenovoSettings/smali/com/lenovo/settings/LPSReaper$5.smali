.class final Lcom/lenovo/settings/LPSReaper$5;
.super Ljava/lang/Object;
.source "LPSReaper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/LPSReaper;->trackCharacterSettings(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$charKey:Ljava/lang/String;

.field final synthetic val$onOff:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/lenovo/settings/LPSReaper$5;->val$charKey:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/lenovo/settings/LPSReaper$5;->val$onOff:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 194
    :try_start_0
    new-instance v1, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    .line 195
    .local v1, "map":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/lenovo/settings/LPSReaper$5;->val$charKey:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/lenovo/settings/LPSReaper$5;->val$onOff:Z

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 196
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "Settings_Event"

    const-string v4, "action_setting_changed"

    invoke-virtual {v2, v3, v4, v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v1    # "map":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LPSReaper"

    const-string v3, "LPSReaper error: "

    invoke-static {v2, v3, v0}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
