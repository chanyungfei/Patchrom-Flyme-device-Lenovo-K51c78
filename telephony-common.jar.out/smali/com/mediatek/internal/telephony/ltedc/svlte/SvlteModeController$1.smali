.class Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;
.super Landroid/content/BroadcastReceiver;
.source "SvlteModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V
    .locals 0

    .prologue
    .line 803
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x2

    const/4 v6, 0x1

    const/4 v10, -0x1

    const/4 v7, 0x0

    .line 806
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 807
    .local v0, "action":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[SvlteModeController] onReceive, action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 808
    const-string v8, "com.mediatek.intent.action.FINISH_SWITCH_SVLTE_RAT_MODE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 809
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 810
    const-string v8, "svlteRatSwitchPriority"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-ne v11, v8, :cond_2

    move v2, v6

    .line 813
    .local v2, "needHandler":Z
    :goto_0
    const-string v8, "phone"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 815
    .local v3, "phoneId":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[SvlteModeController]  : Phone["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] Switch Finished!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 817
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v4

    .line 818
    .local v4, "slotId":I
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchingSlotId:I
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)I

    move-result v8

    if-ne v4, v8, :cond_3

    move v1, v6

    .line 819
    .local v1, "isSwitchingSlot":Z
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[SvlteModeController] isSwitchingSlot is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " needHandler is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 821
    if-eqz v2, :cond_0

    if-nez v1, :cond_4

    .line 822
    :cond_0
    const-string v6, "[SvlteModeController] no need handler this case or Error slot."

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 848
    .end local v1    # "isSwitchingSlot":Z
    .end local v2    # "needHandler":Z
    .end local v3    # "phoneId":I
    .end local v4    # "slotId":I
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v2, v7

    .line 810
    goto :goto_0

    .restart local v2    # "needHandler":Z
    .restart local v3    # "phoneId":I
    .restart local v4    # "slotId":I
    :cond_3
    move v1, v7

    .line 818
    goto :goto_1

    .line 825
    .restart local v1    # "isSwitchingSlot":Z
    :cond_4
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # setter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchingSlotId:I
    invoke-static {v8, v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$202(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;I)I

    .line 826
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v8

    if-ne v4, v8, :cond_5

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$300()[I

    move-result-object v8

    aget v8, v8, v4

    if-ne v8, v11, :cond_5

    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSvlteModeOn:Z
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 829
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->disconnectRilSocket(I)V
    invoke-static {v8, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;I)V

    .line 831
    :cond_5
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 832
    const-string v6, "[SvlteModeController] All switch task done,send ACTION_SET_RADIO_TECHNOLOGY_DONE broadcast."

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 834
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->finishSwitchMode()V
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V

    goto :goto_2

    .line 835
    :cond_6
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v6, :cond_7

    .line 836
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 837
    .local v5, "switchSlot":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SvlteModeController] First slot switch done. Now switch Slot: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 839
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 840
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->switchRadioTechnology(I)V
    invoke-static {v6, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;I)V

    goto :goto_2

    .line 842
    .end local v5    # "switchSlot":I
    :cond_7
    const-string v6, "[SvlteModeController] This should never happen."

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 845
    .end local v1    # "isSwitchingSlot":Z
    .end local v2    # "needHandler":Z
    .end local v3    # "phoneId":I
    .end local v4    # "slotId":I
    :cond_8
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setSvlteModeProperties()V
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$900(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V

    goto/16 :goto_2
.end method
