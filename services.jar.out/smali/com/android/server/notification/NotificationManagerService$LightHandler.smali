.class Lcom/android/server/notification/NotificationManagerService$LightHandler;
.super Landroid/os/Handler;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LightHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .prologue
    .line 3432
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "x1"    # Lcom/android/server/notification/NotificationManagerService$1;

    .prologue
    .line 3432
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$LightHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const v6, -0xffff01

    const/16 v5, 0x820

    const/16 v4, 0x410

    const/4 v3, 0x1

    .line 3436
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3437
    .local v0, "currentMSG":I
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->oldLightMSG:I
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$6200(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3438
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->oldLightMSG:I
    invoke-static {v1, v0}, Lcom/android/server/notification/NotificationManagerService;->access$6202(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 3445
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->oldLightMSG:I
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$6200(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->newLightMSG:I
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$6300(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 3505
    :goto_1
    return-void

    .line 3439
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->newLightMSG:I
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$6300(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 3440
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->newLightMSG:I
    invoke-static {v1, v0}, Lcom/android/server/notification/NotificationManagerService;->access$6302(Lcom/android/server/notification/NotificationManagerService;I)I

    goto :goto_0

    .line 3442
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->newLightMSG:I
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$6300(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v2

    # setter for: Lcom/android/server/notification/NotificationManagerService;->oldLightMSG:I
    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->access$6202(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 3443
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->newLightMSG:I
    invoke-static {v1, v0}, Lcom/android/server/notification/NotificationManagerService;->access$6302(Lcom/android/server/notification/NotificationManagerService;I)I

    goto :goto_0

    .line 3448
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 3450
    :pswitch_0
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3451
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, v6, v3, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_1

    .line 3455
    :pswitch_1
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3456
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, v6, v3, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_1

    .line 3460
    :pswitch_2
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3461
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, v6, v3, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_1

    .line 3465
    :pswitch_3
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3466
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, v6, v3, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_1

    .line 3470
    :pswitch_4
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3471
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, v6, v3, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_1

    .line 3475
    :pswitch_5
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3476
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, v6, v3, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_1

    .line 3480
    :pswitch_6
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3481
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, v6, v3, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto/16 :goto_1

    .line 3485
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->LIGHT_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isCharing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3486
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3487
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, v7, v7, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto/16 :goto_1

    .line 3493
    :pswitch_8
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->LIGHT_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isCharingFULL"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3494
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3495
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, v6, v3, v7, v7}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto/16 :goto_1

    .line 3499
    :pswitch_9
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->setFlagToBSP(I)V

    .line 3500
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, v7, v7, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 3502
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$LightHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->LIGHT_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Led-Light:   Not Set Led !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3448
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
