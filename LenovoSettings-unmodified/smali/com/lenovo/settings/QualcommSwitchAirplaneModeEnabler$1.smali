.class Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler$1;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler$1;->this$0:Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 69
    :pswitch_0
    # getter for: Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EVENT_SERVICE_STATE_CHANGED, onAirplaneModeChanged"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler$1;->this$0:Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;

    # invokes: Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->access$100(Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;)V

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
