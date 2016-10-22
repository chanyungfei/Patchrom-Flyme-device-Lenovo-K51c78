.class Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;
.super Landroid/content/BroadcastReceiver;
.source "DataSubSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "action":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive: action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 78
    const-string v5, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 79
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z
    invoke-static {v5, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$102(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 80
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->onSubInfoReady(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$200(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 82
    const-string v5, "ss"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "simStatus":Ljava/lang/String;
    const-string v5, "slot"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 84
    .local v4, "slotId":I
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "slotId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " simStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mIsNeedWaitImsi: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z
    invoke-static {v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$100(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mIsNeedWaitUnlock: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitUnlock:Z
    invoke-static {v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$300(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 86
    const-string v5, "IMSI"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 87
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z
    invoke-static {v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$100(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v5

    if-ne v5, v9, :cond_2

    .line 88
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string v6, "get imsi and need to check op01 again"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 89
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z
    invoke-static {v5, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$102(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 90
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp01CapSwitch()Z
    invoke-static {v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$400(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 91
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z
    invoke-static {v5, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$102(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    goto :goto_0

    .line 93
    :cond_2
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitUnlock:Z
    invoke-static {v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$300(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v5

    if-ne v5, v9, :cond_0

    .line 94
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string v6, "get imsi because unlock"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 96
    const-string v5, "phoneEx"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 99
    .local v2, "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :try_start_0
    invoke-interface {v2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isCapabilitySwitching()Z

    move-result v5

    if-nez v5, :cond_0

    .line 102
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const/4 v6, 0x0

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitUnlock:Z
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$302(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 103
    const-string v5, "OP01"

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$500()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 104
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$600(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v6

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp01(Landroid/content/Intent;)V
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 105
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    const-string v5, "OP02"

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$500()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 106
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$600(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v6

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp02(Landroid/content/Intent;)V
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$800(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 107
    :cond_4
    const-string v5, "OM"

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$500()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 108
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$600(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v6

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOm(Landroid/content/Intent;)V
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$900(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 109
    :cond_5
    const-string v5, "OP09"

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$500()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 110
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$600(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v6

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp09(Landroid/content/Intent;)V
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 118
    .end local v2    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    .end local v3    # "simStatus":Ljava/lang/String;
    .end local v4    # "slotId":I
    :cond_6
    const-string v5, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 120
    :cond_7
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitUnlock:Z
    invoke-static {v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$300(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z

    move-result v5

    if-ne v5, v9, :cond_0

    .line 121
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # setter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitUnlock:Z
    invoke-static {v5, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$302(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z

    .line 122
    const-string v5, "OP01"

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$500()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 123
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$600(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v6

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp01(Landroid/content/Intent;)V
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$700(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 124
    :cond_8
    const-string v5, "OP02"

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$500()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 125
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$600(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v6

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp02(Landroid/content/Intent;)V
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$800(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 126
    :cond_9
    const-string v5, "OM"

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$500()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 127
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$600(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v6

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOm(Landroid/content/Intent;)V
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$900(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 128
    :cond_a
    const-string v5, "OP09"

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$500()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 129
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$600(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;

    move-result-object v6

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp09(Landroid/content/Intent;)V
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 132
    :cond_b
    const-string v5, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_DONE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 133
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    const-string v6, "ACTION_SET_RADIO_TECHNOLOGY_DONE"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V

    .line 134
    # getter for: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$500()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 135
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForSvlte(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->access$1100(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
