.class Lcom/alipay/android/fingerprint/FPCFingerprintManager$2;
.super Lcom/fingerprints/service/IFingerprintClient$Stub;
.source "FPCFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/fingerprint/FPCFingerprintManager;-><init>(Landroid/os/IBinder;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;


# direct methods
.method constructor <init>(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$2;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    invoke-direct {p0}, Lcom/fingerprints/service/IFingerprintClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBundleMessage(IIILandroid/os/Bundle;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arr"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 612
    iget-object v1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$2;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEventhHandler:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;
    invoke-static {v1}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$600(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 613
    .local v0, "mMessage":Landroid/os/Message;
    invoke-virtual {v0, p4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 614
    iget-object v1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$2;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEventhHandler:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;
    invoke-static {v1}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$600(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 615
    return-void
.end method

.method public onBundleMessage2(II[I)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "rect"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 584
    iget-object v1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$2;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEventhHandler:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;
    invoke-static {v1}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$600(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 585
    .local v0, "mMessage":Landroid/os/Message;
    packed-switch p1, :pswitch_data_0

    .line 606
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$2;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEventhHandler:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;
    invoke-static {v1}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$600(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 608
    return-void

    .line 588
    :pswitch_0
    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$700()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "lastTouch"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 589
    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$700()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 594
    :pswitch_1
    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$700()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "nextTouch"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 595
    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$700()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 600
    :pswitch_2
    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$700()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "maskList"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 601
    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$700()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "maskNumber"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 602
    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$700()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onMessage(III)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 579
    iget-object v0, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$2;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEventhHandler:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;
    invoke-static {v0}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$600(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$2;->this$0:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    # getter for: Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEventhHandler:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;
    invoke-static {v1}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->access$600(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 580
    return-void
.end method
