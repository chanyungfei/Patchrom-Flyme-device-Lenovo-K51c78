.class Landroid/widget/TranslationViewHelper$5;
.super Ljava/util/TimerTask;
.source "TranslationViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TranslationViewHelper;->getShowErrorViewTimerTask()Ljava/util/TimerTask;
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
    .line 943
    iput-object p1, p0, Landroid/widget/TranslationViewHelper$5;->this$0:Landroid/widget/TranslationViewHelper;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 947
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$5;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/widget/TranslationViewHelper;->access$500(Landroid/widget/TranslationViewHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/widget/TranslationViewHelper$5$1;

    invoke-direct {v1, p0}, Landroid/widget/TranslationViewHelper$5$1;-><init>(Landroid/widget/TranslationViewHelper$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 956
    return-void
.end method
