.class Lcom/gsma/services/nfc/NfcController$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsma/services/nfc/NfcController;->registerEnableNfcEvent(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/nfc/NfcController;


# direct methods
.method constructor <init>(Lcom/gsma/services/nfc/NfcController;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/gsma/services/nfc/NfcController$1;->this$0:Lcom/gsma/services/nfc/NfcController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 385
    iget-object v3, p0, Lcom/gsma/services/nfc/NfcController$1;->this$0:Lcom/gsma/services/nfc/NfcController;

    # getter for: Lcom/gsma/services/nfc/NfcController;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/gsma/services/nfc/NfcController;->access$000()Landroid/content/Context;

    move-result-object v4

    # invokes: Lcom/gsma/services/nfc/NfcController;->unregisterEnableNfcEvent(Landroid/content/Context;)V
    invoke-static {v3, v4}, Lcom/gsma/services/nfc/NfcController;->access$100(Lcom/gsma/services/nfc/NfcController;Landroid/content/Context;)V

    .line 387
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "action":Ljava/lang/String;
    const-string v3, "NfcController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNfcReceiver onReceive(), action ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v3, "com.gsma.services.nfc.REQUEST_ENABLE_NFC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 390
    const-string v3, "com.mediatek.nfc.gsmahandset.enable"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "enable":Ljava/lang/String;
    const-string v3, "YES"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 392
    const-string v3, "NfcController"

    const-string v4, "GSMA : NFC enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v3, "com.mediatek.nfc.gsmahandset.packagename"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 394
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/gsma/services/nfc/NfcController$1;->this$0:Lcom/gsma/services/nfc/NfcController;

    # getter for: Lcom/gsma/services/nfc/NfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v3}, Lcom/gsma/services/nfc/NfcController;->access$200(Lcom/gsma/services/nfc/NfcController;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/gsma/services/nfc/NfcController$1;->this$0:Lcom/gsma/services/nfc/NfcController;

    # getter for: Lcom/gsma/services/nfc/NfcController;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/gsma/services/nfc/NfcController;->access$300(Lcom/gsma/services/nfc/NfcController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 395
    iget-object v3, p0, Lcom/gsma/services/nfc/NfcController$1;->this$0:Lcom/gsma/services/nfc/NfcController;

    # getter for: Lcom/gsma/services/nfc/NfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v3}, Lcom/gsma/services/nfc/NfcController;->access$200(Lcom/gsma/services/nfc/NfcController;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 396
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "NFC can\'t be enabled"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 398
    :cond_0
    # getter for: Lcom/gsma/services/nfc/NfcController;->mCallback:Lcom/gsma/services/nfc/NfcController$Callbacks;
    invoke-static {}, Lcom/gsma/services/nfc/NfcController;->access$400()Lcom/gsma/services/nfc/NfcController$Callbacks;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/gsma/services/nfc/NfcController$Callbacks;->onEnableNfcController(Z)V

    .line 405
    .end local v1    # "enable":Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 402
    .restart local v1    # "enable":Ljava/lang/String;
    :cond_2
    # getter for: Lcom/gsma/services/nfc/NfcController;->mCallback:Lcom/gsma/services/nfc/NfcController$Callbacks;
    invoke-static {}, Lcom/gsma/services/nfc/NfcController;->access$400()Lcom/gsma/services/nfc/NfcController$Callbacks;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/gsma/services/nfc/NfcController$Callbacks;->onEnableNfcController(Z)V

    goto :goto_0
.end method
