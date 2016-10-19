.class Landroid/net/DhcpStateMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "DhcpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/DhcpStateMachine;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/DhcpStateMachine;


# direct methods
.method constructor <init>(Landroid/net/DhcpStateMachine;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Landroid/net/DhcpStateMachine$1;->this$0:Landroid/net/DhcpStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 160
    const-string v1, "DhcpStateMachine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending a DHCP"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Landroid/net/DhcpStateMachine$1;->this$0:Landroid/net/DhcpStateMachine;

    # getter for: Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z
    invoke-static {v0}, Landroid/net/DhcpStateMachine;->access$000(Landroid/net/DhcpStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "V6"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " renewal "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Landroid/net/DhcpStateMachine$1;->this$0:Landroid/net/DhcpStateMachine;

    # getter for: Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/DhcpStateMachine;->access$100(Landroid/net/DhcpStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/32 v2, 0x9c40

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 163
    iget-object v0, p0, Landroid/net/DhcpStateMachine$1;->this$0:Landroid/net/DhcpStateMachine;

    const v1, 0x30003

    invoke-virtual {v0, v1}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 164
    return-void

    .line 160
    :cond_0
    const-string v0, "V4"

    goto :goto_0
.end method
