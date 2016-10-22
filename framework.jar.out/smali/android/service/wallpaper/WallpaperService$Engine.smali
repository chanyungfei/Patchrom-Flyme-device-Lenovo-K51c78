.class public Landroid/service/wallpaper/WallpaperService$Engine;
.super Ljava/lang/Object;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Engine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;
    }
.end annotation


# instance fields
.field mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mConfiguration:Landroid/content/res/Configuration;

.field mConnection:Landroid/service/wallpaper/IWallpaperConnection;

.field final mContentInsets:Landroid/graphics/Rect;

.field mCreated:Z

.field mCurHeight:I

.field mCurWidth:I

.field mCurWindowFlags:I

.field mCurWindowPrivateFlags:I

.field mDestroyed:Z

.field final mDispatchedContentInsets:Landroid/graphics/Rect;

.field final mDispatchedOverscanInsets:Landroid/graphics/Rect;

.field final mDispatchedStableInsets:Landroid/graphics/Rect;

.field mDisplay:Landroid/view/Display;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mDrawingAllowed:Z

.field final mFinalStableInsets:Landroid/graphics/Rect;

.field final mFinalSystemInsets:Landroid/graphics/Rect;

.field mFixedSizeAllowed:Z

.field mFormat:I

.field mHeight:I

.field mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

.field mInitializing:Z

.field mInputChannel:Landroid/view/InputChannel;

.field mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

.field private mIsCircularEmulator:Z

.field mIsCreating:Z

.field private mIsEmulator:Z

.field final mLayout:Landroid/view/WindowManager$LayoutParams;

.field final mLock:Ljava/lang/Object;

.field mOffsetMessageEnqueued:Z

.field mOffsetsChanged:Z

.field mOutsetBottom:Landroid/util/TypedValue;

.field final mOverscanInsets:Landroid/graphics/Rect;

.field mPendingMove:Landroid/view/MotionEvent;

.field mPendingSync:Z

.field mPendingXOffset:F

.field mPendingXOffsetStep:F

.field mPendingYOffset:F

.field mPendingYOffsetStep:F

.field mReportedVisible:Z

.field mSession:Landroid/view/IWindowSession;

.field final mStableInsets:Landroid/graphics/Rect;

.field mSurfaceCreated:Z

.field final mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field mType:I

.field mVisible:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mWidth:I

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Lcom/android/internal/view/BaseIWindow;

.field mWindowFlags:I

.field private mWindowIsRound:Z

.field mWindowPrivateFlags:I

.field mWindowToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/service/wallpaper/WallpaperService;


# direct methods
.method public constructor <init>(Landroid/service/wallpaper/WallpaperService;)V
    .locals 1

    .prologue
    .line 157
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 183
    const/16 v0, 0x10

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    .line 184
    const/4 v0, 0x4

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    .line 186
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    .line 187
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    .line 189
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisibleInsets:Landroid/graphics/Rect;

    .line 190
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    .line 191
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    .line 192
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    .line 193
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    .line 194
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    .line 195
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    .line 196
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    .line 197
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalSystemInsets:Landroid/graphics/Rect;

    .line 198
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalStableInsets:Landroid/graphics/Rect;

    .line 199
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConfiguration:Landroid/content/res/Configuration;

    .line 205
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 210
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    .line 222
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$1;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$1;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 289
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$2;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$2;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    .line 1095
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$3;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$3;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-void
.end method

.method static synthetic access$000(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Landroid/service/wallpaper/WallpaperService$Engine;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->dispatchPointer(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private dispatchPointer(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 590
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 591
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 592
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 593
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    .line 597
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x2738

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 599
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 603
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    return-void

    .line 595
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    goto :goto_0

    .line 597
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 601
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1
.end method


# virtual methods
.method attach(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)V
    .locals 4
    .param p1, "wrapper"    # Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .prologue
    const/4 v3, 0x0

    .line 878
    const-string v0, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wrapper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 903
    :goto_0
    return-void

    .line 883
    :cond_0
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 884
    # getter for: Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;
    invoke-static {p1}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->access$100(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)Lcom/android/internal/os/HandlerCaller;

    move-result-object v0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 885
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    .line 886
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    .line 887
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->setSizeFromLayout()V

    .line 888
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 889
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    .line 891
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseIWindow;->setSession(Landroid/view/IWindowSession;)V

    .line 893
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/service/wallpaper/WallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 894
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v2}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 895
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    .line 897
    const-string v0, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 900
    iput-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 901
    iput-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    .line 902
    invoke-virtual {p0, v3, v3, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    goto :goto_0
.end method

.method detach()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1049
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 1093
    :cond_0
    :goto_0
    return-void

    .line 1053
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    .line 1055
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_2

    .line 1056
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 1059
    :cond_2
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v0, :cond_3

    .line 1060
    iput-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 1061
    const-string v0, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVisibilityChanged(false): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    invoke-virtual {p0, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 1065
    :cond_3
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V

    .line 1067
    const-string v0, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroy(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 1070
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_0

    .line 1072
    :try_start_0
    const-string v0, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing window and destroying surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    if-eqz v0, :cond_4

    .line 1076
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;->dispose()V

    .line 1077
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    .line 1080
    :cond_4
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1083
    :goto_1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1084
    iput-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 1088
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 1090
    iput-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    goto/16 :goto_0

    .line 1081
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method doCommand(Landroid/service/wallpaper/WallpaperService$WallpaperCommand;)V
    .locals 8
    .param p1, "cmd"    # Landroid/service/wallpaper/WallpaperService$WallpaperCommand;

    .prologue
    .line 1017
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 1018
    iget-object v1, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    iget v2, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->x:I

    iget v3, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->y:I

    iget v4, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    iget-object v5, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->extras:Landroid/os/Bundle;

    iget-boolean v6, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/service/wallpaper/WallpaperService$Engine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v7

    .line 1023
    .local v7, "result":Landroid/os/Bundle;
    :goto_0
    iget-boolean v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    if-eqz v0, :cond_0

    .line 1025
    :try_start_0
    const-string v0, "WallpaperService"

    const-string v1, "Reporting command complete"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    :cond_0
    :goto_1
    return-void

    .line 1021
    .end local v7    # "result":Landroid/os/Bundle;
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "result":Landroid/os/Bundle;
    goto :goto_0

    .line 1027
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method doDesiredSizeChanged(II)V
    .locals 3
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I

    .prologue
    .line 906
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 907
    const-string v0, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDesiredSizeChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p1, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    .line 910
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p2, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    .line 911
    invoke-virtual {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->onDesiredSizeChanged(II)V

    .line 912
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    .line 914
    :cond_0
    return-void
.end method

.method doDisplayPaddingChanged(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 917
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 918
    const-string v0, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayPaddingChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 920
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 921
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 924
    :cond_0
    return-void
.end method

.method doOffsetsChanged(Z)V
    .locals 14
    .param p1, "always"    # Z

    .prologue
    const/high16 v13, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    .line 969
    iget-boolean v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v10, :cond_1

    .line 1013
    :cond_0
    :goto_0
    return-void

    .line 973
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    if-eqz v10, :cond_0

    .line 982
    :cond_2
    iget-object v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 983
    :try_start_0
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    .line 984
    .local v1, "xOffset":F
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    .line 985
    .local v2, "yOffset":F
    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    .line 986
    .local v3, "xOffsetStep":F
    iget v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    .line 987
    .local v4, "yOffsetStep":F
    iget-boolean v9, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    .line 988
    .local v9, "sync":Z
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    .line 989
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    .line 990
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 992
    iget-boolean v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v10, :cond_3

    .line 993
    iget-boolean v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v10, :cond_6

    .line 994
    const-string v10, "WallpaperService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Offsets change in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget-object v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v10, v10, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    iget v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    sub-int v8, v10, v11

    .line 997
    .local v8, "availw":I
    if-lez v8, :cond_4

    int-to-float v10, v8

    mul-float/2addr v10, v1

    add-float/2addr v10, v13

    float-to-int v10, v10

    neg-int v5, v10

    .line 998
    .local v5, "xPixels":I
    :goto_1
    iget-object v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v10, v10, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    iget v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    sub-int v7, v10, v11

    .line 999
    .local v7, "availh":I
    if-lez v7, :cond_5

    int-to-float v0, v7

    mul-float/2addr v0, v2

    add-float/2addr v0, v13

    float-to-int v0, v0

    neg-int v6, v0

    .local v6, "yPixels":I
    :goto_2
    move-object v0, p0

    .line 1000
    invoke-virtual/range {v0 .. v6}, Landroid/service/wallpaper/WallpaperService$Engine;->onOffsetsChanged(FFFFII)V

    .line 1006
    .end local v5    # "xPixels":I
    .end local v6    # "yPixels":I
    .end local v7    # "availh":I
    .end local v8    # "availw":I
    :cond_3
    :goto_3
    if-eqz v9, :cond_0

    .line 1008
    :try_start_1
    const-string v0, "WallpaperService"

    const-string v10, "Reporting offsets change complete"

    invoke-static {v0, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v10}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-interface {v0, v10}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1010
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 990
    .end local v1    # "xOffset":F
    .end local v2    # "yOffset":F
    .end local v3    # "xOffsetStep":F
    .end local v4    # "yOffsetStep":F
    .end local v9    # "sync":Z
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .restart local v1    # "xOffset":F
    .restart local v2    # "yOffset":F
    .restart local v3    # "xOffsetStep":F
    .restart local v4    # "yOffsetStep":F
    .restart local v8    # "availw":I
    .restart local v9    # "sync":Z
    :cond_4
    move v5, v0

    .line 997
    goto :goto_1

    .restart local v5    # "xPixels":I
    .restart local v7    # "availh":I
    :cond_5
    move v6, v0

    .line 999
    goto :goto_2

    .line 1002
    .end local v5    # "xPixels":I
    .end local v7    # "availh":I
    .end local v8    # "availw":I
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    goto :goto_3
.end method

.method doVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 928
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 929
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 932
    :cond_0
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 933
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 934
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility()V

    .line 936
    :cond_1
    return-void
.end method

.method protected dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "out"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 550
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInitializing="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 551
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 552
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 553
    const-string v0, " mReportedVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 554
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDisplay="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 555
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCreated="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 556
    const-string v0, " mSurfaceCreated="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 557
    const-string v0, " mIsCreating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 558
    const-string v0, " mDrawingAllowed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 559
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 560
    const-string v0, " mCurWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 561
    const-string v0, " mHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 562
    const-string v0, " mCurHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 563
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mType="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 564
    const-string v0, " mWindowFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 565
    const-string v0, " mCurWindowFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 566
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWindowPrivateFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 567
    const-string v0, " mCurWindowPrivateFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 568
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVisibleInsets="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 570
    const-string v0, " mWinFrame="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 571
    const-string v0, " mContentInsets="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mConfiguration="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 573
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 574
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 575
    :try_start_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPendingXOffset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 576
    const-string v0, " mPendingXOffset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 577
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPendingXOffsetStep="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 578
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 579
    const-string v0, " mPendingXOffsetStep="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 580
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOffsetMessageEnqueued="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 581
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 582
    const-string v0, " mPendingSync="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 583
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPendingMove="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 586
    :cond_0
    monitor-exit v1

    .line 587
    return-void

    .line 586
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDesiredMinimumHeight()I
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    return v0
.end method

.method public getDesiredMinimumWidth()I
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    return v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    return-object v0
.end method

.method public isPreview()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)V
    .locals 0
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 469
    return-void
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "resultRequested"    # Z

    .prologue
    .line 511
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 443
    return-void
.end method

.method public onDesiredSizeChanged(II)V
    .locals 0
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I

    .prologue
    .line 519
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 451
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 0
    .param p1, "xOffset"    # F
    .param p2, "yOffset"    # F
    .param p3, "xOffsetStep"    # F
    .param p4, "yOffsetStep"    # F
    .param p5, "xPixelOffset"    # I
    .param p6, "yPixelOffset"    # I

    .prologue
    .line 490
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 526
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 540
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 547
    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 533
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 479
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 459
    return-void
.end method

.method reportSurfaceDestroyed()V
    .locals 8

    .prologue
    .line 1033
    iget-boolean v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v5, :cond_1

    .line 1034
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 1035
    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 1036
    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v2

    .line 1037
    .local v2, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v2, :cond_0

    .line 1038
    move-object v0, v2

    .local v0, "arr$":[Landroid/view/SurfaceHolder$Callback;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 1039
    .local v1, "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v1, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1038
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1042
    .end local v0    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v1    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    const-string v5, "WallpaperService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSurfaceDestroyed("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v5}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1046
    .end local v2    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_1
    return-void
.end method

.method reportVisibility()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 939
    iget-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v3, :cond_3

    .line 940
    iget-boolean v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    if-eqz v3, :cond_4

    move v3, v1

    :goto_0
    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getState()I

    move-result v3

    if-eq v3, v1, :cond_5

    .line 942
    .local v1, "visible":Z
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 944
    .local v0, "packageName":Ljava/lang/String;
    iget-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-ne v3, v1, :cond_0

    iget-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    if-eqz v3, :cond_3

    .line 945
    :cond_0
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    .line 946
    const-string v3, "WallpaperService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onVisibilityChanged("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    if-eqz v1, :cond_1

    .line 952
    invoke-virtual {p0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    .line 953
    invoke-virtual {p0, v2, v2, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 956
    :cond_1
    if-eqz v0, :cond_2

    .line 957
    const-string v2, "com.android.systemui.ImageWallpaper"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.media.vlw.VideoLiveWallpaper"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 959
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    # invokes: Landroid/service/wallpaper/WallpaperService;->mutliCoreEnable(Z)V
    invoke-static {v2, v1}, Landroid/service/wallpaper/WallpaperService;->access$200(Landroid/service/wallpaper/WallpaperService;Z)V

    .line 963
    :cond_2
    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 966
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "visible":Z
    :cond_3
    return-void

    :cond_4
    move v3, v2

    .line 940
    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method public setFixedSizeAllowed(Z)V
    .locals 0
    .param p1, "allowed"    # Z

    .prologue
    .line 435
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFixedSizeAllowed:Z

    .line 436
    return-void
.end method

.method public setOffsetNotificationsEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 423
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    or-int/lit8 v0, v0, 0x4

    :goto_0
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    .line 428
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {p0, v1, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 431
    :cond_0
    return-void

    .line 423
    :cond_1
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    and-int/lit8 v0, v0, -0x5

    goto :goto_0
.end method

.method public setTouchEventsEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 406
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    and-int/lit8 v0, v0, -0x11

    :goto_0
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    .line 409
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p0, v1, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 412
    :cond_0
    return-void

    .line 406
    :cond_1
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    or-int/lit8 v0, v0, 0x10

    goto :goto_0
.end method

.method updateSurface(ZZZ)V
    .locals 45
    .param p1, "forceRelayout"    # Z
    .param p2, "forceReport"    # Z
    .param p3, "redrawNeeded"    # Z

    .prologue
    .line 606
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v2, :cond_0

    .line 607
    const-string v2, "WallpaperService"

    const-string v3, "Ignoring updateSurface: destroyed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_0
    const/16 v24, 0x0

    .line 611
    .local v24, "fixedSize":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedWidth()I

    move-result v35

    .line 612
    .local v35, "myWidth":I
    if-gtz v35, :cond_6

    const/16 v35, -0x1

    .line 614
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedHeight()I

    move-result v34

    .line 615
    .local v34, "myHeight":I
    if-gtz v34, :cond_7

    const/16 v34, -0x1

    .line 618
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-nez v2, :cond_8

    const/16 v20, 0x1

    .line 619
    .local v20, "creating":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-nez v2, :cond_9

    const/16 v40, 0x1

    .line 620
    .local v40, "surfaceCreating":Z
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v3

    if-eq v2, v3, :cond_a

    const/16 v26, 0x1

    .line 621
    .local v26, "formatChanged":Z
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    move/from16 v0, v35

    if-ne v2, v0, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    move/from16 v0, v34

    if-eq v2, v0, :cond_b

    :cond_1
    const/16 v39, 0x1

    .line 622
    .local v39, "sizeChanged":Z
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-nez v2, :cond_c

    const/16 v30, 0x1

    .line 623
    .local v30, "insetsChanged":Z
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v3

    if-eq v2, v3, :cond_d

    const/16 v41, 0x1

    .line 624
    .local v41, "typeChanged":Z
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    if-eq v2, v3, :cond_e

    :cond_2
    const/16 v25, 0x1

    .line 626
    .local v25, "flagsChanged":Z
    :goto_8
    if-nez p1, :cond_3

    if-nez v20, :cond_3

    if-nez v40, :cond_3

    if-nez v26, :cond_3

    if-nez v39, :cond_3

    if-nez v41, :cond_3

    if-nez v25, :cond_3

    if-nez p3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v2, v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    if-nez v2, :cond_5

    .line 630
    :cond_3
    const-string v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Changes: creating="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " format="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :try_start_0
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    .line 635
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 641
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v35

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v34

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 646
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    or-int/lit16 v3, v3, 0x200

    or-int/lit16 v3, v3, 0x100

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 652
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    .line 656
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 658
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-nez v2, :cond_12

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/service/wallpaper/WallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/view/WindowManager;

    .line 662
    .local v43, "windowService":Landroid/view/WindowManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    sget-object v3, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v2, v3}, Landroid/service/wallpaper/WallpaperService;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v44

    .line 664
    .local v44, "windowStyle":Landroid/content/res/TypedArray;
    invoke-interface/range {v43 .. v43}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v22

    .line 665
    .local v22, "display":Landroid/view/Display;
    invoke-virtual/range {v22 .. v22}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_f

    const/16 v38, 0x1

    .line 667
    .local v38, "shouldUseBottomOutset":Z
    :goto_9
    if-eqz v38, :cond_10

    const/16 v2, 0x34

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 669
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsetBottom:Landroid/util/TypedValue;

    if-nez v2, :cond_4

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsetBottom:Landroid/util/TypedValue;

    .line 670
    :cond_4
    const/16 v2, 0x34

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsetBottom:Landroid/util/TypedValue;

    move-object/from16 v0, v44

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 675
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowIsRound:Z

    .line 677
    invoke-virtual/range {v44 .. v44}, Landroid/content/res/TypedArray;->recycle()V

    .line 680
    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v3, "goldfish"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsEmulator:Z

    .line 681
    const-string/jumbo v2, "ro.emulator.circular"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCircularEmulator:Z

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v3, v3, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowType:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 686
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x800033

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 687
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x10302e5

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 690
    new-instance v2, Landroid/view/InputChannel;

    invoke-direct {v2}, Landroid/view/InputChannel;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget v4, v4, Lcom/android/internal/view/BaseIWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    invoke-interface/range {v2 .. v10}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v2

    if-gez v2, :cond_11

    .line 694
    const-string v2, "WallpaperService"

    const-string v3, "Failed to add window while updating wallpaper surface."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    .end local v22    # "display":Landroid/view/Display;
    .end local v38    # "shouldUseBottomOutset":Z
    .end local v43    # "windowService":Landroid/view/WindowManager;
    .end local v44    # "windowStyle":Landroid/content/res/TypedArray;
    :cond_5
    :goto_b
    return-void

    .line 613
    .end local v20    # "creating":Z
    .end local v25    # "flagsChanged":Z
    .end local v26    # "formatChanged":Z
    .end local v30    # "insetsChanged":Z
    .end local v34    # "myHeight":I
    .end local v39    # "sizeChanged":Z
    .end local v40    # "surfaceCreating":Z
    .end local v41    # "typeChanged":Z
    :cond_6
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 616
    .restart local v34    # "myHeight":I
    :cond_7
    const/16 v24, 0x1

    goto/16 :goto_1

    .line 618
    :cond_8
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 619
    .restart local v20    # "creating":Z
    :cond_9
    const/16 v40, 0x0

    goto/16 :goto_3

    .line 620
    .restart local v40    # "surfaceCreating":Z
    :cond_a
    const/16 v26, 0x0

    goto/16 :goto_4

    .line 621
    .restart local v26    # "formatChanged":Z
    :cond_b
    const/16 v39, 0x0

    goto/16 :goto_5

    .line 622
    .restart local v39    # "sizeChanged":Z
    :cond_c
    const/16 v30, 0x0

    goto/16 :goto_6

    .line 623
    .restart local v30    # "insetsChanged":Z
    :cond_d
    const/16 v41, 0x0

    goto/16 :goto_7

    .line 624
    .restart local v41    # "typeChanged":Z
    :cond_e
    const/16 v25, 0x0

    goto/16 :goto_8

    .line 665
    .restart local v22    # "display":Landroid/view/Display;
    .restart local v25    # "flagsChanged":Z
    .restart local v43    # "windowService":Landroid/view/WindowManager;
    .restart local v44    # "windowStyle":Landroid/content/res/TypedArray;
    :cond_f
    const/16 v38, 0x0

    goto/16 :goto_9

    .line 673
    .restart local v38    # "shouldUseBottomOutset":Z
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsetBottom:Landroid/util/TypedValue;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_a

    .line 869
    .end local v22    # "display":Landroid/view/Display;
    .end local v38    # "shouldUseBottomOutset":Z
    .end local v43    # "windowService":Landroid/view/WindowManager;
    .end local v44    # "windowStyle":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v2

    .line 871
    :goto_c
    const-string v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Layout: x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 697
    .restart local v22    # "display":Landroid/view/Display;
    .restart local v38    # "shouldUseBottomOutset":Z
    .restart local v43    # "windowService":Landroid/view/WindowManager;
    .restart local v44    # "windowStyle":Landroid/content/res/TypedArray;
    :cond_11
    const/4 v2, 0x1

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 699
    new-instance v2, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/InputChannel;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    .line 703
    .end local v22    # "display":Landroid/view/Display;
    .end local v38    # "shouldUseBottomOutset":Z
    .end local v43    # "windowService":Landroid/view/WindowManager;
    .end local v44    # "windowStyle":Landroid/content/res/TypedArray;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v2, v2, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 704
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    .line 706
    if-nez v24, :cond_16

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 711
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget v4, v4, Lcom/android/internal/view/BaseIWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    move-object/from16 v16, v0

    invoke-interface/range {v2 .. v16}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v37

    .line 716
    .local v37, "relayoutResult":I
    const-string v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New surface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", frame="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v42

    .line 720
    .local v42, "w":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v27

    .line 722
    .local v27, "h":I
    if-nez v24, :cond_13

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    .line 724
    .local v36, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, v36

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v36

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int v42, v42, v2

    .line 725
    move-object/from16 v0, v36

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v36

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    add-int v27, v27, v2

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 728
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 729
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 730
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 732
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 734
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 735
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 737
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 740
    .end local v36    # "padding":Landroid/graphics/Rect;
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    move/from16 v0, v42

    if-eq v2, v0, :cond_14

    .line 741
    const/16 v39, 0x1

    .line 742
    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    .line 744
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    move/from16 v0, v27

    if-eq v2, v0, :cond_15

    .line 745
    const/16 v39, 0x1

    .line 746
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    .line 749
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    :goto_e
    or-int v30, v30, v2

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    const/4 v2, 0x1

    :goto_f
    or-int v30, v30, v2

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const/4 v2, 0x1

    :goto_10
    or-int v30, v30, v2

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move/from16 v0, v42

    move/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v2, v2, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v2, v2, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 757
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V

    .line 758
    const-string v2, "WallpaperService"

    const-string v3, "Layout: Surface destroyed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 709
    .end local v27    # "h":I
    .end local v37    # "relayoutResult":I
    .end local v42    # "w":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_d

    .line 749
    .restart local v27    # "h":I
    .restart local v37    # "relayoutResult":I
    .restart local v42    # "w":I
    :cond_17
    const/4 v2, 0x0

    goto :goto_e

    .line 750
    :cond_18
    const/4 v2, 0x0

    goto :goto_f

    .line 751
    :cond_19
    const/4 v2, 0x0

    goto :goto_10

    .line 762
    :cond_1a
    const/16 v21, 0x0

    .line 765
    .local v21, "didSurface":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 767
    if-eqz v40, :cond_1b

    .line 768
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 769
    const/16 v21, 0x1

    .line 770
    const-string v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSurfaceCreated("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 773
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v19

    .line 774
    .local v19, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v19, :cond_1b

    .line 775
    move-object/from16 v17, v19

    .local v17, "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v32, v0

    .local v32, "len$":I
    const/16 v28, 0x0

    .local v28, "i$":I
    :goto_11
    move/from16 v0, v28

    move/from16 v1, v32

    if-ge v0, v1, :cond_1b

    aget-object v18, v17, v28

    .line 776
    .local v18, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 775
    add-int/lit8 v28, v28, 0x1

    goto :goto_11

    .line 781
    .end local v17    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v18    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v19    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v28    # "i$":I
    .end local v32    # "len$":I
    :cond_1b
    if-nez v20, :cond_1c

    and-int/lit8 v2, v37, 0x2

    if-eqz v2, :cond_1e

    :cond_1c
    const/4 v2, 0x1

    :goto_12
    or-int p3, p3, v2

    .line 784
    if-nez p2, :cond_1d

    if-nez v20, :cond_1d

    if-nez v40, :cond_1d

    if-nez v26, :cond_1d

    if-eqz v39, :cond_1f

    .line 787
    :cond_1d
    new-instance v23, Ljava/lang/RuntimeException;

    invoke-direct/range {v23 .. v23}, Ljava/lang/RuntimeException;-><init>()V

    .line 788
    .local v23, "e":Ljava/lang/RuntimeException;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 789
    const-string v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceReport="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " creating="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " formatChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sizeChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 793
    const-string v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSurfaceChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const/16 v21, 0x1

    .line 798
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 800
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v19

    .line 801
    .restart local v19    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v19, :cond_1f

    .line 802
    move-object/from16 v17, v19

    .restart local v17    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v32, v0

    .restart local v32    # "len$":I
    const/16 v28, 0x0

    .restart local v28    # "i$":I
    :goto_13
    move/from16 v0, v28

    move/from16 v1, v32

    if-ge v0, v1, :cond_1f

    aget-object v18, v17, v28

    .line 803
    .restart local v18    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 802
    add-int/lit8 v28, v28, 0x1

    goto :goto_13

    .line 781
    .end local v17    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v18    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v19    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v23    # "e":Ljava/lang/RuntimeException;
    .end local v28    # "i$":I
    .end local v32    # "len$":I
    :cond_1e
    const/4 v2, 0x0

    goto/16 :goto_12

    .line 809
    :cond_1f
    if-eqz v30, :cond_23

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 813
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsEmulator:Z

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCircularEmulator:Z

    if-nez v2, :cond_21

    :cond_20
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowIsRound:Z

    if-eqz v2, :cond_25

    :cond_21
    const/16 v31, 0x1

    .line 815
    .local v31, "isRound":Z
    :goto_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalSystemInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 817
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsetBottom:Landroid/util/TypedValue;

    if-eqz v2, :cond_22

    .line 818
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v33

    .line 819
    .local v33, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalSystemInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsetBottom:Landroid/util/TypedValue;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v4, v4, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 823
    .end local v33    # "metrics":Landroid/util/DisplayMetrics;
    :cond_22
    new-instance v29, Landroid/view/WindowInsets;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalSystemInsets:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 825
    .local v29, "insets":Landroid/view/WindowInsets;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onApplyWindowInsets(Landroid/view/WindowInsets;)V

    .line 828
    .end local v29    # "insets":Landroid/view/WindowInsets;
    .end local v31    # "isRound":Z
    :cond_23
    if-eqz p3, :cond_26

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 830
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v19

    .line 831
    .restart local v19    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v19, :cond_26

    .line 832
    move-object/from16 v17, v19

    .restart local v17    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v32, v0

    .restart local v32    # "len$":I
    const/16 v28, 0x0

    .restart local v28    # "i$":I
    :goto_15
    move/from16 v0, v28

    move/from16 v1, v32

    if-ge v0, v1, :cond_26

    aget-object v18, v17, v28

    .line 833
    .restart local v18    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v18

    instance-of v2, v0, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v2, :cond_24

    .line 834
    check-cast v18, Landroid/view/SurfaceHolder$Callback2;

    .end local v18    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 832
    :cond_24
    add-int/lit8 v28, v28, 0x1

    goto :goto_15

    .line 813
    .end local v17    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v19    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v28    # "i$":I
    .end local v32    # "len$":I
    :cond_25
    const/16 v31, 0x0

    goto/16 :goto_14

    .line 841
    :cond_26
    if-eqz v21, :cond_28

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-nez v2, :cond_28

    .line 847
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    if-eqz v2, :cond_27

    .line 852
    const-string v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onVisibilityChanged(true) at surface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 856
    :cond_27
    const-string v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onVisibilityChanged(false) at surface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 862
    :cond_28
    const/4 v2, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 863
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 864
    if-eqz p3, :cond_29

    .line 865
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 867
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->reportShown()V

    goto/16 :goto_c

    .line 862
    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 863
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 864
    if-eqz p3, :cond_2a

    .line 865
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 867
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    invoke-virtual {v3}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->reportShown()V

    throw v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
.end method
