.class final Lcom/lenovo/settings/LPSReaper$1;
.super Ljava/lang/Object;
.source "LPSReaper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/LPSReaper;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lenovo/settings/LPSReaper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 39
    # invokes: Lcom/lenovo/settings/LPSReaper;->initCanUseAnalyticsc()V
    invoke-static {}, Lcom/lenovo/settings/LPSReaper;->access$000()V

    .line 40
    # getter for: Lcom/lenovo/settings/LPSReaper;->mIsEnabled:Z
    invoke-static {}, Lcom/lenovo/settings/LPSReaper;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/settings/LPSReaper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->initialize(Landroid/content/Context;)V

    .line 43
    :cond_0
    return-void
.end method
