.class Lcom/android/server/usb/UsbDeviceManager$1$2;
.super Ljava/lang/Object;
.source "UsbDeviceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbDeviceManager$1;->onUEvent(Landroid/os/UEventObserver$UEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/usb/UsbDeviceManager$1;

.field final synthetic val$xhci_misc_uevent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$1$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$1;

    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$1$2;->val$xhci_misc_uevent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 320
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$1$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$1;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$300(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 321
    .local v0, "alertbox":Landroid/app/AlertDialog;
    const-string v1, "OTG Event"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$1$2;->val$xhci_misc_uevent:Ljava/lang/String;

    const-string v2, "OVER_CURRENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    const-string v1, "Warning: Over current happens! Cut the power down."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 330
    :goto_0
    const-string v1, "Ok"

    new-instance v2, Lcom/android/server/usb/UsbDeviceManager$1$2$1;

    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbDeviceManager$1$2$1;-><init>(Lcom/android/server/usb/UsbDeviceManager$1$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 335
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 336
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 337
    return-void

    .line 327
    :cond_0
    const-string v1, "Unknown XHCI event!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
