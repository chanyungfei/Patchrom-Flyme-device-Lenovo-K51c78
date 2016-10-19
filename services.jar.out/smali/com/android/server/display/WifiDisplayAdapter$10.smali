.class Lcom/android/server/display/WifiDisplayAdapter$10;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->requestSuspendDisplayLocked(ZLandroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field final synthetic val$surface:Landroid/view/Surface;

.field final synthetic val$suspend:Z


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;ZLandroid/view/Surface;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput-boolean p2, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->val$suspend:Z

    iput-object p3, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->val$surface:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->val$suspend:Z

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->val$surface:Landroid/view/Surface;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/WifiDisplayController;->requestSuspendDisplay(ZLandroid/view/Surface;)V

    .line 409
    :cond_0
    return-void
.end method
