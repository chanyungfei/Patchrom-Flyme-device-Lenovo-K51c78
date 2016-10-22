.class Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->requestDisplayStateLocked(I)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

.field final synthetic val$displayId:I

.field final synthetic val$mode:I

.field final synthetic val$state:I

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;IILandroid/os/IBinder;I)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    iput p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayId:I

    iput-object p4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$token:Landroid/os/IBinder;

    iput p5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/32 v4, 0x80000

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestDisplayState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 286
    :try_start_0
    const-string v0, "LocalDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestDisplayState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$token:Landroid/os/IBinder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$mode:I

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->setDisplayPowerMode(Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 292
    return-void

    .line 290
    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
