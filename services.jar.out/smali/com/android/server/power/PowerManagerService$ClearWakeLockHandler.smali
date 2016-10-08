.class final Lcom/android/server/power/PowerManagerService$ClearWakeLockHandler;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClearWakeLockHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 4465
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$ClearWakeLockHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 4466
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 4467
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4471
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 4476
    :goto_0
    return-void

    .line 4473
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ClearWakeLockHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->cleanUpWakeLock()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$8500(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    .line 4471
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
