.class Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserPromptedState"
.end annotation


# static fields
.field private static final ACTION_SIGN_IN_REQUESTED:Ljava/lang/String; = "android.net.netmon.sign_in_requested"


# instance fields
.field private mUserRespondedBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p2, "x1"    # Lcom/android/server/connectivity/NetworkMonitor$1;

    .prologue
    .line 723
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 733
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enter, NetworkAgentInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$2200(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$2300(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v2, 0x82002

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$2200(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 738
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v2, "android.net.netmon.sign_in_requested"

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # ++operator for: Lcom/android/server/connectivity/NetworkMonitor;->mUserPromptedToken:I
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$4604(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v3

    const v4, 0x8200a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;->mUserRespondedBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    .line 743
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$2200(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;->mUserRespondedBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->setProvNotificationVisibleIntent(ZZILandroid/app/PendingIntent;)V
    invoke-static {v0, v5, v5, v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$2500(Lcom/android/server/connectivity/NetworkMonitor;ZZILandroid/app/PendingIntent;)V

    .line 751
    return-void
.end method

.method public exit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 770
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exit, NetworkAgentInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$2200(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$2200(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->setProvNotificationVisibleIntent(ZZILandroid/app/PendingIntent;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$2500(Lcom/android/server/connectivity/NetworkMonitor;ZZILandroid/app/PendingIntent;)V

    .line 776
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$3600(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;->mUserRespondedBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 777
    iput-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;->mUserRespondedBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    .line 778
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 755
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 756
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 763
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 758
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mUserPromptedToken:I
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$4600(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 760
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$UserPromptedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$4700(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$4800(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 756
    :pswitch_data_0
    .packed-switch 0x8200a
        :pswitch_0
    .end packed-switch
.end method
