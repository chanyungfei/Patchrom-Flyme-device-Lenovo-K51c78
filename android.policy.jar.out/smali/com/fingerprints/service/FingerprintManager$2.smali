.class Lcom/fingerprints/service/FingerprintManager$2;
.super Lcom/fingerprints/service/IFingerprintClient$Stub;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fingerprints/service/FingerprintManager;-><init>(Landroid/os/IBinder;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fingerprints/service/FingerprintManager;


# direct methods
.method constructor <init>(Lcom/fingerprints/service/FingerprintManager;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager$2;->this$0:Lcom/fingerprints/service/FingerprintManager;

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
    .line 608
    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager$2;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEventhHandler:Lcom/fingerprints/service/FingerprintManager$EventHandler;
    invoke-static {v1}, Lcom/fingerprints/service/FingerprintManager;->access$600(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EventHandler;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/fingerprints/service/FingerprintManager$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 609
    .local v0, "mMessage":Landroid/os/Message;
    invoke-virtual {v0, p4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 610
    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager$2;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEventhHandler:Lcom/fingerprints/service/FingerprintManager$EventHandler;
    invoke-static {v1}, Lcom/fingerprints/service/FingerprintManager;->access$600(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fingerprints/service/FingerprintManager$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 611
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
    .line 580
    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager$2;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEventhHandler:Lcom/fingerprints/service/FingerprintManager$EventHandler;
    invoke-static {v1}, Lcom/fingerprints/service/FingerprintManager;->access$600(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EventHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/fingerprints/service/FingerprintManager$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 581
    .local v0, "mMessage":Landroid/os/Message;
    packed-switch p1, :pswitch_data_0

    .line 602
    :goto_0
    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager$2;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEventhHandler:Lcom/fingerprints/service/FingerprintManager$EventHandler;
    invoke-static {v1}, Lcom/fingerprints/service/FingerprintManager;->access$600(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fingerprints/service/FingerprintManager$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 604
    return-void

    .line 584
    :pswitch_0
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$700()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "lastTouch"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 585
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$700()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 590
    :pswitch_1
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$700()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "nextTouch"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 591
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$700()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 596
    :pswitch_2
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$700()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "maskList"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 597
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$700()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "maskNumber"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 598
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$700()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    .line 581
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
    .line 575
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$2;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEventhHandler:Lcom/fingerprints/service/FingerprintManager$EventHandler;
    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$600(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/fingerprints/service/FingerprintManager$2;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEventhHandler:Lcom/fingerprints/service/FingerprintManager$EventHandler;
    invoke-static {v1}, Lcom/fingerprints/service/FingerprintManager;->access$600(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EventHandler;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/fingerprints/service/FingerprintManager$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fingerprints/service/FingerprintManager$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 576
    return-void
.end method
