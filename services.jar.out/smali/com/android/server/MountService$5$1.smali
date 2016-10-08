.class Lcom/android/server/MountService$5$1;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$5;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$5;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$5;)V
    .locals 0

    .prologue
    .line 1195
    iput-object p1, p0, Lcom/android/server/MountService$5$1;->this$1:Lcom/android/server/MountService$5;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/android/server/MountService$5$1;->this$1:Lcom/android/server/MountService$5;

    iget-object v0, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/MountService;->enableUSBFuction(Z)V
    invoke-static {v0, v1}, Lcom/android/server/MountService;->access$3700(Lcom/android/server/MountService;Z)V

    .line 1198
    return-void
.end method
