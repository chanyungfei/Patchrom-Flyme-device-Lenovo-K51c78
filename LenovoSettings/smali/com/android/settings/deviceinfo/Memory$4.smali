.class Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$4;
.super Landroid/content/BroadcastReceiver;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$4;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 423
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 425
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$4;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$4;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    # invokes: Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->getUsbState(Landroid/content/Context;)Z
    invoke-static {v5, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->access$400(Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->mIsUsbConnected:Z

    .line 426
    const-string v4, "MemorySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsUsbConnected = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$4;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    iget-boolean v6, v6, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->mIsUsbConnected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$4;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    invoke-virtual {v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 429
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$4;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->access$500(Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;)Landroid/hardware/usb/UsbManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v3

    .line 430
    .local v3, "usbFunction":Ljava/lang/String;
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$4;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->access$300(Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 431
    .local v1, "category":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$4;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    iget-boolean v4, v4, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->mIsUsbConnected:Z

    invoke-virtual {v1, v4, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->onUsbStateChanged(ZLjava/lang/String;)V

    goto :goto_0

    .line 434
    .end local v1    # "category":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 435
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$4;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    invoke-virtual {v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 447
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "usbFunction":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 438
    :cond_2
    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 439
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$4;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    # getter for: Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->access$300(Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 440
    .restart local v1    # "category":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;->onMediaScannerFinished()V

    goto :goto_2

    .line 443
    .end local v1    # "category":Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageVolumePreferenceCategory;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 444
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$4;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    invoke-virtual {v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_1
.end method
