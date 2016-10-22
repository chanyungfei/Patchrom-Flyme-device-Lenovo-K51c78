.class Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler$2;
.super Landroid/database/ContentObserver;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler$2;->this$0:Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 70
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler$2;->this$0:Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;

    # invokes: Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->access$000(Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;)V

    .line 71
    return-void
.end method
