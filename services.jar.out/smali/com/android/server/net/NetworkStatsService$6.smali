.class Lcom/android/server/net/NetworkStatsService$6;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0

    .prologue
    .line 829
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$6;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 832
    const-string v0, "NetworkStats"

    const-string v1, "[powerdebug]ignoreAlertFilter received"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$6;->this$0:Lcom/android/server/net/NetworkStatsService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/net/NetworkStatsService;->mIgnoreAlert:Z
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->access$1202(Lcom/android/server/net/NetworkStatsService;Z)Z

    .line 834
    return-void
.end method
