.class Lcom/android/server/am/GreenOptimizer$10;
.super Landroid/database/ContentObserver;
.source "GreenOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/GreenOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/GreenOptimizer;


# direct methods
.method constructor <init>(Lcom/android/server/am/GreenOptimizer;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/server/am/GreenOptimizer$10;->this$0:Lcom/android/server/am/GreenOptimizer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/server/am/GreenOptimizer$10;->this$0:Lcom/android/server/am/GreenOptimizer;

    # invokes: Lcom/android/server/am/GreenOptimizer;->updateWhitelist()V
    invoke-static {v0}, Lcom/android/server/am/GreenOptimizer;->access$2000(Lcom/android/server/am/GreenOptimizer;)V

    .line 539
    return-void
.end method
