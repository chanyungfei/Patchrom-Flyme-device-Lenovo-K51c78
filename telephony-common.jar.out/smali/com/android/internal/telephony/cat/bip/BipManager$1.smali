.class Lcom/android/internal/telephony/cat/bip/BipManager$1;
.super Landroid/os/Handler;
.source "BipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/bip/BipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/bip/BipManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/bip/BipManager;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "timerMsg":Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 149
    :pswitch_0
    const-string v1, "[BIP]"

    const-string v2, "handleMessage MSG_ID_BIP_CONN_MGR_TIMEOUT"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # setter for: Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$002(Lcom/android/internal/telephony/cat/bip/BipManager;Z)Z

    .line 151
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # invokes: Lcom/android/internal/telephony/cat/bip/BipManager;->disconnect()V
    invoke-static {v1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$100(Lcom/android/internal/telephony/cat/bip/BipManager;)V

    goto :goto_0

    .line 154
    :pswitch_1
    const-string v1, "[BIP]"

    const-string v2, "handleMessage MSG_ID_BIP_CONN_DELAY_TIMEOUT"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/bip/BipManager;->acquireNetwork()V

    goto :goto_0

    .line 158
    :pswitch_2
    const-string v1, "[BIP]"

    const-string v2, "handleMessage MSG_ID_BIP_DISCONNECT_TIMEOUT"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mCloseLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$200(Lcom/android/internal/telephony/cat/bip/BipManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mIsCloseInProgress:Z
    invoke-static {v1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$300(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v1

    if-ne v3, v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mIsCloseInProgress:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$302(Lcom/android/internal/telephony/cat/bip/BipManager;Z)Z

    .line 162
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$500(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x2b

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/telephony/cat/bip/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v6}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$400(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$500(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 166
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
