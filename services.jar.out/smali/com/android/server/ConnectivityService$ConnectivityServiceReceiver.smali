.class Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityServiceReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0

    .prologue
    .line 4978
    iput-object p1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ConnectivityService;
    .param p2, "x1"    # Lcom/android/server/ConnectivityService$1;

    .prologue
    .line 4978
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;-><init>(Lcom/android/server/ConnectivityService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4980
    if-nez p2, :cond_0

    .line 5004
    :goto_0
    return-void

    .line 4982
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4983
    .local v0, "action":Ljava/lang/String;
    const-string v4, "ConnectivityService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received intent ==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4985
    iget-object v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mSynchronizedObject:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$5000(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 4986
    :try_start_0
    const-string v4, "android.intent.action.TETHERING_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4987
    const-string v4, "tethering_isconnected"

    const/4 v6, 0x0

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 4989
    .local v2, "isConnected":Z
    iget-object v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v4, v2}, Lcom/android/server/ConnectivityService;->setUsbTethering(Z)I

    .line 5003
    .end local v2    # "isConnected":Z
    :cond_1
    :goto_1
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 4990
    :cond_2
    :try_start_1
    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4991
    const-string v4, "apnType"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4992
    .local v1, "apnType":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v4, "ims"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4993
    const-class v4, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v6, "state"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 4996
    .local v3, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v3, v4, :cond_1

    .line 4997
    # getter for: Lcom/android/server/ConnectivityService;->sHandoverRadioType:I
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$5100()I

    move-result v4

    if-eqz v4, :cond_1

    .line 4998
    iget-object v4, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v6, 0x1

    # invokes: Lcom/android/server/ConnectivityService;->setRetryFlag(Z)V
    invoke-static {v4, v6}, Lcom/android/server/ConnectivityService;->access$5200(Lcom/android/server/ConnectivityService;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
