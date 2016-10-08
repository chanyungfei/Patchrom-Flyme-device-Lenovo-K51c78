.class Lcom/android/server/wm/WindowManagerService$8;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->requestExtraDisplayDeviceRefresh(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;

.field final synthetic val$density:I

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;III)V
    .locals 0

    .prologue
    .line 11330
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$8;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput p2, p0, Lcom/android/server/wm/WindowManagerService$8;->val$width:I

    iput p3, p0, Lcom/android/server/wm/WindowManagerService$8;->val$height:I

    iput p4, p0, Lcom/android/server/wm/WindowManagerService$8;->val$density:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 11333
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$8;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/wm/WindowManagerService$8;->val$width:I

    iget v2, p0, Lcom/android/server/wm/WindowManagerService$8;->val$height:I

    iget v3, p0, Lcom/android/server/wm/WindowManagerService$8;->val$density:I

    # invokes: Lcom/android/server/wm/WindowManagerService;->requestExtraDisplayDeviceRefreshInner(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->access$2500(Lcom/android/server/wm/WindowManagerService;III)V

    .line 11334
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$8;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v4, v4}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    .line 11335
    return-void
.end method
