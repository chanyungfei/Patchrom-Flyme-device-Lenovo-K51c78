.class Lcom/android/server/wm/ResizingFrame;
.super Ljava/lang/Object;
.source "ResizingFrame.java"


# static fields
.field private static final ALPHA:F = 0.5f

.field static DEBUG_STACK:Z = false

.field private static final MAX_SCREENSHOT_RETRIES:I = 0x3

.field public static final RESIZE_DOWN:I = 0x2

.field public static final RESIZE_LEFT:I = 0x4

.field public static final RESIZE_NONE:I = 0x0

.field public static final RESIZE_RIGHT:I = 0x8

.field public static final RESIZE_UP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ResizingFrame"

.field private static final THICKNESS:I = 0xa


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field mContext:Landroid/content/Context;

.field mCurrentWin:Lcom/android/server/wm/WindowState;

.field mDisplay:Landroid/view/Display;

.field mDsDx:F

.field mDsDy:F

.field mDtDx:F

.field mDtDy:F

.field private mEnableMotion:Z

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field mSession:Landroid/view/SurfaceSession;

.field private mStack:Lcom/android/server/wm/TaskStack;

.field private final mSurface:Landroid/view/Surface;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/ResizingFrame;->DEBUG_STACK:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/Display;Landroid/view/SurfaceSession;Landroid/content/Context;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "session"    # Landroid/view/SurfaceSession;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v4, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 53
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurface:Landroid/view/Surface;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    .line 55
    iput-object v4, p0, Lcom/android/server/wm/ResizingFrame;->mStack:Lcom/android/server/wm/TaskStack;

    .line 68
    iput-boolean v3, p0, Lcom/android/server/wm/ResizingFrame;->mEnableMotion:Z

    .line 70
    iput v2, p0, Lcom/android/server/wm/ResizingFrame;->mDsDx:F

    iput v1, p0, Lcom/android/server/wm/ResizingFrame;->mDtDx:F

    iput v1, p0, Lcom/android/server/wm/ResizingFrame;->mDsDy:F

    iput v2, p0, Lcom/android/server/wm/ResizingFrame;->mDtDy:F

    .line 72
    iput-boolean v3, p0, Lcom/android/server/wm/ResizingFrame;->mVisible:Z

    .line 81
    iput-object p1, p0, Lcom/android/server/wm/ResizingFrame;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 82
    iput-object p2, p0, Lcom/android/server/wm/ResizingFrame;->mDisplay:Landroid/view/Display;

    .line 83
    iput-object p3, p0, Lcom/android/server/wm/ResizingFrame;->mSession:Landroid/view/SurfaceSession;

    .line 84
    iput-object p4, p0, Lcom/android/server/wm/ResizingFrame;->mContext:Landroid/content/Context;

    .line 85
    return-void
.end method

.method private createSurfaceLocked()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 88
    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_0

    .line 89
    const-string v1, "ResizingFrame"

    const-string v2, "[BMW]createSurfaceLocked mSurfaceControl is not null. Copy the original surface to mSurface."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mSurface:Landroid/view/Surface;

    iget-object v2, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    move v1, v10

    .line 131
    :goto_0
    return v1

    .line 94
    :cond_0
    const/4 v8, 0x0

    .line 96
    .local v8, "ctrl":Landroid/view/SurfaceControl;
    :try_start_0
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v1, :cond_1

    .line 97
    new-instance v0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mSession:Landroid/view/SurfaceSession;

    const-string v2, "ResizingFrame"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x3

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v8    # "ctrl":Landroid/view/SurfaceControl;
    .local v0, "ctrl":Landroid/view/SurfaceControl;
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getLayerStack()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 104
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 105
    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_3

    .line 110
    iput-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 112
    const/4 v7, 0x0

    .line 114
    .local v7, "c":Landroid/graphics/Canvas;
    :try_start_2
    const-string v1, "ResizingFrame"

    const-string v2, "[BMW]drawBitmap: lockCanvas"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    .line 120
    :goto_2
    if-nez v7, :cond_2

    move v1, v11

    .line 121
    goto :goto_0

    .line 100
    .end local v0    # "ctrl":Landroid/view/SurfaceControl;
    .end local v7    # "c":Landroid/graphics/Canvas;
    .restart local v8    # "ctrl":Landroid/view/SurfaceControl;
    :cond_1
    :try_start_3
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mSession:Landroid/view/SurfaceSession;

    const-string v2, "ResizingFrame"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x3

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v8    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v0    # "ctrl":Landroid/view/SurfaceControl;
    goto :goto_1

    .line 106
    .end local v0    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v8    # "ctrl":Landroid/view/SurfaceControl;
    :catch_0
    move-exception v9

    move-object v0, v8

    .line 107
    .end local v8    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v0    # "ctrl":Landroid/view/SurfaceControl;
    .local v9, "e":Landroid/view/Surface$OutOfResourcesException;
    :goto_3
    const-string v1, "ResizingFrame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BMW]createSurfaceLocked OutOfResourcesException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v11

    .line 108
    goto :goto_0

    .line 124
    .end local v9    # "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v7    # "c":Landroid/graphics/Canvas;
    :cond_2
    const-string v1, "ResizingFrame"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BMW]drawBitmap: Canvas height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const v1, -0xc65e2

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 130
    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v7}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    move v1, v10

    .line 131
    goto/16 :goto_0

    .line 118
    :catch_1
    move-exception v1

    goto :goto_2

    .line 117
    :catch_2
    move-exception v1

    goto :goto_2

    .line 106
    .end local v7    # "c":Landroid/graphics/Canvas;
    :catch_3
    move-exception v9

    goto :goto_3
.end method

.method private cropSurface(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 166
    sget-boolean v0, Lcom/android/server/wm/ResizingFrame;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string v0, "ResizingFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BMW]cropSurface: crop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_2

    .line 169
    :cond_1
    :goto_0
    return-void

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private destroySurfaceLocked()Z
    .locals 5

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, "ctrl":Landroid/view/SurfaceControl;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ResizingFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 138
    iget-object v2, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->destroy()V

    .line 140
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string v2, "ResizingFrame"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BMW]destroySurfaceLocked OutOfResourcesException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private positionSurface(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 150
    sget-boolean v0, Lcom/android/server/wm/ResizingFrame;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string v0, "ResizingFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BMW]positionSurface: bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1

    .line 163
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/wm/ResizingFrame;->mDsDx:F

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/wm/ResizingFrame;->mDtDy:F

    .line 158
    sget-boolean v0, Lcom/android/server/wm/ResizingFrame;->DEBUG_STACK:Z

    if-eqz v0, :cond_2

    const-string v0, "ResizingFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BMW]updateSurface: setMatrix  matrix=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/ResizingFrame;->mDsDx:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/ResizingFrame;->mDtDx:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/ResizingFrame;->mDsDy:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/ResizingFrame;->mDtDy:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/ResizingFrame;->mDsDx:F

    iget v2, p0, Lcom/android/server/wm/ResizingFrame;->mDtDx:F

    iget v3, p0, Lcom/android/server/wm/ResizingFrame;->mDsDy:F

    iget v4, p0, Lcom/android/server/wm/ResizingFrame;->mDtDy:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_0
.end method


# virtual methods
.method public copyBounds2Box()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    .line 236
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 237
    sget-boolean v0, Lcom/android/server/wm/ResizingFrame;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string v0, "ResizingFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BMW]copyBounds2Box: copyBounds2Box = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableMotion(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/android/server/wm/ResizingFrame;->mEnableMotion:Z

    .line 247
    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 202
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public initBounds(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/TaskStack;)V
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    .line 216
    sget-boolean v0, Lcom/android/server/wm/ResizingFrame;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string v0, "ResizingFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BMW]initBounds: win="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    if-nez p2, :cond_2

    .line 230
    :cond_1
    :goto_0
    return-void

    .line 220
    :cond_2
    iput-object p2, p0, Lcom/android/server/wm/ResizingFrame;->mStack:Lcom/android/server/wm/TaskStack;

    .line 221
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 222
    iput-object p1, p0, Lcom/android/server/wm/ResizingFrame;->mCurrentWin:Lcom/android/server/wm/WindowState;

    .line 224
    invoke-direct {p0}, Lcom/android/server/wm/ResizingFrame;->createSurfaceLocked()Z

    .line 226
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/ResizingFrame;->positionSurface(Landroid/graphics/Rect;)V

    .line 228
    sget-boolean v0, Lcom/android/server/wm/ResizingFrame;->DEBUG_STACK:Z

    if-eqz v0, :cond_1

    const-string v0, "ResizingFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BMW]initBounds: mBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isEnableMotion()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/android/server/wm/ResizingFrame;->mEnableMotion:Z

    return v0
.end method

.method public isFocusWinChanged(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "currentFocus"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mCurrentWin:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_0

    .line 255
    const/4 v0, 0x1

    .line 256
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/android/server/wm/ResizingFrame;->mVisible:Z

    return v0
.end method

.method public setLayer(I)V
    .locals 1
    .param p1, "layer"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    goto :goto_0
.end method

.method public setVisibility(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    .line 174
    sget-boolean v0, Lcom/android/server/wm/ResizingFrame;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string v0, "ResizingFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BMW]setVisibility: on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1

    .line 193
    :goto_0
    return-void

    .line 179
    :cond_1
    if-eqz p1, :cond_2

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ResizingFrame;->mVisible:Z

    goto :goto_0

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 184
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mCurrentWin:Lcom/android/server/wm/WindowState;

    .line 188
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/wm/ResizingFrame;->mDtDy:F

    iput v0, p0, Lcom/android/server/wm/ResizingFrame;->mDsDx:F

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ResizingFrame;->mDsDy:F

    iput v0, p0, Lcom/android/server/wm/ResizingFrame;->mDtDx:F

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/ResizingFrame;->mDsDx:F

    iget v2, p0, Lcom/android/server/wm/ResizingFrame;->mDtDx:F

    iget v3, p0, Lcom/android/server/wm/ResizingFrame;->mDsDy:F

    iget v4, p0, Lcom/android/server/wm/ResizingFrame;->mDtDy:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ResizingFrame;->mVisible:Z

    goto :goto_0
.end method

.method public updateBoundary(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 206
    sget-boolean v0, Lcom/android/server/wm/ResizingFrame;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string v0, "ResizingFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BMW]updateBoundary: bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 209
    return-void
.end method

.method public updateSurface()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/server/wm/ResizingFrame;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/ResizingFrame;->positionSurface(Landroid/graphics/Rect;)V

    .line 213
    return-void
.end method
