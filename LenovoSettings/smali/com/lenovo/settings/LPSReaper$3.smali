.class final Lcom/lenovo/settings/LPSReaper$3;
.super Ljava/lang/Object;
.source "LPSReaper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/LPSReaper;->trackHeaderLaunch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$headerName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/lenovo/settings/LPSReaper$3;->val$headerName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 142
    :try_start_0
    new-instance v1, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    .line 143
    .local v1, "map":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/lenovo/settings/LPSReaper$3;->val$headerName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 144
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "Settings_Event"

    const-string v4, "action_header_launch"

    invoke-virtual {v2, v3, v4, v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v1    # "map":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
