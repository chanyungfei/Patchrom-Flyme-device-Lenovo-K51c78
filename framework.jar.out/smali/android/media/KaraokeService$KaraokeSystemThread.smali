.class Landroid/media/KaraokeService$KaraokeSystemThread;
.super Ljava/lang/Thread;
.source "KaraokeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/KaraokeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KaraokeSystemThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/KaraokeService;


# direct methods
.method constructor <init>(Landroid/media/KaraokeService;)V
    .locals 1

    .prologue
    .line 164
    iput-object p1, p0, Landroid/media/KaraokeService$KaraokeSystemThread;->this$0:Landroid/media/KaraokeService;

    .line 165
    const-string v0, "KaraokeService"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 166
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 171
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 173
    iget-object v1, p0, Landroid/media/KaraokeService$KaraokeSystemThread;->this$0:Landroid/media/KaraokeService;

    monitor-enter v1

    .line 174
    :try_start_0
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeSystemThread;->this$0:Landroid/media/KaraokeService;

    new-instance v2, Landroid/media/KaraokeService$KaraokeHandler;

    iget-object v3, p0, Landroid/media/KaraokeService$KaraokeSystemThread;->this$0:Landroid/media/KaraokeService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/media/KaraokeService$KaraokeHandler;-><init>(Landroid/media/KaraokeService;Landroid/media/KaraokeService$1;)V

    # setter for: Landroid/media/KaraokeService;->mKaraokHandler:Landroid/media/KaraokeService$KaraokeHandler;
    invoke-static {v0, v2}, Landroid/media/KaraokeService;->access$002(Landroid/media/KaraokeService;Landroid/media/KaraokeService$KaraokeHandler;)Landroid/media/KaraokeService$KaraokeHandler;

    .line 177
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeSystemThread;->this$0:Landroid/media/KaraokeService;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 178
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 182
    return-void

    .line 178
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
