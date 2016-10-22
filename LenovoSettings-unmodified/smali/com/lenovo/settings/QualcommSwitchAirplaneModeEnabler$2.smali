.class Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler$2;
.super Landroid/database/ContentObserver;
.source "QualcommSwitchAirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler$2;->this$0:Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 80
    # getter for: Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mAirplaneModeObserver, onAirplaneModeChanged"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler$2;->this$0:Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;

    # invokes: Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->access$100(Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;)V

    .line 82
    return-void
.end method
