.class Lcom/flyme/deviceoriginalsettings/UsageAccessSettings$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "UsageAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/UsageAccessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/UsageAccessSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/UsageAccessSettings;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/UsageAccessSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/UsageAccessSettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 355
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/UsageAccessSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/UsageAccessSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/UsageAccessSettings;->updateInterestedApps()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/UsageAccessSettings;->access$300(Lcom/flyme/deviceoriginalsettings/UsageAccessSettings;)V

    .line 356
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 360
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/UsageAccessSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/UsageAccessSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/UsageAccessSettings;->updateInterestedApps()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/UsageAccessSettings;->access$300(Lcom/flyme/deviceoriginalsettings/UsageAccessSettings;)V

    .line 361
    return-void
.end method
