.class Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$8;
.super Landroid/database/ContentObserver;
.source "AccessibilitySettings.java"


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
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1058
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$8;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$8;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->updateRotationCheckbox()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->access$600(Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;)V

    .line 1062
    return-void
.end method
