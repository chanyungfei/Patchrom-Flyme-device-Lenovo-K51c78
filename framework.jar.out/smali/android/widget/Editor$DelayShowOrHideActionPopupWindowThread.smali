.class final Landroid/widget/Editor$DelayShowOrHideActionPopupWindowThread;
.super Ljava/lang/Thread;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DelayShowOrHideActionPopupWindowThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 0

    .prologue
    .line 1913
    iput-object p1, p0, Landroid/widget/Editor$DelayShowOrHideActionPopupWindowThread;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .prologue
    .line 1913
    invoke-direct {p0, p1}, Landroid/widget/Editor$DelayShowOrHideActionPopupWindowThread;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1917
    iget-object v1, p0, Landroid/widget/Editor$DelayShowOrHideActionPopupWindowThread;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectPopupWindowHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/widget/Editor;->access$500(Landroid/widget/Editor;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1918
    const-wide/16 v2, 0x64

    .line 1920
    .local v2, "sleepDuration":J
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1925
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor$DelayShowOrHideActionPopupWindowThread;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectPopupWindowHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/widget/Editor;->access$500(Landroid/widget/Editor;)Landroid/os/Handler;

    move-result-object v1

    const/16 v4, 0x3ea

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1927
    .end local v2    # "sleepDuration":J
    :cond_0
    return-void

    .line 1921
    .restart local v2    # "sleepDuration":J
    :catch_0
    move-exception v0

    .line 1922
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
