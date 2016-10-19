.class Lcom/android/server/am/GreenOptimizer$6;
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
    .line 309
    iput-object p1, p0, Lcom/android/server/am/GreenOptimizer$6;->this$0:Lcom/android/server/am/GreenOptimizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 312
    const-string v0, "android.lenovo.SECRET_CODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "####47336#"

    const-string v3, "secretcode"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSCReceiver onReceive mEnable: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/am/GreenOptimizer$6;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mEnable:Z
    invoke-static {v3}, Lcom/android/server/am/GreenOptimizer;->access$500(Lcom/android/server/am/GreenOptimizer;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/am/GreenOptimizer;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/am/GreenOptimizer;->access$100(Ljava/lang/String;)V

    .line 315
    iget-object v3, p0, Lcom/android/server/am/GreenOptimizer$6;->this$0:Lcom/android/server/am/GreenOptimizer;

    iget-object v0, p0, Lcom/android/server/am/GreenOptimizer$6;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mEnable:Z
    invoke-static {v0}, Lcom/android/server/am/GreenOptimizer;->access$500(Lcom/android/server/am/GreenOptimizer;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    # setter for: Lcom/android/server/am/GreenOptimizer;->mEnable:Z
    invoke-static {v3, v0}, Lcom/android/server/am/GreenOptimizer;->access$502(Lcom/android/server/am/GreenOptimizer;Z)Z

    .line 316
    iget-object v0, p0, Lcom/android/server/am/GreenOptimizer$6;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/GreenOptimizer;->access$400(Lcom/android/server/am/GreenOptimizer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "appbackground"

    iget-object v4, p0, Lcom/android/server/am/GreenOptimizer$6;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mEnable:Z
    invoke-static {v4}, Lcom/android/server/am/GreenOptimizer;->access$500(Lcom/android/server/am/GreenOptimizer;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 317
    iget-object v0, p0, Lcom/android/server/am/GreenOptimizer$6;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/GreenOptimizer;->access$400(Lcom/android/server/am/GreenOptimizer;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/am/GreenOptimizer$6;->this$0:Lcom/android/server/am/GreenOptimizer;

    # getter for: Lcom/android/server/am/GreenOptimizer;->mEnable:Z
    invoke-static {v0}, Lcom/android/server/am/GreenOptimizer;->access$500(Lcom/android/server/am/GreenOptimizer;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "GO function on!"

    :goto_1
    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 320
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 315
    goto :goto_0

    .line 317
    :cond_3
    const-string v0, "GO function off!"

    goto :goto_1
.end method
