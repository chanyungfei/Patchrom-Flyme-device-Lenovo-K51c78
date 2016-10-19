.class Lcom/android/server/display/WifiDisplayController$66;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    .prologue
    .line 4835
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$66;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4838
    const-string v0, "WifiDisplayController"

    const-string v1, "mRtspSinkTimeout, run()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4839
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$66;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->disconnectWfdSink()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$11500(Lcom/android/server/display/WifiDisplayController;)V

    .line 4840
    return-void
.end method
