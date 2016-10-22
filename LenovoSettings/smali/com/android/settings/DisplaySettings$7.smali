.class Lcom/flyme/deviceoriginalsettings/DisplaySettings$7;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/DisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$7;->this$0:Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 589
    const-string v2, "DisplaySettings"

    const-string v3, "mNightModeObserver omChanged"

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$7;->this$0:Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sys.night_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 593
    .local v0, "ischecked":Z
    :goto_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$7;->this$0:Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mNight:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->access$600(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 594
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$7;->this$0:Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mNight:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->access$600(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 596
    :cond_0
    return-void

    .end local v0    # "ischecked":Z
    :cond_1
    move v0, v1

    .line 591
    goto :goto_0
.end method
