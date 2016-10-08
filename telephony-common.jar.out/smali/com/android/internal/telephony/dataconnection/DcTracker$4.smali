.class Lcom/android/internal/telephony/dataconnection/DcTracker$4;
.super Ljava/lang/Thread;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;->createWorkerHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    .prologue
    .line 4382
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4385
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 4386
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DcTracker$1;)V

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mWorkerHandler:Landroid/os/Handler;

    .line 4387
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mWorkerHandler:Landroid/os/Handler;

    const v1, 0x421f6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4388
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 4389
    return-void
.end method
