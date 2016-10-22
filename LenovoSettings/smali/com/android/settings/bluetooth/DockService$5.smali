.class Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$5;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;)V
    .locals 0

    .prologue
    .line 610
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$5;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v0, 0x1

    .line 612
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 613
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$5;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->access$400(Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 614
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$5;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$5;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->access$400(Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothPreferences;->hasDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$5;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$5;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->access$400(Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothPreferences;->saveDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$5;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$5;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->access$400(Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$5;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mStartIdAssociatedWithDialog:I
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->access$600(Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;)I

    move-result v2

    # invokes: Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->access$700(Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 631
    :cond_1
    :goto_0
    return-void

    .line 625
    :cond_2
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$5;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mAudioMediaCheckbox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->access$800(Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;)Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 626
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$5;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dock_audio_media_enabled"

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService$5;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->mAudioMediaCheckbox:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;->access$800(Lcom/flyme/deviceoriginalsettings/bluetooth/DockService;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
