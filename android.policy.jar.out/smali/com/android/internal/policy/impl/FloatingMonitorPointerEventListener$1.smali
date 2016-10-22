.class Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FloatingMonitorPointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 125
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v0, v4

    .line 126
    .local v0, "motionX":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v1, v4

    .line 128
    .local v1, "motionY":I
    sget-boolean v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 129
    const-string v4, "FloatingMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BMW]onDown e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mFocusWindow = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusWindow:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v8}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$000(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", focusFrame ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusWindow:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v8}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$000(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mMonitorRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$100(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v7

    monitor-enter v7

    .line 135
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mMonitorRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$100(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 136
    const-string v4, "FloatingMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BMW]Outside of the monitor region.Skip the motion event. "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    monitor-exit v7

    .line 219
    :goto_0
    return v6

    .line 140
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    iget-object v7, v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusWindowLock:Ljava/lang/Object;

    monitor-enter v7

    .line 143
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$200(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v8, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusWindow:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v8}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$000(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 144
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mCtrlBarRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$300(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v8, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusWindow:Landroid/view/WindowManagerPolicy$WindowState;
    invoke-static {v8}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$000(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 145
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    const/16 v3, 0x1e

    .line 150
    .local v3, "resizeMargin":I
    const/4 v2, 0x0

    .line 151
    .local v2, "resizeInsets":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$200(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v7, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$200(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v2

    iget-object v8, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$200(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$200(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v2

    iget-object v10, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;
    invoke-static {v10}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$200(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v2

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 154
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mCtrlBarRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$300(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v7, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mCtrlBarRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$300(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mCtrlBarRect:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$300(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mCtrlBarRect:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$300(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mCtrlBarBtnWidth:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$400(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mCtrlBarRect:Landroid/graphics/Rect;
    invoke-static {v10}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$300(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mCtrlBarHeight:I
    invoke-static {v11}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$500(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 157
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mTopBarRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$600(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v7, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$200(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v3

    iget-object v8, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$200(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v3

    iget-object v9, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$200(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v3

    iget-object v10, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;
    invoke-static {v10}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$200(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 159
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mBottomBarRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$700(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v7, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$200(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v3

    iget-object v8, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$200(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$200(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v3

    iget-object v10, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;
    invoke-static {v10}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$200(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v3

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 161
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mRightBarRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$800(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v7, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$200(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$200(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v3

    iget-object v9, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$200(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v3

    iget-object v10, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;
    invoke-static {v10}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$200(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v3

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 163
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mLeftBarRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$900(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v7, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$200(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v3

    iget-object v8, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;
    invoke-static {v8}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$200(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v3

    iget-object v9, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$200(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;
    invoke-static {v10}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$200(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v3

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 166
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mCtrlBarRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$300(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 167
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    iput v5, v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mMotionMode:I

    .line 204
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    iget-object v7, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    iget v7, v7, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    # invokes: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->checkResizeDirectionEnabled(I)Z
    invoke-static {v4, v7}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$1000(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 205
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    iput v6, v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    .line 207
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    iget v4, v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    if-eqz v4, :cond_d

    move v4, v5

    :goto_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    iget v7, v7, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mMotionMode:I

    if-ne v7, v5, :cond_e

    move v7, v5

    :goto_3
    or-int/2addr v4, v7

    if-eqz v4, :cond_10

    .line 208
    sget-boolean v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 209
    const-string v4, "FloatingMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BMW]enableFocusedFrame mResizeDirect ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    iget v8, v8, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mMotionMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    iget v8, v8, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mMotionMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_4
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v4

    if-nez v4, :cond_f

    .line 213
    const-string v4, "FloatingMonitor"

    const-string v5, "[BMW]Multi Window Service not ready!"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 140
    .end local v2    # "resizeInsets":I
    .end local v3    # "resizeMargin":I
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 145
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 168
    .restart local v2    # "resizeInsets":I
    .restart local v3    # "resizeMargin":I
    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$200(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 169
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mTopBarRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$600(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 170
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    iget v7, v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    .line 171
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mTopBarRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$600(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x3c

    if-ge v0, v4, :cond_6

    .line 172
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    iget v7, v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    .line 174
    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mTopBarRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$600(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, -0x3c

    if-le v0, v4, :cond_2

    .line 175
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    iget v7, v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    goto/16 :goto_1

    .line 177
    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mBottomBarRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$700(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 178
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    iget v7, v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    .line 179
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mBottomBarRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$700(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x3c

    if-ge v0, v4, :cond_8

    .line 180
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    iget v7, v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    .line 182
    :cond_8
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mBottomBarRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$700(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, -0x3c

    if-le v0, v4, :cond_2

    .line 183
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    iget v7, v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    goto/16 :goto_1

    .line 185
    :cond_9
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mLeftBarRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$900(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 186
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    iget v7, v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    .line 187
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mLeftBarRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$900(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x3c

    if-ge v1, v4, :cond_a

    .line 188
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    iget v7, v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    .line 190
    :cond_a
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mBottomBarRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$700(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x3c

    if-le v1, v4, :cond_2

    .line 191
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    iget v7, v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    goto/16 :goto_1

    .line 193
    :cond_b
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mRightBarRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$800(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 194
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    iget v7, v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    .line 195
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mRightBarRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$800(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x3c

    if-ge v1, v4, :cond_c

    .line 196
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    iget v7, v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    .line 198
    :cond_c
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    # getter for: Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mRightBarRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->access$800(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x3c

    if-le v1, v4, :cond_2

    .line 199
    iget-object v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    iget v7, v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v4, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    goto/16 :goto_1

    :cond_d
    move v4, v6

    .line 207
    goto/16 :goto_2

    :cond_e
    move v7, v6

    goto/16 :goto_3

    .line 216
    :cond_f
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/mediatek/multiwindow/MultiWindowProxy;->enableFocusedFrame(Z)V

    :cond_10
    move v6, v5

    .line 219
    goto/16 :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v1, 0x1

    .line 101
    sget-boolean v2, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 102
    const-string v2, "FloatingMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BMW]onScroll e1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", e2 ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",dX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",dY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v0

    .line 107
    .local v0, "multiWindowProxy":Lcom/mediatek/multiwindow/MultiWindowProxy;
    if-nez v0, :cond_2

    .line 108
    const-string v1, "FloatingMonitor"

    const-string v2, "[BMW]Multi Window Service not ready!"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v1, 0x0

    .line 119
    :cond_1
    :goto_0
    return v1

    .line 111
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    iget v2, v2, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mMotionMode:I

    if-ne v2, v1, :cond_3

    .line 112
    float-to-int v2, p3

    float-to-int v3, p4

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/multiwindow/MultiWindowProxy;->moveFloatingWindow(II)V

    goto :goto_0

    .line 114
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    iget v2, v2, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    if-eqz v2, :cond_1

    .line 115
    iget-object v2, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;->this$0:Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    iget v2, v2, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    float-to-int v3, p3

    float-to-int v4, p4

    invoke-virtual {v0, v2, v3, v4}, Lcom/mediatek/multiwindow/MultiWindowProxy;->resizeFloatingWindow(III)V

    goto :goto_0
.end method
