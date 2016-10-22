.class Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$2;
.super Lcom/android/internal/content/PackageMonitor;
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
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private sendUpdate()V
    .locals 4

    .prologue
    .line 205
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->access$300(Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->access$200(Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    .line 187
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    .line 192
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    .line 197
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings$2;->sendUpdate()V

    .line 202
    return-void
.end method
