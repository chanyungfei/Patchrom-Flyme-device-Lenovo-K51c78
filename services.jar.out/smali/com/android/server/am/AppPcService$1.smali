.class Lcom/android/server/am/AppPcService$1;
.super Ljava/lang/Thread;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppPcService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPcService;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcService;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/server/am/AppPcService$1;->this$0:Lcom/android/server/am/AppPcService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/server/am/AppPcService$1;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->sControllableSystemApps:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/am/AppPcService;->access$000(Lcom/android/server/am/AppPcService;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$1;->this$0:Lcom/android/server/am/AppPcService;

    iget-object v2, p0, Lcom/android/server/am/AppPcService$1;->this$0:Lcom/android/server/am/AppPcService;

    # invokes: Lcom/android/server/am/AppPcService;->getControllableSystemApps()Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/am/AppPcService;->access$100(Lcom/android/server/am/AppPcService;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/android/server/am/AppPcService;->sControllableSystemApps:Ljava/util/List;
    invoke-static {v0, v2}, Lcom/android/server/am/AppPcService;->access$002(Lcom/android/server/am/AppPcService;Ljava/util/List;)Ljava/util/List;

    .line 271
    monitor-exit v1

    .line 272
    return-void

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
