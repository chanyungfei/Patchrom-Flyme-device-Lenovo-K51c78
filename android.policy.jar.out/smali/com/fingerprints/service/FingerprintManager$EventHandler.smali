.class Lcom/fingerprints/service/FingerprintManager$EventHandler;
.super Landroid/os/Handler;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingerprints/service/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fingerprints/service/FingerprintManager;


# direct methods
.method public constructor <init>(Lcom/fingerprints/service/FingerprintManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    .line 347
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 348
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 353
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 451
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 355
    :pswitch_1
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$000(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 356
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$000(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/fingerprints/service/FingerprintManager$CaptureCallback;->onWaitingForInput()V

    goto :goto_0

    .line 359
    :pswitch_2
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$000(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 360
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$000(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/fingerprints/service/FingerprintManager$CaptureCallback;->onInput()V

    goto :goto_0

    .line 363
    :pswitch_3
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$000(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 364
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$000(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/fingerprints/service/FingerprintManager$CaptureCallback;->onCaptureCompleted()V

    goto :goto_0

    .line 367
    :pswitch_4
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$000(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 368
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$000(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/fingerprints/service/FingerprintManager$CaptureCallback;->onCaptureFailed(I)V

    goto :goto_0

    .line 371
    :pswitch_5
    iget-object v3, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v3}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 372
    iget-object v3, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v3}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v2, :cond_1

    :goto_1
    invoke-interface {v3, v4, v2}, Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;->onIdentified(IZ)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 375
    :pswitch_6
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 376
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/fingerprints/service/FingerprintManager$EnrolCallback;->onEnrolled(I)V

    goto :goto_0

    .line 379
    :pswitch_7
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 383
    :pswitch_8
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 384
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # invokes: Lcom/fingerprints/service/FingerprintManager;->PackGuidedData()V
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$300(Lcom/fingerprints/service/FingerprintManager;)V

    goto/16 :goto_0

    .line 388
    :pswitch_9
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 389
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 390
    .local v1, "tmpBundle":Landroid/os/Bundle;
    const-string v2, "lastTouch"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 391
    .local v0, "tmpArray":[I
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$400()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "lastTouch"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 396
    .end local v0    # "tmpArray":[I
    .end local v1    # "tmpBundle":Landroid/os/Bundle;
    :pswitch_a
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 397
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 398
    .restart local v1    # "tmpBundle":Landroid/os/Bundle;
    const-string v2, "nextTouch"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 399
    .restart local v0    # "tmpArray":[I
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$400()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "nextTouch"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 404
    .end local v0    # "tmpArray":[I
    .end local v1    # "tmpBundle":Landroid/os/Bundle;
    :pswitch_b
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 405
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 406
    .restart local v1    # "tmpBundle":Landroid/os/Bundle;
    const-string v2, "maskList"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 407
    .restart local v0    # "tmpArray":[I
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$400()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "maskList"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 408
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$400()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "maskNumber"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 413
    .end local v0    # "tmpArray":[I
    .end local v1    # "tmpBundle":Landroid/os/Bundle;
    :pswitch_c
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 416
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$400()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "acceptance"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 417
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$400()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "reject_reason"

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 421
    :pswitch_d
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 423
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$400()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "stitched"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 427
    :pswitch_e
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 429
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$400()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "immobile"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 433
    :pswitch_f
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 434
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$400()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "next_direction"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 438
    :pswitch_10
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 439
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$400()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "progress"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 443
    :pswitch_11
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 444
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$100(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;->onNoMatch()V

    goto/16 :goto_0

    .line 447
    :pswitch_12
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 448
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$200(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/fingerprints/service/FingerprintManager$EnrolCallback;->onEnrollmentFailed()V

    goto/16 :goto_0

    .line 353
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_d
        :pswitch_4
    .end packed-switch
.end method
