.class Lcom/android/server/am/GreenOptimizer$7;
.super Landroid/app/IProcessObserver$Stub;
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
    .line 323
    iput-object p1, p0, Lcom/android/server/am/GreenOptimizer$7;->this$0:Lcom/android/server/am/GreenOptimizer;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/server/am/GreenOptimizer$7;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/am/GreenOptimizer;->access$000(Lcom/android/server/am/GreenOptimizer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 328
    return-void
.end method

.method public onImportanceChanged(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "importance"    # I

    .prologue
    .line 332
    return-void
.end method

.method public onProcessDied(II)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/server/am/GreenOptimizer$7;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/am/GreenOptimizer;->access$000(Lcom/android/server/am/GreenOptimizer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 337
    return-void
.end method

.method public onProcessStateChanged(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "procState"    # I

    .prologue
    .line 341
    return-void
.end method
