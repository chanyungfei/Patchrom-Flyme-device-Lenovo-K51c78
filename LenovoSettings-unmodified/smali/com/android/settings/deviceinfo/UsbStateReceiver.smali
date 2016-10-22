.class public Lcom/android/settings/deviceinfo/UsbStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbStateReceiver.java"


# static fields
.field private static final KEY_AUTOPOP:Ljava/lang/String; = "usb_auto_popup"

.field private static final TAG:Ljava/lang/String; = "UsbSettings"

.field private static mIsConnected:Z


# instance fields
.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/deviceinfo/UsbStateReceiver;->mIsConnected:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isEncryptMode()Z
    .locals 2

    .prologue
    .line 56
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "state":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trigger_restart_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSetupwizard(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 64
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 65
    .local v0, "config":I
    if-ne v0, v2, :cond_0

    .line 72
    .end local v0    # "config":I
    :goto_0
    return v2

    .line 68
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 72
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    const-string v4, "UsbSettings"

    const-string v5, "UsbStateReceiver -- onReceive"

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 29
    const-string v4, "UsbSettings"

    const-string v5, "UsbStateReceiver --ACTION_USB_STATE "

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v4, "connected"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 31
    .local v2, "isSwUsbConnected":Z
    sget-boolean v4, Lcom/android/settings/deviceinfo/UsbStateReceiver;->mIsConnected:Z

    if-eq v4, v2, :cond_0

    .line 32
    sput-boolean v2, Lcom/android/settings/deviceinfo/UsbStateReceiver;->mIsConnected:Z

    .line 33
    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbStateReceiver;->isEncryptMode()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbStateReceiver;->isSetupwizard(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "usb_auto_popup"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 42
    .local v3, "popup":I
    const-string v4, "UsbSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "auto popup = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/settings/deviceinfo/UsbSettings;->isUsbActivity()Z

    move-result v4

    if-nez v4, :cond_0

    .line 44
    const-string v4, "UsbSettings"

    const-string v5, "UsbStateReceiver --startActivity "

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 46
    .local v1, "activity":Landroid/content/Intent;
    const-string v4, "com.android.settings.STORAGE_USB_SETTINGS"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const v4, 0x10008000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 48
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 53
    .end local v1    # "activity":Landroid/content/Intent;
    .end local v2    # "isSwUsbConnected":Z
    .end local v3    # "popup":I
    :cond_0
    return-void
.end method
