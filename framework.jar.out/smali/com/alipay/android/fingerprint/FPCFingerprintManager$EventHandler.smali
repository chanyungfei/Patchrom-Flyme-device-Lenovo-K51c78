.class Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;
.super Landroid/os/Handler;
.source "FPCFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/fingerprint/FPCFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;


# direct methods
.method public constructor <init>(Lcom/alipay/android/fingerprint/FPCFingerprintManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    .line 350
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 351
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 355
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 449
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 357
    :pswitch_1
    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mCaptureCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$000(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 358
    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mCaptureCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$000(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;->onWaitingForInput()V

    goto :goto_0

    .line 361
    :pswitch_2
    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mCaptureCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$000(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mCaptureCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$000(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;->onInput()V

    goto :goto_0

    .line 365
    :pswitch_3
    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mCaptureCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$000(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 366
    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mCaptureCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$000(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;->onCaptureCompleted()V

    goto :goto_0

    .line 369
    :pswitch_4
    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mCaptureCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$000(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 370
    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mCaptureCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$000(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;->onCaptureFailed(I)V

    goto :goto_0

    .line 373
    :pswitch_5
    iget-object v3, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mIdentifyCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$IdentifyCallback;
    invoke-static {v3}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$100(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$IdentifyCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 374
    iget-object v3, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mIdentifyCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$IdentifyCallback;
    invoke-static {v3}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$100(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$IdentifyCallback;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v2, :cond_1

    :goto_1
    invoke-interface {v3, v4, v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager$IdentifyCallback;->onIdentified(IZ)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 377
    :pswitch_6
    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEnrolCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$200(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 378
    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEnrolCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$200(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;->onEnrolled(I)V

    goto :goto_0

    .line 381
    :pswitch_7
    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEnrolCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$200(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 385
    :pswitch_8
    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEnrolCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$200(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 386
    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # invokes: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->PackGuidedData()V
    invoke-static {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$300(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)V

    goto/16 :goto_0

    .line 390
    :pswitch_9
    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEnrolCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$200(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 391
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 392
    .local v1, "tmpBundle":Landroid/os/Bundle;
    const-string v2, "lastTouch"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 393
    .local v0, "tmpArray":[I
    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$400()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "lastTouch"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 398
    .end local v0    # "tmpArray":[I
    .end local v1    # "tmpBundle":Landroid/os/Bundle;
    :pswitch_a
    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEnrolCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$200(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 399
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 400
    .restart local v1    # "tmpBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "nextTouch"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 401
    .restart local v0    # "tmpArray":[I
    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$400()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "nextTouch"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 406
    .end local v0    # "tmpArray":[I
    .end local v1    # "tmpBundle":Landroid/os/Bundle;
    :pswitch_b
    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEnrolCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$200(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 407
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 408
    .restart local v1    # "tmpBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "maskList"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 409
    .restart local v0    # "tmpArray":[I
    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$400()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "maskList"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 410
    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$400()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "maskNumber"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 415
    .end local v0    # "tmpArray":[I
    .end local v1    # "tmpBundle":Landroid/os/Bundle;
    :pswitch_c
    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEnrolCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$200(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 416
    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$400()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "acceptance"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 417
    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$400()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "reject_reason"

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 421
    :pswitch_d
    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEnrolCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$200(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 422
    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$400()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "stitched"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 426
    :pswitch_e
    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEnrolCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$200(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 427
    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$400()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "immobile"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 431
    :pswitch_f
    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEnrolCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$200(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 432
    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$400()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "next_direction"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 436
    :pswitch_10
    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEnrolCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$200(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 437
    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$400()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "progress"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 441
    :pswitch_11
    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mIdentifyCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$IdentifyCallback;
    invoke-static {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$100(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$IdentifyCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 442
    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mIdentifyCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$IdentifyCallback;
    invoke-static {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$100(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$IdentifyCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager$IdentifyCallback;->onNoMatch()V

    goto/16 :goto_0

    .line 445
    :pswitch_12
    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEnrolCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$200(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 446
    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEnrolCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$200(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;->onEnrollmentFailed()V

    goto/16 :goto_0

    .line 355
    nop

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
