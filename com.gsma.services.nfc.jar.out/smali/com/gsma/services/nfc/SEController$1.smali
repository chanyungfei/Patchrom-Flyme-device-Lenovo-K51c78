.class final Lcom/gsma/services/nfc/SEController$1;
.super Ljava/lang/Object;
.source "SEController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/nfc/SEController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 124
    const-string v0, "SEController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "excute getDefaultController(cb) callback mCallback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/gsma/services/nfc/SEController;->mCallback:Lcom/gsma/services/nfc/SEController$Callbacks;
    invoke-static {}, Lcom/gsma/services/nfc/SEController;->access$000()Lcom/gsma/services/nfc/SEController$Callbacks;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    # getter for: Lcom/gsma/services/nfc/SEController;->mCallback:Lcom/gsma/services/nfc/SEController$Callbacks;
    invoke-static {}, Lcom/gsma/services/nfc/SEController;->access$000()Lcom/gsma/services/nfc/SEController$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    # getter for: Lcom/gsma/services/nfc/SEController;->mCallback:Lcom/gsma/services/nfc/SEController$Callbacks;
    invoke-static {}, Lcom/gsma/services/nfc/SEController;->access$000()Lcom/gsma/services/nfc/SEController$Callbacks;

    move-result-object v0

    invoke-static {}, Lcom/gsma/services/nfc/SEController;->getInstance()Lcom/gsma/services/nfc/SEController;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/gsma/services/nfc/SEController$Callbacks;->onGetDefaultController(Lcom/gsma/services/nfc/SEController;)V

    .line 128
    :cond_0
    return-void
.end method
