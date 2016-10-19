.class Landroid/widget/TranslationViewHelper$1;
.super Ljava/lang/Thread;
.source "TranslationViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TranslationViewHelper;->startTranslationQuery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TranslationViewHelper;


# direct methods
.method constructor <init>(Landroid/widget/TranslationViewHelper;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Landroid/widget/TranslationViewHelper$1;->this$0:Landroid/widget/TranslationViewHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private performQuery()V
    .locals 6

    .prologue
    .line 526
    :try_start_0
    iget-object v1, p0, Landroid/widget/TranslationViewHelper$1;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mTranslationServiceHelper:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;
    invoke-static {v1}, Landroid/widget/TranslationViewHelper;->access$000(Landroid/widget/TranslationViewHelper;)Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TranslationViewHelper$1;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mWordToTranslate:Ljava/lang/String;
    invoke-static {v2}, Landroid/widget/TranslationViewHelper;->access$800(Landroid/widget/TranslationViewHelper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->startQuery(Ljava/lang/String;)V

    .line 530
    iget-object v1, p0, Landroid/widget/TranslationViewHelper$1;->this$0:Landroid/widget/TranslationViewHelper;

    # invokes: Landroid/widget/TranslationViewHelper;->startQueryTimeoutThread()V
    invoke-static {v1}, Landroid/widget/TranslationViewHelper;->access$900(Landroid/widget/TranslationViewHelper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :goto_0
    return-void

    .line 531
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/widget/TranslationViewHelper$1;->this$0:Landroid/widget/TranslationViewHelper;

    # invokes: Landroid/widget/TranslationViewHelper;->resetTimer()V
    invoke-static {v1}, Landroid/widget/TranslationViewHelper;->access$100(Landroid/widget/TranslationViewHelper;)V

    .line 534
    iget-object v1, p0, Landroid/widget/TranslationViewHelper$1;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mTimer:Ljava/util/Timer;
    invoke-static {v1}, Landroid/widget/TranslationViewHelper;->access$300(Landroid/widget/TranslationViewHelper;)Ljava/util/Timer;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TranslationViewHelper$1;->this$0:Landroid/widget/TranslationViewHelper;

    # invokes: Landroid/widget/TranslationViewHelper;->getShowErrorViewTimerTask()Ljava/util/TimerTask;
    invoke-static {v2}, Landroid/widget/TranslationViewHelper;->access$200(Landroid/widget/TranslationViewHelper;)Ljava/util/TimerTask;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 536
    # getter for: Landroid/widget/TranslationViewHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/widget/TranslationViewHelper;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Translation : run : RemoteException has been thrown. check the later log for more information"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private showNetworkTrafficWarning()V
    .locals 4

    .prologue
    .line 473
    new-instance v0, Landroid/widget/TranslationNetworkTrafficDialogHelper;

    iget-object v1, p0, Landroid/widget/TranslationViewHelper$1;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TranslationViewHelper;->access$400(Landroid/widget/TranslationViewHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TranslationViewHelper$1;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/widget/TranslationViewHelper;->access$500(Landroid/widget/TranslationViewHelper;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TranslationViewHelper$1;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mTranslationServiceHelper:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;
    invoke-static {v3}, Landroid/widget/TranslationViewHelper;->access$000(Landroid/widget/TranslationViewHelper;)Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TranslationNetworkTrafficDialogHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/TranslationViewHelper$TranslationServiceHelper;)V

    .line 475
    .local v0, "dialogHelper":Landroid/widget/TranslationNetworkTrafficDialogHelper;
    new-instance v1, Landroid/widget/TranslationViewHelper$1$1;

    invoke-direct {v1, p0}, Landroid/widget/TranslationViewHelper$1$1;-><init>(Landroid/widget/TranslationViewHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TranslationNetworkTrafficDialogHelper;->showNetworkTrafficDialog(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 492
    return-void
.end method

.method private sleepUntilServiceConnected()V
    .locals 6

    .prologue
    .line 500
    const/4 v3, 0x0

    .line 501
    .local v3, "isServiceBinded":Z
    const/16 v0, 0xfa

    .line 502
    .local v0, "MAX_COUNT":I
    const/4 v1, 0x0

    .line 504
    .local v1, "count":I
    :goto_0
    if-nez v3, :cond_1

    const/16 v4, 0xfa

    if-ge v1, v4, :cond_1

    .line 505
    add-int/lit8 v1, v1, 0x1

    .line 507
    iget-object v4, p0, Landroid/widget/TranslationViewHelper$1;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mTranslationServiceHelper:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;
    invoke-static {v4}, Landroid/widget/TranslationViewHelper;->access$000(Landroid/widget/TranslationViewHelper;)Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->isServiceConnected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 511
    const-wide/16 v4, 0x14

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 512
    :catch_0
    move-exception v2

    .line 513
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 516
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 519
    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 443
    invoke-direct {p0}, Landroid/widget/TranslationViewHelper$1;->sleepUntilServiceConnected()V

    .line 446
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$1;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mTranslationServiceHelper:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;
    invoke-static {v0}, Landroid/widget/TranslationViewHelper;->access$000(Landroid/widget/TranslationViewHelper;)Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$1;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mTranslationServiceHelper:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;
    invoke-static {v0}, Landroid/widget/TranslationViewHelper;->access$000(Landroid/widget/TranslationViewHelper;)Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    invoke-direct {p0}, Landroid/widget/TranslationViewHelper$1;->performQuery()V

    .line 467
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$1;->this$0:Landroid/widget/TranslationViewHelper;

    # invokes: Landroid/widget/TranslationViewHelper;->resetTimer()V
    invoke-static {v0}, Landroid/widget/TranslationViewHelper;->access$100(Landroid/widget/TranslationViewHelper;)V

    .line 457
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$1;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Landroid/widget/TranslationViewHelper;->access$300(Landroid/widget/TranslationViewHelper;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TranslationViewHelper$1;->this$0:Landroid/widget/TranslationViewHelper;

    # invokes: Landroid/widget/TranslationViewHelper;->getShowErrorViewTimerTask()Ljava/util/TimerTask;
    invoke-static {v1}, Landroid/widget/TranslationViewHelper;->access$200(Landroid/widget/TranslationViewHelper;)Ljava/util/TimerTask;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 464
    :cond_1
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$1;->this$0:Landroid/widget/TranslationViewHelper;

    # invokes: Landroid/widget/TranslationViewHelper;->resetTimer()V
    invoke-static {v0}, Landroid/widget/TranslationViewHelper;->access$100(Landroid/widget/TranslationViewHelper;)V

    .line 465
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$1;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Landroid/widget/TranslationViewHelper;->access$300(Landroid/widget/TranslationViewHelper;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TranslationViewHelper$1;->this$0:Landroid/widget/TranslationViewHelper;

    # invokes: Landroid/widget/TranslationViewHelper;->getShowErrorViewTimerTask()Ljava/util/TimerTask;
    invoke-static {v1}, Landroid/widget/TranslationViewHelper;->access$200(Landroid/widget/TranslationViewHelper;)Ljava/util/TimerTask;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method
