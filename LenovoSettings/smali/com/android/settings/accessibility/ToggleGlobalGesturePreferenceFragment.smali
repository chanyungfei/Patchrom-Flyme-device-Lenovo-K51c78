.class public Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment;
.super Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleGlobalGesturePreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    .line 38
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment;->mToggleSwitch:Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;

    new-instance v1, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment$1;-><init>(Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 63
    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleGlobalGesturePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_accessibility_global_gesture_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 33
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
