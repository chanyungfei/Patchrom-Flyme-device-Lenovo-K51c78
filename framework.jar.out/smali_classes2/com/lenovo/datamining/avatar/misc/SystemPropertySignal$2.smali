.class Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal$2;
.super Ljava/lang/Object;
.source "SystemPropertySignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;->onCreate(Landroid/content/Context;Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;


# direct methods
.method constructor <init>(Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal$2;->this$0:Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal$2;->this$0:Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;

    # getter for: Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;->access$200(Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal$2;->this$0:Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;

    # getter for: Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;->mPropertyChangeCallback:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;->access$100(Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    iget-object v0, p0, Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal$2;->this$0:Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;

    # getter for: Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;->access$200(Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal$2;->this$0:Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;

    # getter for: Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;->mPropertyChangeCallback:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;->access$100(Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    return-void
.end method
