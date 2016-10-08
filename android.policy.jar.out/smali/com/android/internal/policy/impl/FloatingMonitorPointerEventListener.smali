.class public Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;
.super Ljava/lang/Object;
.source "FloatingMonitorPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# static fields
.field static DEBUG:Z = false

.field private static final MOTION_MODE_DRAG:I = 0x1

.field private static final MOTION_MODE_NONE:I = 0x0

.field private static final RESIZE_DIRECTION_ALL:I = 0x10

.field static final TAG:Ljava/lang/String; = "FloatingMonitor"


# instance fields
.field private mBottomBarRect:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mCtrlBarBtnWidth:I

.field private mCtrlBarHeight:I

.field private mCtrlBarRect:Landroid/graphics/Rect;

.field mEnabledResizeDirections:[I

.field private mFocusRect:Landroid/graphics/Rect;

.field private mFocusWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field final mFocusWindowLock:Ljava/lang/Object;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLeftBarRect:Landroid/graphics/Rect;

.field private mMonitorRect:Landroid/graphics/Rect;

.field mMotionMode:I

.field private final mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field mResizeDirect:I

.field private mRightBarRect:Landroid/graphics/Rect;

.field private mTopBarRect:Landroid/graphics/Rect;

.field private mWindowFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v3, 0x0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput v3, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mMotionMode:I

    .line 74
    iput v3, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mCtrlBarRect:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mTopBarRect:Landroid/graphics/Rect;

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mBottomBarRect:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mRightBarRect:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mLeftBarRect:Landroid/graphics/Rect;

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mMonitorRect:Landroid/graphics/Rect;

    .line 90
    iput v3, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mCtrlBarHeight:I

    iput v3, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mCtrlBarBtnWidth:I

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusWindowLock:Ljava/lang/Object;

    .line 95
    new-instance v0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener$1;-><init>(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 225
    iput-object p1, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mContext:Landroid/content/Context;

    .line 226
    iput-object p2, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mWindowFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 228
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 231
    iget-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 233
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->computeCtrlBarRegion()V

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x8040004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mEnabledResizeDirections:[I

    .line 237
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusWindow:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mMonitorRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->checkResizeDirectionEnabled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mCtrlBarRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mCtrlBarBtnWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mCtrlBarHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mTopBarRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mBottomBarRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mRightBarRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mLeftBarRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private checkResizeDirectionEnabled(I)Z
    .locals 5
    .param p1, "currentResizeDirect"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mEnabledResizeDirections:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget v1, v0, v2

    .line 303
    .local v1, "i":I
    const/16 v4, 0x10

    if-eq v1, v4, :cond_0

    if-ne v1, p1, :cond_1

    .line 304
    :cond_0
    const/4 v4, 0x1

    .line 306
    .end local v1    # "i":I
    :goto_1
    return v4

    .line 302
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 306
    .end local v1    # "i":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private computeCtrlBarRegion()V
    .locals 4

    .prologue
    .line 278
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 279
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v2, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mContext:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 282
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 285
    iget v2, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    mul-int/lit16 v2, v2, 0x82

    div-int/lit16 v2, v2, 0xa0

    iput v2, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mCtrlBarBtnWidth:I

    .line 286
    iget v2, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    mul-int/lit8 v2, v2, 0x2c

    div-int/lit16 v2, v2, 0xa0

    iput v2, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mCtrlBarHeight:I

    .line 288
    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 247
    .local v0, "action":I
    sget-boolean v1, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 248
    const-string v1, "FloatingMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BMW]Input Motion Event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v1

    if-nez v1, :cond_1

    .line 252
    const-string v1, "FloatingMonitor"

    const-string v2, "[BMW]Multi Window Service not ready!"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :goto_0
    return-void

    .line 257
    :cond_1
    if-eq v0, v5, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v5, :cond_5

    .line 259
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mMotionMode:I

    if-eqz v1, :cond_4

    .line 261
    :cond_3
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/mediatek/multiwindow/MultiWindowProxy;->enableFocusedFrame(Z)V

    .line 263
    :cond_4
    iput v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mMotionMode:I

    .line 264
    iput v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    goto :goto_0

    .line 266
    :cond_5
    if-nez v0, :cond_6

    .line 269
    iput v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mMotionMode:I

    .line 270
    iput v4, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mResizeDirect:I

    .line 272
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public updatFocusWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .param p1, "focusWindow"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 240
    iget-object v1, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusWindowLock:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mFocusWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 242
    monitor-exit v1

    .line 243
    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateMonitorRect(IIII)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 291
    sget-boolean v0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 292
    const-string v0, "FloatingMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BMW]updateMonitorRect ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mMonitorRect:Landroid/graphics/Rect;

    monitor-enter v1

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FloatingMonitorPointerEventListener;->mMonitorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 298
    monitor-exit v1

    .line 299
    return-void

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
