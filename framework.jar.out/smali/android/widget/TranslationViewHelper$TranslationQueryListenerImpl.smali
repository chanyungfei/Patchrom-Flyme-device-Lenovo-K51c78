.class public final Landroid/widget/TranslationViewHelper$TranslationQueryListenerImpl;
.super Lcom/lenovo/component/translationservice/ITranslationQueryListener$Stub;
.source "TranslationViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TranslationViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TranslationQueryListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TranslationViewHelper;


# direct methods
.method public constructor <init>(Landroid/widget/TranslationViewHelper;)V
    .locals 0

    .prologue
    .line 1156
    iput-object p1, p0, Landroid/widget/TranslationViewHelper$TranslationQueryListenerImpl;->this$0:Landroid/widget/TranslationViewHelper;

    invoke-direct {p0}, Lcom/lenovo/component/translationservice/ITranslationQueryListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 4
    .param p1, "errorType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 1165
    if-nez p1, :cond_0

    .line 1166
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$TranslationQueryListenerImpl;->this$0:Landroid/widget/TranslationViewHelper;

    # invokes: Landroid/widget/TranslationViewHelper;->resetTimer()V
    invoke-static {v0}, Landroid/widget/TranslationViewHelper;->access$100(Landroid/widget/TranslationViewHelper;)V

    .line 1167
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$TranslationQueryListenerImpl;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Landroid/widget/TranslationViewHelper;->access$300(Landroid/widget/TranslationViewHelper;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TranslationViewHelper$TranslationQueryListenerImpl;->this$0:Landroid/widget/TranslationViewHelper;

    # invokes: Landroid/widget/TranslationViewHelper;->getShowErrorViewTimerTask()Ljava/util/TimerTask;
    invoke-static {v1}, Landroid/widget/TranslationViewHelper;->access$200(Landroid/widget/TranslationViewHelper;)Ljava/util/TimerTask;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1172
    :goto_0
    return-void

    .line 1169
    :cond_0
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$TranslationQueryListenerImpl;->this$0:Landroid/widget/TranslationViewHelper;

    # invokes: Landroid/widget/TranslationViewHelper;->resetTimer()V
    invoke-static {v0}, Landroid/widget/TranslationViewHelper;->access$100(Landroid/widget/TranslationViewHelper;)V

    .line 1170
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$TranslationQueryListenerImpl;->this$0:Landroid/widget/TranslationViewHelper;

    # getter for: Landroid/widget/TranslationViewHelper;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Landroid/widget/TranslationViewHelper;->access$300(Landroid/widget/TranslationViewHelper;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TranslationViewHelper$TranslationQueryListenerImpl;->this$0:Landroid/widget/TranslationViewHelper;

    # invokes: Landroid/widget/TranslationViewHelper;->getShowErrorViewTimerTask()Ljava/util/TimerTask;
    invoke-static {v1}, Landroid/widget/TranslationViewHelper;->access$200(Landroid/widget/TranslationViewHelper;)Ljava/util/TimerTask;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method public onQueryResultReturned(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsonResultString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1160
    iget-object v0, p0, Landroid/widget/TranslationViewHelper$TranslationQueryListenerImpl;->this$0:Landroid/widget/TranslationViewHelper;

    # invokes: Landroid/widget/TranslationViewHelper;->onTranslationResultReturned(Ljava/lang/String;)V
    invoke-static {v0, p1}, Landroid/widget/TranslationViewHelper;->access$2200(Landroid/widget/TranslationViewHelper;Ljava/lang/String;)V

    .line 1161
    return-void
.end method
