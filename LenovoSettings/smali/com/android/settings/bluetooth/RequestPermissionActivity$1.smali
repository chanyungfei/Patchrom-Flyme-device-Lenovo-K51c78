.class Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "RequestPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity$1;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 86
    if-nez p2, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity$1;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity;->access$000(Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 101
    .local v0, "state":I
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity$1;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity;->mUserConfirmed:Z
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity;->access$100(Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity$1;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity;

    # invokes: Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity;->proceedWithFailedTurnOnBT()V
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity;->access$200(Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity;)V

    goto :goto_0

    .line 105
    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity$1;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity;->mUserConfirmed:Z
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity;->access$100(Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity$1;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity;

    # invokes: Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity;->access$300(Lcom/flyme/deviceoriginalsettings/bluetooth/RequestPermissionActivity;)V

    goto :goto_0
.end method
