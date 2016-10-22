.class Lcom/android/server/AlarmManagerService$DMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DMReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 2

    .prologue
    .line 2981
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$DMReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2982
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2983
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2984
    const-string v1, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2985
    const-string v1, "com.mediatek.ppl.NOTIFY_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2986
    const-string v1, "com.mediatek.ppl.NOTIFY_UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2987
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2988
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2992
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2994
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2995
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DMReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # setter for: Lcom/android/server/AlarmManagerService;->mDMEnable:Z
    invoke-static {v1, v2}, Lcom/android/server/AlarmManagerService;->access$3102(Lcom/android/server/AlarmManagerService;Z)Z

    .line 3005
    :cond_0
    :goto_0
    return-void

    .line 2996
    :cond_1
    const-string v1, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2997
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DMReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # setter for: Lcom/android/server/AlarmManagerService;->mDMEnable:Z
    invoke-static {v1, v3}, Lcom/android/server/AlarmManagerService;->access$3102(Lcom/android/server/AlarmManagerService;Z)Z

    .line 2998
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DMReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService;->enableDm()I

    goto :goto_0

    .line 2999
    :cond_2
    const-string v1, "com.mediatek.ppl.NOTIFY_LOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3000
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DMReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # setter for: Lcom/android/server/AlarmManagerService;->mPPLEnable:Z
    invoke-static {v1, v2}, Lcom/android/server/AlarmManagerService;->access$3202(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_0

    .line 3001
    :cond_3
    const-string v1, "com.mediatek.ppl.NOTIFY_UNLOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3002
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DMReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # setter for: Lcom/android/server/AlarmManagerService;->mPPLEnable:Z
    invoke-static {v1, v3}, Lcom/android/server/AlarmManagerService;->access$3202(Lcom/android/server/AlarmManagerService;Z)Z

    .line 3003
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DMReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService;->enableDm()I

    goto :goto_0
.end method
