.class Lcom/flyme/deviceoriginalsettings/WiFiSwitchEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WiFiSwitchEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/WiFiSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/WiFiSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/WiFiSwitchEnabler;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/WiFiSwitchEnabler$1;->this$0:Lcom/flyme/deviceoriginalsettings/WiFiSwitchEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    const-string v1, "wifi_switch_state"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 54
    .local v0, "state":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive, Handle WIFI_SWITCH_STATE_CHANGED_ACTION, WiFi Switch Enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/flyme/deviceoriginalsettings/WiFiSwitchEnabler;->MSG_DEBUG(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/WiFiSwitchEnabler;->access$000(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/WiFiSwitchEnabler$1;->this$0:Lcom/flyme/deviceoriginalsettings/WiFiSwitchEnabler;

    # invokes: Lcom/flyme/deviceoriginalsettings/WiFiSwitchEnabler;->handleStateChanged(I)V
    invoke-static {v1, v0}, Lcom/flyme/deviceoriginalsettings/WiFiSwitchEnabler;->access$100(Lcom/flyme/deviceoriginalsettings/WiFiSwitchEnabler;I)V

    .line 58
    return-void
.end method
