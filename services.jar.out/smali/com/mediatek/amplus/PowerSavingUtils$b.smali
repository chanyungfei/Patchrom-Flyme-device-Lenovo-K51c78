.class Lcom/mediatek/amplus/PowerSavingUtils$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/amplus/PowerSavingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic i:Lcom/mediatek/amplus/PowerSavingUtils;


# direct methods
.method public constructor <init>(Lcom/mediatek/amplus/PowerSavingUtils;)V
    .locals 2

    .prologue
    .line 254
    iput-object p1, p0, Lcom/mediatek/amplus/PowerSavingUtils$b;->i:Lcom/mediatek/amplus/PowerSavingUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 255
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 256
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    invoke-static {p1}, Lcom/mediatek/amplus/PowerSavingUtils;->a(Lcom/mediatek/amplus/PowerSavingUtils;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 260
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 264
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils$b;->i:Lcom/mediatek/amplus/PowerSavingUtils;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/amplus/PowerSavingUtils;->a(Lcom/mediatek/amplus/PowerSavingUtils;Z)Z

    .line 266
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils$b;->i:Lcom/mediatek/amplus/PowerSavingUtils;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/mediatek/amplus/PowerSavingUtils;->a(Lcom/mediatek/amplus/PowerSavingUtils;J)J

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils$b;->i:Lcom/mediatek/amplus/PowerSavingUtils;

    invoke-static {v0, v2}, Lcom/mediatek/amplus/PowerSavingUtils;->a(Lcom/mediatek/amplus/PowerSavingUtils;Z)Z

    .line 269
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils$b;->i:Lcom/mediatek/amplus/PowerSavingUtils;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/mediatek/amplus/PowerSavingUtils;->a(Lcom/mediatek/amplus/PowerSavingUtils;J)J

    goto :goto_0

    .line 270
    :cond_2
    const-string v0, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils$b;->i:Lcom/mediatek/amplus/PowerSavingUtils;

    const-string v1, "connected"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/amplus/PowerSavingUtils;->b(Lcom/mediatek/amplus/PowerSavingUtils;Z)Z

    goto :goto_0
.end method
