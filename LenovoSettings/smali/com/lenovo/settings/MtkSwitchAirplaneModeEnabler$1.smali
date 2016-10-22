.class Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkSwitchAirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$1;->this$0:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 168
    # getter for: Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mAirplaneModeReceiver AIRPLANE_MODE_CHANGED..."

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$1;->this$0:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    # getter for: Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->access$100(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 171
    .local v0, "airplaneModeEnabled":Z
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$1;->this$0:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    # getter for: Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->access$200(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$1;->this$0:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    # getter for: Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->access$200(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 173
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$1;->this$0:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    # getter for: Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->access$200(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 185
    :cond_0
    return-void
.end method
