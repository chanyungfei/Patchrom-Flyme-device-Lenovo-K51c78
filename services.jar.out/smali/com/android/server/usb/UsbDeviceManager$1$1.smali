.class Lcom/android/server/usb/UsbDeviceManager$1$1;
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

.field final synthetic val$usbifevent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$1$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$1;

    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$1$1;->val$usbifevent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 275
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$1$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$1;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$300(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 276
    .local v0, "usbif_alertbox":Landroid/app/AlertDialog;
    const-string v1, "USB event"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$1$1;->val$usbifevent:Ljava/lang/String;

    const-string v2, "NO_RESP_FOR_SRP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    const-string v1, "Device No Response !"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 305
    :goto_0
    const-string v1, "Ok"

    new-instance v2, Lcom/android/server/usb/UsbDeviceManager$1$1$1;

    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbDeviceManager$1$1$1;-><init>(Lcom/android/server/usb/UsbDeviceManager$1$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 310
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 311
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 313
    return-void

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$1$1;->val$usbifevent:Ljava/lang/String;

    const-string v2, "NO_RESP_FOR_HNP_ENABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    const-string v1, "Device No Response !"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$1$1;->val$usbifevent:Ljava/lang/String;

    const-string v2, "HUB_NOT_SUPPORTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 285
    const-string v1, "Unsupported HUB Device."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 287
    :cond_2
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$1$1;->val$usbifevent:Ljava/lang/String;

    const-string v2, "MAX_HUB_TIER_EXCEED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 288
    const-string v1, "Max hub tier exceeded."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 290
    :cond_3
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$1$1;->val$usbifevent:Ljava/lang/String;

    const-string v2, "DEV_NOT_SUPPORTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 291
    const-string v1, "Unsupported Device."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 293
    :cond_4
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$1$1;->val$usbifevent:Ljava/lang/String;

    const-string v2, "HNP_FAILED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 294
    const-string v1, "Device No Response for HNP!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 296
    :cond_5
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$1$1;->val$usbifevent:Ljava/lang/String;

    const-string v2, "DEV_CONN_TMOUT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 297
    const-string v1, "Device No Response !"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 299
    :cond_6
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$1$1;->val$usbifevent:Ljava/lang/String;

    const-string v2, "DEV_OVER_CURRENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 300
    const-string v1, "USB Device exceed maximum current !"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 303
    :cond_7
    const-string v1, "USBIF: unknown U3D event"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
