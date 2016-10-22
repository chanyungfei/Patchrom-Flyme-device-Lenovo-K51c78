.class Lcom/lenovo/settings/LenovoWirelessSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "LenovoWirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/LenovoWirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/LenovoWirelessSettings;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/LenovoWirelessSettings;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/lenovo/settings/LenovoWirelessSettings$2;->this$0:Lcom/lenovo/settings/LenovoWirelessSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, "action":Ljava/lang/String;
    const-string v17, "apn"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 317
    .local v6, "dataApnKey":Ljava/lang/String;
    const-string v17, "android.hardware.usb.action.USB_STATE"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 318
    const-string v17, "connected"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 319
    .local v14, "usbConnected":Z
    const/16 v16, 0x0

    .line 320
    .local v16, "usbTethered":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings$2;->this$0:Lcom/lenovo/settings/LenovoWirelessSettings;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/settings/LenovoWirelessSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/settings/LenovoWirelessSettings;->access$000(Lcom/lenovo/settings/LenovoWirelessSettings;)Landroid/net/ConnectivityManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v13

    .line 321
    .local v13, "tethered":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/LenovoWirelessSettings$2;->this$0:Lcom/lenovo/settings/LenovoWirelessSettings;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/settings/LenovoWirelessSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static/range {v17 .. v17}, Lcom/lenovo/settings/LenovoWirelessSettings;->access$000(Lcom/lenovo/settings/LenovoWirelessSettings;)Landroid/net/ConnectivityManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v15

    .line 322
    .local v15, "usbRegexs":[Ljava/lang/String;
    move-object v4, v13

    .local v4, "arr$":[Ljava/lang/String;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    move v8, v7

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v12, v4, v8

    .line 323
    .local v12, "s":Ljava/lang/String;
    move-object v5, v15

    .local v5, "arr$":[Ljava/lang/String;
    array-length v10, v5

    .local v10, "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    :goto_1
    if-ge v7, v10, :cond_1

    aget-object v11, v5, v7

    .line 324
    .local v11, "regex":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 325
    const/16 v16, 0x1

    .line 323
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 322
    .end local v11    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_0

    .line 329
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "len$":I
    .end local v12    # "s":Ljava/lang/String;
    :cond_2
    const-string v17, "WirelessSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onReceive: ACTION_USB_STATE usbConnected:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " usbTethered:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .end local v8    # "i$":I
    .end local v13    # "tethered":[Ljava/lang/String;
    .end local v14    # "usbConnected":Z
    .end local v15    # "usbRegexs":[Ljava/lang/String;
    .end local v16    # "usbTethered":Z
    :cond_3
    return-void
.end method
