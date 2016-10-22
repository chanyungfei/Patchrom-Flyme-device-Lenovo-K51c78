.class Lcom/android/internal/telephony/uicc/UiccCard$2;
.super Landroid/os/Handler;
.source "UiccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 505
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 508
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 586
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1700(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 510
    :sswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->onIccSwap(Z)V
    invoke-static {v2, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->access$300(Lcom/android/internal/telephony/uicc/UiccCard;Z)V

    goto :goto_0

    .line 513
    :sswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const/4 v3, 0x1

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->onIccSwap(Z)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$300(Lcom/android/internal/telephony/uicc/UiccCard;Z)V

    goto :goto_0

    .line 522
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 523
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 525
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in SIM access with exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 527
    :cond_1
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 528
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 531
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->onCarrierPriviligesLoadedMessage()V
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->access$400(Lcom/android/internal/telephony/uicc/UiccCard;)V

    goto :goto_0

    .line 535
    :sswitch_4
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handler EVENT_CDMA_CARD_IMSI_DONE mIsSvlte="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mIsSvlte:Z
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$500(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 536
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mIsSvlte:Z
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->access$500(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->access$600(Lcom/android/internal/telephony/uicc/UiccCard;)[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 537
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->access$700(Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->access$600(Lcom/android/internal/telephony/uicc/UiccCard;)[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$700(Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v3

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->access$800(Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->access$600(Lcom/android/internal/telephony/uicc/UiccCard;)[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$800(Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v3

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    .line 541
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$600(Lcom/android/internal/telephony/uicc/UiccCard;)[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaSubscriptionAppIndex:I
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$800(Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    # setter for: Lcom/android/internal/telephony/uicc/UiccCard;->mCsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$902(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/IccRecords;)Lcom/android/internal/telephony/uicc/IccRecords;

    .line 543
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$600(Lcom/android/internal/telephony/uicc/UiccCard;)[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mGsmUmtsSubscriptionAppIndex:I
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$700(Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    # setter for: Lcom/android/internal/telephony/uicc/UiccCard;->mUsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1002(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/IccRecords;)Lcom/android/internal/telephony/uicc/IccRecords;

    .line 545
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mUsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1000(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mCsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->access$900(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 546
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mUsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1000(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mUsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1000(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaUsimImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1100(Lcom/android/internal/telephony/uicc/UiccCard;)Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mCsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->access$900(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mCsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->access$900(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaCsimImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1200(Lcom/android/internal/telephony/uicc/UiccCard;)Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 550
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mUsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1000(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaUsimImsi:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1102(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 551
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mCsimRecords:Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$900(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/internal/telephony/uicc/UiccCard;->mCdmaCsimImsi:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1202(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 552
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->broadcastCdmaCardImsiIntent()V
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1300(Lcom/android/internal/telephony/uicc/UiccCard;)V

    goto/16 :goto_0

    .line 560
    :sswitch_5
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v3, "handleMessgage (EVENT_CDMA_CARD_TYPE)"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 562
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 563
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 564
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 565
    .local v1, "resultType":[I
    if-eqz v1, :cond_0

    .line 566
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    aget v3, v1, v5

    invoke-static {v3}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->getCardTypeFromInt(I)Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    move-result-object v3

    # setter for: Lcom/android/internal/telephony/uicc/UiccCard;->mSvlteCardType:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1402(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;)Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    .line 567
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mSvlteCardType:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1400(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->isValidCardType()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 568
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1500(Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mSvlteCardType:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1400(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->getValue()I

    move-result v4

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->broadcastSvlteCardTypeChanged(II)V
    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1600(Lcom/android/internal/telephony/uicc/UiccCard;II)V

    goto/16 :goto_0

    .line 570
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid cardType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 577
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "resultType":[I
    :sswitch_6
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v3, "handleMessgage (EVENT_C2K_WP_CARD_TYPE_READY)"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 579
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccCardType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->transformCardTypeFromString(Ljava/lang/String;)Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    move-result-object v3

    # setter for: Lcom/android/internal/telephony/uicc/UiccCard;->mSvlteCardType:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1402(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;)Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    .line 580
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mSvlteCardType:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1400(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->isValidCardType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 581
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mPhoneId:I
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1500(Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mSvlteCardType:Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1400(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/IccCardType$SvlteCardType;->getValue()I

    move-result v4

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->broadcastSvlteCardTypeChanged(II)V
    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1600(Lcom/android/internal/telephony/uicc/UiccCard;II)V

    goto/16 :goto_0

    .line 508
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0xe -> :sswitch_1
        0xf -> :sswitch_2
        0x10 -> :sswitch_2
        0x11 -> :sswitch_2
        0x12 -> :sswitch_2
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_6
    .end sparse-switch
.end method
