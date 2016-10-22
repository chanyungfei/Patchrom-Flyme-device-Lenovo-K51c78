.class Lcom/android/server/net/NetworkHttpMonitor$MyHandler;
.super Landroid/os/Handler;
.source "NetworkHttpMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkHttpMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkHttpMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkHttpMonitor;Landroid/os/Looper;)V
    .locals 0
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/server/net/NetworkHttpMonitor$MyHandler;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    .line 125
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 126
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 130
    const-string v0, "NetworkHttpMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 134
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/net/NetworkHttpMonitor$MyHandler;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    # invokes: Lcom/android/server/net/NetworkHttpMonitor;->enableFirewallPolicy()V
    invoke-static {v0}, Lcom/android/server/net/NetworkHttpMonitor;->access$000(Lcom/android/server/net/NetworkHttpMonitor;)V

    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/net/NetworkHttpMonitor$MyHandler;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    # invokes: Lcom/android/server/net/NetworkHttpMonitor;->disableFirewall()V
    invoke-static {v0}, Lcom/android/server/net/NetworkHttpMonitor;->access$100(Lcom/android/server/net/NetworkHttpMonitor;)V

    goto :goto_0

    .line 140
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/net/NetworkHttpMonitor$MyHandler;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    # invokes: Lcom/android/server/net/NetworkHttpMonitor;->sendKeepAlive()V
    invoke-static {v0}, Lcom/android/server/net/NetworkHttpMonitor;->access$200(Lcom/android/server/net/NetworkHttpMonitor;)V

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
