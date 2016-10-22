.class Lcom/android/server/net/NetworkPolicyManagerService$14;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1045
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1046
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1047
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1048
    .local v1, "simState":Ljava/lang/String;
    const-string v2, "LOADED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1051
    :cond_0
    const-string v2, "NetworkPolicy"

    const-string v3, "receive ACTION_SIM_STATE_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 1054
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1055
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyLocked()V
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 1056
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$200(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 1057
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 1058
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 1059
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$14;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 1060
    monitor-exit v3

    .line 1063
    .end local v1    # "simState":Ljava/lang/String;
    :cond_1
    return-void

    .line 1060
    .restart local v1    # "simState":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
