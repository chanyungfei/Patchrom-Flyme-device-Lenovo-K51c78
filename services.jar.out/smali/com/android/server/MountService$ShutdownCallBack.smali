.class Lcom/android/server/MountService$ShutdownCallBack;
.super Lcom/android/server/MountService$UnmountCallBack;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShutdownCallBack"
.end annotation


# instance fields
.field mMountShutdownLatch:Lcom/android/server/MountService$MountShutdownLatch;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Lcom/android/server/MountService$MountShutdownLatch;)V
    .locals 2
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "mountShutdownLatch"    # Lcom/android/server/MountService$MountShutdownLatch;

    .prologue
    .line 612
    iput-object p1, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    .line 613
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 614
    iput-object p3, p0, Lcom/android/server/MountService$ShutdownCallBack;->mMountShutdownLatch:Lcom/android/server/MountService$MountShutdownLatch;

    .line 615
    return-void
.end method


# virtual methods
.method handleFinished()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 619
    iget-object v1, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->path:Ljava/lang/String;

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/android/server/MountService$ShutdownCallBack;->removeEncryption:Z

    # invokes: Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;Ljava/lang/String;ZZ)I

    move-result v0

    .line 620
    .local v0, "ret":I
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unmount completed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/MountService$ShutdownCallBack;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v1, p0, Lcom/android/server/MountService$ShutdownCallBack;->mMountShutdownLatch:Lcom/android/server/MountService$MountShutdownLatch;

    invoke-virtual {v1}, Lcom/android/server/MountService$MountShutdownLatch;->countDown()V

    .line 623
    iget-object v1, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mShutdownRet:I
    invoke-static {v2}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)I

    move-result v2

    or-int/2addr v2, v0

    # setter for: Lcom/android/server/MountService;->mShutdownRet:I
    invoke-static {v1, v2}, Lcom/android/server/MountService;->access$1702(Lcom/android/server/MountService;I)I

    .line 624
    iget-object v1, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    # operator-- for: Lcom/android/server/MountService;->mShutdownCount:I
    invoke-static {v1}, Lcom/android/server/MountService;->access$1810(Lcom/android/server/MountService;)I

    .line 625
    iget-object v1, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mShutdownCount:I
    invoke-static {v1}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 626
    iget-object v1, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    # setter for: Lcom/android/server/MountService;->mShutdownSD:Z
    invoke-static {v1, v5}, Lcom/android/server/MountService;->access$1902(Lcom/android/server/MountService;Z)Z

    .line 627
    iget-object v1, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    # setter for: Lcom/android/server/MountService;->mUnmountPrimary:Z
    invoke-static {v1, v5}, Lcom/android/server/MountService;->access$1602(Lcom/android/server/MountService;Z)Z

    .line 628
    iget-object v1, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    # setter for: Lcom/android/server/MountService;->mShutdownRet:I
    invoke-static {v1, v5}, Lcom/android/server/MountService;->access$1702(Lcom/android/server/MountService;I)I

    .line 630
    :cond_0
    return-void
.end method
