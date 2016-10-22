.class Lcom/flyme/deviceoriginalsettings/bluetooth/DevicePickerFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "DevicePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/bluetooth/DevicePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DevicePickerFragment;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/bluetooth/DevicePickerFragment;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DevicePickerFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DevicePickerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 62
    .local v0, "state":I
    const-string v1, "DevicePickerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BluetoothAdapter state changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DevicePickerFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DevicePickerFragment;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 66
    :cond_0
    return-void
.end method
