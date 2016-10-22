.class public Lcom/flyme/deviceoriginalsettings/accessibility/ToggleScreenMagnificationPreferenceFragment;
.super Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleScreenMagnificationPreferenceFragment.java"


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
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleScreenMagnificationPreferenceFragment;->mToggleSwitch:Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;

    new-instance v1, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleScreenMagnificationPreferenceFragment$1;-><init>(Lcom/flyme/deviceoriginalsettings/accessibility/ToggleScreenMagnificationPreferenceFragment;)V

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
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_magnification_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 33
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
