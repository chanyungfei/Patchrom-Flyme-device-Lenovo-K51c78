.class Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler$1;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler$1;->this$0:Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler$1;->this$0:Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;

    # invokes: Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;->access$000(Lcom/flyme/deviceoriginalsettings/AirplaneModeEnabler;)V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
