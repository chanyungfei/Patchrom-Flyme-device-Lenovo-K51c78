.class final Lcom/alipay/android/fingerprint/LenovoFingerprintManager$WorkThreadHandler;
.super Landroid/os/Handler;
.source "LenovoFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/fingerprint/LenovoFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;


# direct methods
.method public constructor <init>(Lcom/alipay/android/fingerprint/LenovoFingerprintManager;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager$WorkThreadHandler;->this$0:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    .line 603
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 604
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 614
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 634
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string v1, "un-handled message."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 617
    :pswitch_0
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string v1, "treat loop quit meessage"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager$WorkThreadHandler;->this$0:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->access$000(Lcom/alipay/android/fingerprint/LenovoFingerprintManager;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager$WorkThreadHandler;->this$0:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->access$000(Lcom/alipay/android/fingerprint/LenovoFingerprintManager;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager$WorkThreadHandler;->this$0:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->access$000(Lcom/alipay/android/fingerprint/LenovoFingerprintManager;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 624
    :pswitch_1
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string v1, "timeout handle"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager$WorkThreadHandler;->this$0:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mIdentifyListener:Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;
    invoke-static {v0}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->access$100(Lcom/alipay/android/fingerprint/LenovoFingerprintManager;)Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager$WorkThreadHandler;->this$0:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mIdentifyListener:Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;
    invoke-static {v0}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->access$100(Lcom/alipay/android/fingerprint/LenovoFingerprintManager;)Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;

    move-result-object v0

    const/16 v1, 0x71

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager$WorkThreadHandler;->this$0:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mUserData:I
    invoke-static {v3}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->access$200(Lcom/alipay/android/fingerprint/LenovoFingerprintManager;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;->onResult(III)V

    .line 628
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager$WorkThreadHandler;->this$0:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    invoke-virtual {v0}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->cancel()I

    goto :goto_0

    .line 614
    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
