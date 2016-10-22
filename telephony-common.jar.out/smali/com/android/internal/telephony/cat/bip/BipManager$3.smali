.class Lcom/android/internal/telephony/cat/bip/BipManager$3;
.super Landroid/content/BroadcastReceiver;
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
    .line 1302
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$3;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 1304
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNetworkConnReceiver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager$3;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z
    invoke-static {v3}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$900(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager$3;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mIsCloseInProgress:Z
    invoke-static {v3}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$300(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager$3;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z
    invoke-static {v3}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$000(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$3;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$800(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1307
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isClientChannelOpened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager$3;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;
    invoke-static {v3}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$800(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->isClientChannelOpened()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$3;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z
    invoke-static {v1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$900(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$3;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z
    invoke-static {v1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$000(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$3;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mIsCloseInProgress:Z
    invoke-static {v1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$300(Lcom/android/internal/telephony/cat/bip/BipManager;)Z

    move-result v1

    if-ne v4, v1, :cond_3

    .line 1313
    :cond_2
    const-string v1, "[BIP]"

    const-string v2, "Connectivity changed onReceive Enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager$3;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-direct {v1, v2, p2}, Lcom/android/internal/telephony/cat/bip/BipManager$ConnectivityChangeThread;-><init>(Lcom/android/internal/telephony/cat/bip/BipManager;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1316
    .local v0, "rt":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1317
    const-string v1, "[BIP]"

    const-string v2, "Connectivity changed onReceive Leave"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    .end local v0    # "rt":Ljava/lang/Thread;
    :cond_3
    return-void
.end method
