.class Lcom/flyme/deviceoriginalsettings/TetherService$2;
.super Landroid/content/BroadcastReceiver;
.source "TetherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/TetherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/TetherService;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/TetherService;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/TetherService$2;->this$0:Lcom/flyme/deviceoriginalsettings/TetherService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 272
    # getter for: Lcom/flyme/deviceoriginalsettings/TetherService;->DEBUG:Z
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/TetherService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "TetherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got provision result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_0
    const-string v1, "temp"

    .line 275
    .local v1, "provisionResponse":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 276
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/TetherService$2;->this$0:Lcom/flyme/deviceoriginalsettings/TetherService;

    # setter for: Lcom/flyme/deviceoriginalsettings/TetherService;->mInProvisionCheck:Z
    invoke-static {v2, v5}, Lcom/flyme/deviceoriginalsettings/TetherService;->access$102(Lcom/flyme/deviceoriginalsettings/TetherService;Z)Z

    .line 277
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/TetherService$2;->this$0:Lcom/flyme/deviceoriginalsettings/TetherService;

    # getter for: Lcom/flyme/deviceoriginalsettings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/TetherService;->access$300(Lcom/flyme/deviceoriginalsettings/TetherService;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/TetherService$2;->this$0:Lcom/flyme/deviceoriginalsettings/TetherService;

    # getter for: Lcom/flyme/deviceoriginalsettings/TetherService;->mCurrentTypeIndex:I
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/TetherService;->access$200(Lcom/flyme/deviceoriginalsettings/TetherService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 278
    .local v0, "checkType":I
    const-string v2, "EntitlementResult"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 279
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/TetherService$2;->this$0:Lcom/flyme/deviceoriginalsettings/TetherService;

    # getter for: Lcom/flyme/deviceoriginalsettings/TetherService;->mEnableWifiAfterCheck:Z
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/TetherService;->access$400(Lcom/flyme/deviceoriginalsettings/TetherService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/TetherService$2;->this$0:Lcom/flyme/deviceoriginalsettings/TetherService;

    # invokes: Lcom/flyme/deviceoriginalsettings/TetherService;->enableWifiTetheringIfNeeded()V
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/TetherService;->access$500(Lcom/flyme/deviceoriginalsettings/TetherService;)V

    .line 281
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/TetherService$2;->this$0:Lcom/flyme/deviceoriginalsettings/TetherService;

    # setter for: Lcom/flyme/deviceoriginalsettings/TetherService;->mEnableWifiAfterCheck:Z
    invoke-static {v2, v5}, Lcom/flyme/deviceoriginalsettings/TetherService;->access$402(Lcom/flyme/deviceoriginalsettings/TetherService;Z)Z

    .line 296
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/TetherService$2;->this$0:Lcom/flyme/deviceoriginalsettings/TetherService;

    # ++operator for: Lcom/flyme/deviceoriginalsettings/TetherService;->mCurrentTypeIndex:I
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/TetherService;->access$204(Lcom/flyme/deviceoriginalsettings/TetherService;)I

    move-result v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/TetherService$2;->this$0:Lcom/flyme/deviceoriginalsettings/TetherService;

    # getter for: Lcom/flyme/deviceoriginalsettings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/TetherService;->access$300(Lcom/flyme/deviceoriginalsettings/TetherService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 298
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/TetherService$2;->this$0:Lcom/flyme/deviceoriginalsettings/TetherService;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/TetherService;->stopSelf()V

    .line 304
    .end local v0    # "checkType":I
    :cond_2
    :goto_1
    return-void

    .line 284
    .restart local v0    # "checkType":I
    :cond_3
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 286
    :pswitch_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/TetherService$2;->this$0:Lcom/flyme/deviceoriginalsettings/TetherService;

    # invokes: Lcom/flyme/deviceoriginalsettings/TetherService;->disableWifiTethering()V
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/TetherService;->access$600(Lcom/flyme/deviceoriginalsettings/TetherService;)V

    goto :goto_0

    .line 289
    :pswitch_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/TetherService$2;->this$0:Lcom/flyme/deviceoriginalsettings/TetherService;

    # invokes: Lcom/flyme/deviceoriginalsettings/TetherService;->disableBtTethering()V
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/TetherService;->access$700(Lcom/flyme/deviceoriginalsettings/TetherService;)V

    goto :goto_0

    .line 292
    :pswitch_2
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/TetherService$2;->this$0:Lcom/flyme/deviceoriginalsettings/TetherService;

    # invokes: Lcom/flyme/deviceoriginalsettings/TetherService;->disableUsbTethering()V
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/TetherService;->access$800(Lcom/flyme/deviceoriginalsettings/TetherService;)V

    goto :goto_0

    .line 301
    :cond_4
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/TetherService$2;->this$0:Lcom/flyme/deviceoriginalsettings/TetherService;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/TetherService$2;->this$0:Lcom/flyme/deviceoriginalsettings/TetherService;

    # getter for: Lcom/flyme/deviceoriginalsettings/TetherService;->mCurrentTypeIndex:I
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/TetherService;->access$200(Lcom/flyme/deviceoriginalsettings/TetherService;)I

    move-result v3

    # invokes: Lcom/flyme/deviceoriginalsettings/TetherService;->startProvisioning(I)V
    invoke-static {v2, v3}, Lcom/flyme/deviceoriginalsettings/TetherService;->access$900(Lcom/flyme/deviceoriginalsettings/TetherService;I)V

    goto :goto_1

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
