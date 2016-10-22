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
    .line 161
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
    .line 165
    # getter for: Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mAirplaneModeReceiver AIRPLANE_MODE_CHANGED..."

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$1;->this$0:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    # getter for: Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->access$100(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 168
    .local v0, "airplaneModeEnabled":Z
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$1;->this$0:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    # getter for: Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->access$200(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$1;->this$0:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    # getter for: Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->access$200(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 170
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$1;->this$0:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    # getter for: Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->access$200(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 172
    :cond_0
    const-string v1, "action.lenovo.notify_airplane_status_change"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$1;->this$0:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    # getter for: Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->access$300(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$1;->this$0:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 175
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$1;->this$0:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    # getter for: Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->access$300(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 182
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$1;->this$0:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    # getter for: Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->access$300(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)Landroid/widget/Switch;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 178
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$1;->this$0:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    # getter for: Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->access$300(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 179
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$1;->this$0:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    # getter for: Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->access$300(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$1;->this$0:Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method
