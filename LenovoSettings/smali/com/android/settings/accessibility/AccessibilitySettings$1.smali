.class Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$1;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->loadInstalledServices()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->access$000(Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;)V

    .line 179
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->access$100(Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;)V

    .line 180
    return-void
.end method
