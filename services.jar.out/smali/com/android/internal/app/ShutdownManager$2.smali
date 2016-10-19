.class Lcom/android/internal/app/ShutdownManager$2;
.super Ljava/lang/Object;
.source "ShutdownManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownManager;->finishShutdown(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ShutdownManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ShutdownManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 674
    iput-object p1, p0, Lcom/android/internal/app/ShutdownManager$2;->this$0:Lcom/android/internal/app/ShutdownManager;

    iput-object p2, p0, Lcom/android/internal/app/ShutdownManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/internal/app/ShutdownManager$2;->this$0:Lcom/android/internal/app/ShutdownManager;

    iget-object v1, p0, Lcom/android/internal/app/ShutdownManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->forceStopKillPackages(Landroid/content/Context;)V

    .line 677
    return-void
.end method
