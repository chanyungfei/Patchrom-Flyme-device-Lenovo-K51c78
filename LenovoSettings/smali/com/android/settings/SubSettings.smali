.class public Lcom/flyme/deviceoriginalsettings/SubSettings;
.super Lcom/flyme/deviceoriginalsettings/Settings;
.source "SubSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string v0, "SubSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SubSettings;->finish()V

    .line 30
    const/4 v0, 0x1

    return v0
.end method
