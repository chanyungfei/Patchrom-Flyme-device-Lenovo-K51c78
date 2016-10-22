.class Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$1;
.super Lcom/flyme/deviceoriginalsettings/accessibility/SettingsContentObserver;
.source "ToggleAccessibilityServicePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    # invokes: Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->updateSwitchBarToggleSwitch()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->access$000(Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V

    .line 63
    return-void
.end method
