.class public final Lcom/lenovo/lps/reaper/sdk/b/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:J

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/b/d;->c:I

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/d;->a:Landroid/content/SharedPreferences;

    const-string v1, "report_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/b/d;->c:I

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "runtime_config"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/d;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/d;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "report_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public c()J
    .locals 4

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/d;->a:Landroid/content/SharedPreferences;

    const-string v1, "task_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()V
    .locals 4

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/d;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "task_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public e()J
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/b/d;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/d;->a:Landroid/content/SharedPreferences;

    const-string v1, "flush_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    :cond_0
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/b/d;->b:J

    return-wide v0
.end method

.method public f()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/b/d;->b:J

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/b/d;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "flush_time"

    iget-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/b/d;->b:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/b/d;->c:I

    return v0
.end method
