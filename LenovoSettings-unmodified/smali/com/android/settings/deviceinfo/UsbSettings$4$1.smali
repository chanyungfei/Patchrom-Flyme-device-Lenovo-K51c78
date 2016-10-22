.class Lcom/android/settings/deviceinfo/UsbSettings$4$1;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/UsbSettings$4;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/deviceinfo/UsbSettings$4;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbSettings$4;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$4$1;->this$1:Lcom/android/settings/deviceinfo/UsbSettings$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 400
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$4$1;->this$1:Lcom/android/settings/deviceinfo/UsbSettings$4;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/UsbSettings$4;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usb_auto_popup"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 401
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings$4$1;->this$1:Lcom/android/settings/deviceinfo/UsbSettings$4;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/UsbSettings$4;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mEnablePop:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1100(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 402
    return-void
.end method
