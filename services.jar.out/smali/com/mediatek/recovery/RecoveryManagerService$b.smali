.class Lcom/mediatek/recovery/RecoveryManagerService$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/recovery/RecoveryManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic y:Lcom/mediatek/recovery/RecoveryManagerService;


# direct methods
.method constructor <init>(Lcom/mediatek/recovery/RecoveryManagerService;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/mediatek/recovery/RecoveryManagerService$b;->y:Lcom/mediatek/recovery/RecoveryManagerService;

    .line 310
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 311
    return-void
.end method


# virtual methods
.method a(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 321
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 336
    :goto_0
    return-void

    .line 323
    :pswitch_0
    const-string v0, "RecoveryManagerService"

    const-string v1, "Warning : System server boot up timeout : 30s !!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    :pswitch_1
    const-string v0, "RecoveryManagerService"

    const-string v1, "Recovery Manager Service : MSG_REBOOT_NORMAL"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService$b;->y:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-static {v0}, Lcom/mediatek/recovery/RecoveryManagerService;->a(Lcom/mediatek/recovery/RecoveryManagerService;)V

    goto :goto_0

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 314
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/recovery/RecoveryManagerService$b;->a(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 318
    return-void

    .line 316
    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    throw v0
.end method
