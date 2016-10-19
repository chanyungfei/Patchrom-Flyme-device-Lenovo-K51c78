.class Lcom/android/server/am/GreenOptimizer$1;
.super Landroid/content/BroadcastReceiver;
.source "GreenOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/GreenOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/GreenOptimizer;


# direct methods
.method constructor <init>(Lcom/android/server/am/GreenOptimizer;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/server/am/GreenOptimizer$1;->this$0:Lcom/android/server/am/GreenOptimizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/server/am/GreenOptimizer$1;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/am/GreenOptimizer;->access$000(Lcom/android/server/am/GreenOptimizer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 264
    return-void
.end method
