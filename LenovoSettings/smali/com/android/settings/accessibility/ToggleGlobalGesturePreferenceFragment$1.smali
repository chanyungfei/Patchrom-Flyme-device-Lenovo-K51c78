.class Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment$1;
.super Ljava/lang/Object;
.source "ToggleGlobalGesturePreferenceFragment.java"

# interfaces
.implements Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;Z)Z
    .locals 8
    .param p1, "toggleSwitch"    # Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;
    .param p2, "checked"    # Z

    .prologue
    .line 41
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 42
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment;

    iget-object v1, v1, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 45
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0936

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c092f

    const-class v4, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-virtual {v6}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    return v0
.end method
