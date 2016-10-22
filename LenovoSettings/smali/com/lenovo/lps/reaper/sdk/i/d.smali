.class public final Lcom/lenovo/lps/reaper/sdk/i/d;
.super Ljava/lang/Object;


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/c;->a()Lcom/lenovo/lps/reaper/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/b/c;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/.ZUKReaper/did"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/.LenovoReaper/did"

    goto :goto_0
.end method
