.class Lcom/android/server/am/GreenOptimizer$11;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/server/am/GreenOptimizer;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/server/am/GreenOptimizer$11;->this$0:Lcom/android/server/am/GreenOptimizer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 544
    iget-object v2, p0, Lcom/android/server/am/GreenOptimizer$11;->this$0:Lcom/android/server/am/GreenOptimizer;

    iget-object v3, p0, Lcom/android/server/am/GreenOptimizer$11;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/am/GreenOptimizer;->access$400(Lcom/android/server/am/GreenOptimizer;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "appbackground"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    # setter for: Lcom/android/server/am/GreenOptimizer;->mEnable:Z
    invoke-static {v2, v0}, Lcom/android/server/am/GreenOptimizer;->access$502(Lcom/android/server/am/GreenOptimizer;Z)Z

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mToggleObserver mEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/GreenOptimizer$11;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mEnable:Z
    invoke-static {v1}, Lcom/android/server/am/GreenOptimizer;->access$500(Lcom/android/server/am/GreenOptimizer;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/am/GreenOptimizer;->access$100(Ljava/lang/String;)V

    .line 546
    return-void

    :cond_0
    move v0, v1

    .line 544
    goto :goto_0
.end method
