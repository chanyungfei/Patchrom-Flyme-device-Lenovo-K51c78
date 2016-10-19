.class Lcom/android/server/wm/ScreenRotationAnimation;
.super Ljava/lang/Object;
.source "ScreenRotationAnimation.java"


# static fields
.field static DEBUG_STATE:Z = false

.field static DEBUG_TRANSFORMS:Z = false

.field static final FREEZE_LAYER:I = 0x1e8480

.field static final TAG:Ljava/lang/String; = "ScreenRotationAnimation"

.field static TWO_PHASE_ANIMATION:Z

.field static USE_CUSTOM_BLACK_FRAME:Z


# instance fields
.field mAnimRunning:Z

.field final mContext:Landroid/content/Context;

.field mCurRotation:I

.field mCurrentDisplayRect:Landroid/graphics/Rect;

.field mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field final mEnterTransformation:Landroid/view/animation/Transformation;

.field mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

.field final mExitFrameFinalMatrix:Landroid/graphics/Matrix;

.field final mExitTransformation:Landroid/view/animation/Transformation;

.field mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

.field mFinishAnimReady:Z

.field mFinishAnimStartTime:J

.field mFinishEnterAnimation:Landroid/view/animation/Animation;

.field final mFinishEnterTransformation:Landroid/view/animation/Transformation;

.field mFinishExitAnimation:Landroid/view/animation/Animation;

.field final mFinishExitTransformation:Landroid/view/animation/Transformation;

.field mFinishFrameAnimation:Landroid/view/animation/Animation;

.field final mFinishFrameTransformation:Landroid/view/animation/Transformation;

.field mForceDefaultOrientation:Z

.field final mFrameInitialMatrix:Landroid/graphics/Matrix;

.field final mFrameTransformation:Landroid/view/animation/Transformation;

.field mHalfwayPoint:J

.field mHeight:I

.field mLastRotateEnterAnimation:Landroid/view/animation/Animation;

.field final mLastRotateEnterTransformation:Landroid/view/animation/Transformation;

.field mLastRotateExitAnimation:Landroid/view/animation/Animation;

.field final mLastRotateExitTransformation:Landroid/view/animation/Transformation;

.field mLastRotateFrameAnimation:Landroid/view/animation/Animation;

.field final mLastRotateFrameTransformation:Landroid/view/animation/Transformation;

.field private mMoreFinishEnter:Z

.field private mMoreFinishExit:Z

.field private mMoreFinishFrame:Z

.field private mMoreRotateEnter:Z

.field private mMoreRotateExit:Z

.field private mMoreRotateFrame:Z

.field private mMoreStartEnter:Z

.field private mMoreStartExit:Z

.field private mMoreStartFrame:Z

.field mOriginalDisplayRect:Landroid/graphics/Rect;

.field mOriginalHeight:I

.field mOriginalRotation:I

.field mOriginalWidth:I

.field mRotateEnterAnimation:Landroid/view/animation/Animation;

.field final mRotateEnterTransformation:Landroid/view/animation/Transformation;

.field mRotateExitAnimation:Landroid/view/animation/Animation;

.field final mRotateExitTransformation:Landroid/view/animation/Transformation;

.field mRotateFrameAnimation:Landroid/view/animation/Animation;

.field final mRotateFrameTransformation:Landroid/view/animation/Transformation;

.field final mSnapshotFinalMatrix:Landroid/graphics/Matrix;

.field final mSnapshotInitialMatrix:Landroid/graphics/Matrix;

.field mStartEnterAnimation:Landroid/view/animation/Animation;

.field final mStartEnterTransformation:Landroid/view/animation/Transformation;

.field mStartExitAnimation:Landroid/view/animation/Animation;

.field final mStartExitTransformation:Landroid/view/animation/Transformation;

.field mStartFrameAnimation:Landroid/view/animation/Animation;

.field final mStartFrameTransformation:Landroid/view/animation/Transformation;

.field mStarted:Z

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field final mTmpFloats:[F

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    sput-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    .line 50
    sput-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    .line 51
    sput-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    .line 52
    sput-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceSession;ZZZ)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "session"    # Landroid/view/SurfaceSession;
    .param p4, "inTransaction"    # Z
    .param p5, "forceDefaultOrientation"    # Z
    .param p6, "isSecure"    # Z

    .prologue
    .line 212
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    .line 68
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    .line 79
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    .line 81
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    .line 83
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    .line 90
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    .line 92
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    .line 94
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    .line 100
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    .line 102
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    .line 104
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    .line 109
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mLastRotateExitTransformation:Landroid/view/animation/Transformation;

    .line 111
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mLastRotateEnterTransformation:Landroid/view/animation/Transformation;

    .line 113
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mLastRotateFrameTransformation:Landroid/view/animation/Transformation;

    .line 116
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    .line 117
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    .line 118
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    .line 126
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    .line 127
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    .line 128
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    .line 129
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    .line 130
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 131
    const/16 v2, 0x9

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    .line 213
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    .line 214
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v9

    .line 219
    .local v9, "display":Landroid/view/Display;
    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v13

    .line 222
    .local v13, "originalRotation":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    .line 223
    .local v10, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz p5, :cond_5

    .line 225
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    .line 226
    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 227
    .local v14, "originalWidth":I
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 233
    .local v12, "originalHeight":I
    :goto_0
    const/4 v2, 0x1

    if-eq v13, v2, :cond_0

    const/4 v2, 0x3

    if-ne v13, v2, :cond_6

    .line 235
    :cond_0
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    .line 236
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    .line 242
    :goto_1
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    .line 243
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    .line 244
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    .line 246
    if-nez p4, :cond_2

    .line 247
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v2, :cond_1

    const-string v2, "WindowManager"

    const-string v3, ">>> OPEN TRANSACTION ScreenRotationAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_1
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 254
    :cond_2
    const/4 v8, 0x4

    .line 255
    .local v8, "flags":I
    if-eqz p6, :cond_3

    .line 256
    or-int/lit16 v8, v8, 0x80

    .line 259
    :cond_3
    :try_start_0
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v2, :cond_7

    .line 260
    new-instance v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    const-string v4, "ScreenshotSurface"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    const/4 v7, -0x1

    move-object/from16 v3, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 263
    const-string v2, "ScreenRotationAnimation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScreenRotationAnimation ctor: displayOffset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_2
    new-instance v15, Landroid/view/Surface;

    invoke-direct {v15}, Landroid/view/Surface;-><init>()V

    .line 272
    .local v15, "sur":Landroid/view/Surface;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v15, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 274
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2, v15}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v9}, Landroid/view/Display;->getLayerStack()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v3, 0x1e8481

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->show()V

    .line 280
    invoke-virtual {v15}, Landroid/view/Surface;->destroy()V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    .end local v15    # "sur":Landroid/view/Surface;
    :goto_3
    const-wide/16 v2, 0x20

    :try_start_1
    const-string v4, "ScreenRotationAnimation:Create"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 287
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  FREEZE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": CREATE, w = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", h = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 290
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotationInTransaction(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    if-nez p4, :cond_4

    .line 293
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 294
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v2, :cond_4

    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION ScreenRotationAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_4
    return-void

    .line 230
    .end local v8    # "flags":I
    .end local v12    # "originalHeight":I
    .end local v14    # "originalWidth":I
    :cond_5
    iget v14, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 231
    .restart local v14    # "originalWidth":I
    iget v12, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    .restart local v12    # "originalHeight":I
    goto/16 :goto_0

    .line 238
    :cond_6
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    .line 239
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    goto/16 :goto_1

    .line 266
    .restart local v8    # "flags":I
    :cond_7
    :try_start_2
    new-instance v2, Landroid/view/SurfaceControl;

    const-string v4, "ScreenshotSurface"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    const/4 v7, -0x1

    move-object/from16 v3, p3

    invoke-direct/range {v2 .. v8}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 281
    :catch_0
    move-exception v11

    .line 282
    .local v11, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_3
    const-string v2, "ScreenRotationAnimation"

    const-string v3, "Unable to allocate freeze surface"

    invoke-static {v2, v3, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 292
    .end local v11    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v2

    if-nez p4, :cond_8

    .line 293
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 294
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v3, :cond_8

    const-string v3, "WindowManager"

    const-string v4, "<<< CLOSE TRANSACTION ScreenRotationAnimation"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    throw v2
.end method

.method public static createRotationMatrix(IIILandroid/graphics/Matrix;)V
    .locals 2
    .param p0, "rotation"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "outMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v1, 0x0

    .line 406
    packed-switch p0, :pswitch_data_0

    .line 423
    :goto_0
    return-void

    .line 408
    :pswitch_0
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0

    .line 411
    :pswitch_1
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 412
    int-to-float v0, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 415
    :pswitch_2
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 416
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 419
    :pswitch_3
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 420
    int-to-float v0, p1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 406
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static deltaRotation(II)I
    .locals 1
    .param p0, "oldRotation"    # I
    .param p1, "newRotation"    # I

    .prologue
    .line 355
    sub-int v0, p1, p0

    .line 356
    .local v0, "delta":I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 357
    :cond_0
    return v0
.end method

.method private hasAnimations()Z
    .locals 1

    .prologue
    .line 808
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setRotationInTransaction(I)V
    .locals 4
    .param p1, "rotation"    # I

    .prologue
    .line 427
    iput p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    .line 432
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->deltaRotation(II)I

    move-result v0

    .line 433
    .local v0, "delta":I
    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 436
    sget-boolean v1, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**** ROTATION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransformInTransaction(Landroid/graphics/Matrix;F)V

    .line 438
    return-void
.end method

.method private setSnapshotTransformInTransaction(Landroid/graphics/Matrix;F)V
    .locals 10
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "alpha"    # F

    .prologue
    .line 361
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_2

    .line 362
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 363
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v5, 0x2

    aget v2, v4, v5

    .line 364
    .local v2, "x":F
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v5, 0x5

    aget v3, v4, v5

    .line 365
    .local v3, "y":F
    iget-boolean v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    if-eqz v4, :cond_0

    .line 366
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 367
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 368
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 370
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 371
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    iget-object v8, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v9, 0x4

    aget v8, v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 374
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, p2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 377
    const-wide/16 v4, 0x20

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ScreenRotationAnimation:SetMatrix dsdx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dtdx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dsdy="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dtdy="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v8, 0x4

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 382
    sget-boolean v4, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v4, :cond_1

    .line 383
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetSnapshotTransformInTransaction SetMatrix dsdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dtdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dsdy="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dtdy="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v7, 0x4

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_1
    const-wide/16 v4, 0x20

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 391
    sget-boolean v4, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v4, :cond_2

    .line 392
    const/4 v4, 0x4

    new-array v1, v4, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v1, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v1, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    int-to-float v5, v5

    aput v5, v1, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    int-to-float v5, v5

    aput v5, v1, v4

    .line 393
    .local v1, "srcPnts":[F
    const/4 v4, 0x4

    new-array v0, v4, [F

    .line 394
    .local v0, "dstPnts":[F
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 396
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Original  : ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")-("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    aget v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transformed: ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")-("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    aget v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v0    # "dstPnts":[F
    .end local v1    # "srcPnts":[F
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_2
    return-void
.end method

.method private startAnimation(Landroid/view/SurfaceSession;JFIIZII)Z
    .locals 16
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "maxAnimationDuration"    # J
    .param p4, "animationScale"    # F
    .param p5, "finalWidth"    # I
    .param p6, "finalHeight"    # I
    .param p7, "dismissing"    # Z
    .param p8, "exitAnim"    # I
    .param p9, "enterAnim"    # I

    .prologue
    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_0

    .line 461
    const/4 v2, 0x0

    .line 707
    :goto_0
    return v2

    .line 463
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-eqz v2, :cond_1

    .line 464
    const/4 v2, 0x1

    goto :goto_0

    .line 467
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    .line 469
    const/4 v12, 0x0

    .line 472
    .local v12, "firstStart":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-static {v2, v3}, Lcom/android/server/wm/ScreenRotationAnimation;->deltaRotation(II)I

    move-result v10

    .line 474
    .local v10, "delta":I
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_5

    if-eqz p7, :cond_2

    if-eqz v10, :cond_5

    .line 476
    :cond_2
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_3

    const-string v2, "ScreenRotationAnimation"

    const-string v3, "Creating start and finish animations"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_3
    const/4 v12, 0x1

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0058

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0057

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    .line 482
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_4

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0059

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    .line 486
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a004f

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a004e

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    .line 490
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_5

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0050

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    .line 496
    :cond_5
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_6

    const-string v2, "ScreenRotationAnimation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rotation delta: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " finalWidth="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " finalHeight="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " origWidth="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " origHeight="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_6
    if-eqz p8, :cond_19

    if-eqz p9, :cond_19

    .line 502
    const/4 v9, 0x1

    .line 503
    .local v9, "customAnim":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    move/from16 v0, p8

    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    move/from16 v0, p9

    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 555
    :cond_7
    :goto_1
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v2, :cond_9

    if-eqz v12, :cond_9

    .line 559
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    add-int v2, v2, p5

    div-int/lit8 v14, v2, 0x2

    .line 560
    .local v14, "halfWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    add-int v2, v2, p6

    div-int/lit8 v13, v2, 0x2

    .line 562
    .local v13, "halfHeight":I
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_8

    const-string v2, "ScreenRotationAnimation"

    const-string v3, "Initializing start and finish animations"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1, v14, v13}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v2, v14, v13, v3, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1, v14, v13}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v2, v14, v13, v3, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 571
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_9

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1, v3, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1, v3, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 578
    .end local v13    # "halfHeight":I
    .end local v14    # "halfWidth":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1, v3, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1, v3, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 580
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_a

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v2, v0, v1, v3, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 584
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    .line 585
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    .line 586
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    .line 588
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v2, :cond_b

    if-eqz v12, :cond_b

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 597
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_b

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 604
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 608
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_c

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 613
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getLayerStack()I

    move-result v7

    .line 614
    .local v7, "layerStack":I
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-nez v2, :cond_10

    .line 615
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v2, :cond_d

    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_e

    :cond_d
    const-string v2, "WindowManager"

    const-string v3, ">>> OPEN TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_e
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 626
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v10, v2, v3, v6}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 629
    :try_start_0
    new-instance v4, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    neg-int v3, v3

    mul-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    mul-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    mul-int/lit8 v8, v8, 0x2

    invoke-direct {v4, v2, v3, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 631
    .local v4, "outer":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-direct {v5, v2, v3, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 632
    .local v5, "inner":Landroid/graphics/Rect;
    new-instance v2, Lcom/android/server/wm/BlackFrame;

    const v6, 0x1e8483

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceSession;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 639
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v2, :cond_f

    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_10

    :cond_f
    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    .end local v4    # "outer":Landroid/graphics/Rect;
    .end local v5    # "inner":Landroid/graphics/Rect;
    :cond_10
    :goto_2
    if-nez v9, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-nez v2, :cond_14

    .line 646
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v2, :cond_11

    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_12

    :cond_11
    const-string v2, "WindowManager"

    const-string v3, ">>> OPEN TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_12
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 657
    :try_start_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v10, v2, v3, v6}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 661
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    if-eqz v2, :cond_1d

    .line 665
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    .line 666
    .restart local v4    # "outer":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    .line 672
    .restart local v5    # "inner":Landroid/graphics/Rect;
    :goto_3
    new-instance v2, Lcom/android/server/wm/BlackFrame;

    const v6, 0x1e8482

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceSession;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 678
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 679
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v2, :cond_13

    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_14

    :cond_13
    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    .end local v4    # "outer":Landroid/graphics/Rect;
    .end local v5    # "inner":Landroid/graphics/Rect;
    :cond_14
    :goto_4
    if-eqz v9, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-nez v2, :cond_18

    .line 686
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v2, :cond_15

    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_16

    :cond_15
    const-string v2, "WindowManager"

    const-string v3, ">>> OPEN TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_16
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 692
    :try_start_2
    new-instance v4, Landroid/graphics/Rect;

    move/from16 v0, p5

    neg-int v2, v0

    mul-int/lit8 v2, v2, 0x1

    move/from16 v0, p6

    neg-int v3, v0

    mul-int/lit8 v3, v3, 0x1

    mul-int/lit8 v6, p5, 0x2

    mul-int/lit8 v8, p6, 0x2

    invoke-direct {v4, v2, v3, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 694
    .restart local v4    # "outer":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-direct {v5, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 695
    .restart local v5    # "inner":Landroid/graphics/Rect;
    new-instance v2, Lcom/android/server/wm/BlackFrame;

    const v6, 0x1e8480

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceSession;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;
    :try_end_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 700
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 701
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v2, :cond_17

    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_18

    :cond_17
    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    .end local v4    # "outer":Landroid/graphics/Rect;
    .end local v5    # "inner":Landroid/graphics/Rect;
    :cond_18
    :goto_5
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 506
    .end local v7    # "layerStack":I
    .end local v9    # "customAnim":Z
    :cond_19
    const/4 v9, 0x0

    .line 507
    .restart local v9    # "customAnim":Z
    packed-switch v10, :pswitch_data_0

    goto/16 :goto_1

    .line 509
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0049

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0048

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 513
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_7

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a004a

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1

    .line 519
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0055

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0054

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 523
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_7

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0056

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1

    .line 529
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a004c

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a004b

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 533
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_7

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a004d

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1

    .line 539
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0052

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0051

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 543
    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v2, :cond_7

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v3, 0x10a0053

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1

    .line 635
    .restart local v7    # "layerStack":I
    :catch_0
    move-exception v11

    .line 636
    .local v11, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_3
    const-string v2, "ScreenRotationAnimation"

    const-string v3, "Unable to allocate black surface"

    invoke-static {v2, v3, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 638
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 639
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v2, :cond_1a

    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_10

    :cond_1a
    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 638
    .end local v11    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 639
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v3, :cond_1b

    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_1c

    :cond_1b
    const-string v3, "WindowManager"

    const-string v6, "<<< CLOSE TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    throw v2

    .line 668
    :cond_1d
    :try_start_4
    new-instance v4, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    neg-int v3, v3

    mul-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    mul-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    mul-int/lit8 v8, v8, 0x2

    invoke-direct {v4, v2, v3, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 670
    .restart local v4    # "outer":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-direct {v5, v2, v3, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_4
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .restart local v5    # "inner":Landroid/graphics/Rect;
    goto/16 :goto_3

    .line 675
    .end local v4    # "outer":Landroid/graphics/Rect;
    .end local v5    # "inner":Landroid/graphics/Rect;
    :catch_1
    move-exception v11

    .line 676
    .restart local v11    # "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_5
    const-string v2, "ScreenRotationAnimation"

    const-string v3, "Unable to allocate black surface"

    invoke-static {v2, v3, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 678
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 679
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v2, :cond_1e

    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_14

    :cond_1e
    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 678
    .end local v11    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catchall_1
    move-exception v2

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 679
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v3, :cond_1f

    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_20

    :cond_1f
    const-string v3, "WindowManager"

    const-string v6, "<<< CLOSE TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    throw v2

    .line 697
    :catch_2
    move-exception v11

    .line 698
    .restart local v11    # "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_6
    const-string v2, "ScreenRotationAnimation"

    const-string v3, "Unable to allocate black surface"

    invoke-static {v2, v3, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 700
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 701
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v2, :cond_21

    sget-boolean v2, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v2, :cond_18

    :cond_21
    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 700
    .end local v11    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catchall_2
    move-exception v2

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 701
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->SHOW_LIGHT_TRANSACTIONS:Z

    if-nez v3, :cond_22

    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_23

    :cond_22
    const-string v3, "WindowManager"

    const-string v6, "<<< CLOSE TRANSACTION ScreenRotationAnimation.startAnimation"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    throw v2

    .line 507
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private stepAnimation(J)Z
    .locals 7
    .param p1, "now"    # J

    .prologue
    const-wide/16 v0, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 818
    iget-wide v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHalfwayPoint:J

    cmp-long v3, p1, v4

    if-lez v3, :cond_0

    .line 819
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHalfwayPoint:J

    .line 821
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    if-eqz v3, :cond_2

    iget-wide v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    cmp-long v3, v4, v0

    if-gez v3, :cond_2

    .line 822
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_1

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Step: finish anim now ready"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_1
    iput-wide p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    .line 826
    :cond_2
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v3, :cond_4

    .line 827
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    .line 828
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_3

    .line 829
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    .line 830
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_3

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped start exit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartEnter:Z

    .line 834
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_4

    .line 835
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartEnter:Z

    .line 836
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_4

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped start enter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_4
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v3, :cond_5

    .line 840
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartFrame:Z

    .line 841
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_5

    .line 842
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartFrame:Z

    .line 843
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_5

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped start frame: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_5
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    if-eqz v3, :cond_6

    iget-wide v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    sub-long v0, p1, v4

    .line 848
    .local v0, "finishNow":J
    :cond_6
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_7

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Step: finishNow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_7
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v3, :cond_9

    .line 851
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    .line 852
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_8

    .line 853
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v0, v1, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    .line 854
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_8

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped finish exit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_8
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishEnter:Z

    .line 858
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_9

    .line 859
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v0, v1, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishEnter:Z

    .line 860
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_9

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped finish enter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_9
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v3, :cond_a

    .line 864
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishFrame:Z

    .line 865
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_a

    .line 866
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v0, v1, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishFrame:Z

    .line 867
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_a

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped finish frame: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_a
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    .line 872
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_b

    .line 873
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    .line 874
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_b

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped rotate exit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_b
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    .line 878
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_c

    .line 879
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    .line 880
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_c

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped rotate enter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_c
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v3, :cond_d

    .line 884
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateFrame:Z

    .line 885
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_d

    .line 886
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateFrame:Z

    .line 887
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_d

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped rotate frame: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_d
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    if-nez v3, :cond_14

    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v3, :cond_e

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    if-nez v3, :cond_14

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    if-nez v3, :cond_14

    .line 892
    :cond_e
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v3, :cond_12

    .line 893
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_10

    .line 894
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_f

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Exit animations done, clearing start exit anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_f
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 896
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    .line 897
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 899
    :cond_10
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_12

    .line 900
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_11

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Exit animations done, clearing finish exit anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_11
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 902
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    .line 903
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 906
    :cond_12
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_14

    .line 907
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_13

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Exit animations done, clearing rotate exit anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_13
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 909
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 910
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 914
    :cond_14
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    if-nez v3, :cond_1b

    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v3, :cond_15

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartEnter:Z

    if-nez v3, :cond_1b

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishEnter:Z

    if-nez v3, :cond_1b

    .line 915
    :cond_15
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v3, :cond_19

    .line 916
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_17

    .line 917
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_16

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Enter animations done, clearing start enter anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_16
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 919
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    .line 920
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 922
    :cond_17
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_19

    .line 923
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_18

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Enter animations done, clearing finish enter anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_18
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 925
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    .line 926
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 929
    :cond_19
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_1b

    .line 930
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_1a

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Enter animations done, clearing rotate enter anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_1a
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 932
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 933
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 937
    :cond_1b
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v3, :cond_21

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartFrame:Z

    if-nez v3, :cond_21

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateFrame:Z

    if-nez v3, :cond_21

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishFrame:Z

    if-nez v3, :cond_21

    .line 938
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_1d

    .line 939
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_1c

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Frame animations done, clearing start frame anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_1c
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 941
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    .line 942
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 944
    :cond_1d
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_1f

    .line 945
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_1e

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Frame animations done, clearing finish frame anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_1e
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 947
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    .line 948
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 950
    :cond_1f
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_21

    .line 951
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_20

    const-string v3, "ScreenRotationAnimation"

    const-string v4, "Frame animations done, clearing rotate frame anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_20
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 953
    iput-object v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    .line 954
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 958
    :cond_21
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 959
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 960
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v3, :cond_22

    .line 961
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 962
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 964
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 965
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 968
    :cond_22
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_23

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Final exit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_23
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_24

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Final enter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_24
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v3, :cond_25

    .line 975
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 976
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 977
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    .line 978
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 979
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_25

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Final frame: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_25
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v3, :cond_26

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartEnter:Z

    if-nez v3, :cond_28

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    if-nez v3, :cond_28

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishEnter:Z

    if-nez v3, :cond_28

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    if-nez v3, :cond_28

    :cond_26
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v3, :cond_27

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartFrame:Z

    if-nez v3, :cond_28

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateFrame:Z

    if-nez v3, :cond_28

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishFrame:Z

    if-nez v3, :cond_28

    :cond_27
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    if-nez v3, :cond_28

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    if-nez v3, :cond_28

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    if-nez v3, :cond_29

    :cond_28
    const/4 v2, 0x1

    .line 989
    .local v2, "more":Z
    :cond_29
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 991
    sget-boolean v3, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v3, :cond_2a

    const-string v3, "ScreenRotationAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Step: more="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_2a
    return v2
.end method


# virtual methods
.method public dismiss(Landroid/view/SurfaceSession;JFIIII)Z
    .locals 10
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "maxAnimationDuration"    # J
    .param p4, "animationScale"    # F
    .param p5, "finalWidth"    # I
    .param p6, "finalHeight"    # I
    .param p7, "exitAnim"    # I
    .param p8, "enterAnim"    # I

    .prologue
    .line 716
    const-wide/16 v0, 0x20

    const-string v2, "ScreenRotationAnimation:Begin"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 717
    const-string v0, "WindowManager"

    const-string v1, "Dismiss!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const-wide/16 v0, 0x20

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 719
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 721
    const/4 v0, 0x0

    .line 732
    :goto_0
    return v0

    .line 723
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v0, :cond_1

    .line 724
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/ScreenRotationAnimation;->startAnimation(Landroid/view/SurfaceSession;JFIIZII)Z

    .line 727
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v0, :cond_2

    .line 728
    const/4 v0, 0x0

    goto :goto_0

    .line 730
    :cond_2
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_3

    const-string v0, "ScreenRotationAnimation"

    const-string v1, "Setting mFinishAnimReady = true"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    .line 732
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public enableDebugLog(Z)V
    .locals 1
    .param p1, "en"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1097
    sput-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    .line 1098
    sput-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_TRANSFORMS:Z

    .line 1099
    sput-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    .line 1100
    sput-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    .line 1101
    return-void
.end method

.method public getEnterTransformation()Landroid/view/animation/Transformation;
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method hasScreenshot()Z
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 800
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation;->hasAnimations()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRotating()Z
    .locals 2

    .prologue
    .line 804
    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public kill()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x20

    const/4 v3, 0x0

    .line 736
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_0

    const-string v0, "ScreenRotationAnimation"

    const-string v1, "Kill!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 739
    const-string v0, "ScreenRotationAnimation:End"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 740
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  FREEZE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": DESTROY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 742
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 743
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 745
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_2

    .line 746
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 747
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 749
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_3

    .line 750
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 751
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 753
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_4

    .line 754
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 755
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 757
    :cond_4
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v0, :cond_8

    .line 758
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_5

    .line 759
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 760
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    .line 762
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_6

    .line 763
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 764
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    .line 766
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_7

    .line 767
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 768
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    .line 770
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_8

    .line 771
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 772
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    .line 775
    :cond_8
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v0, :cond_b

    .line 776
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_9

    .line 777
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 778
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    .line 780
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_a

    .line 781
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 782
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    .line 784
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_b

    .line 785
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 786
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    .line 789
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_c

    .line 790
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 791
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 793
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_d

    .line 794
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 795
    iput-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 797
    :cond_d
    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 144
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 145
    const-string v0, " mWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 146
    const-string v0, " mHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 147
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCustomBlackFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/BlackFrame;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 153
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExitingBlackFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/BlackFrame;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 157
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnteringBlackFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/BlackFrame;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 161
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 162
    const-string v0, " mOriginalRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 163
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOriginalWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 164
    const-string v0, " mOriginalHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 165
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 166
    const-string v0, " mAnimRunning="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 167
    const-string v0, " mFinishAnimReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 168
    const-string v0, " mFinishAnimStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 169
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStartExitAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 170
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 171
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStartEnterAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 172
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 173
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStartFrameAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 174
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 175
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFinishExitAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 176
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 177
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFinishEnterAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 178
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 179
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFinishFrameAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 180
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 181
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRotateExitAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 182
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 183
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRotateEnterAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 184
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 185
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRotateFrameAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 186
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 187
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExitTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 189
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 191
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFrameTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 193
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFrameInitialMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 195
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 196
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSnapshotInitialMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 198
    const-string v0, " mSnapshotFinalMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 199
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 200
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExitFrameFinalMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 202
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 203
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceDefaultOrientation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 204
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    if-eqz v0, :cond_3

    .line 205
    const-string v0, " mOriginalDisplayRect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 206
    const-string v0, " mCurrentDisplayRect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    :cond_3
    return-void
.end method

.method public setRotationInTransaction(ILandroid/view/SurfaceSession;JFII)Z
    .locals 11
    .param p1, "rotation"    # I
    .param p2, "session"    # Landroid/view/SurfaceSession;
    .param p3, "maxAnimationDuration"    # J
    .param p5, "animationScale"    # F
    .param p6, "finalWidth"    # I
    .param p7, "finalHeight"    # I

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotationInTransaction(I)V

    .line 444
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v0, :cond_0

    .line 445
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/ScreenRotationAnimation;->startAnimation(Landroid/view/SurfaceSession;JFIIZII)Z

    move-result v0

    .line 450
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSnapshotScaleForSMB(III)V
    .locals 8
    .param p1, "rotation"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 301
    const-string v5, "ro.mtk_smartbook_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 302
    const/4 v3, 0x0

    .line 303
    .local v3, "shortSize":I
    const/4 v2, 0x0

    .line 304
    .local v2, "longSize":I
    iget v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v6, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    if-ge v5, v6, :cond_1

    .line 305
    iget v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    .line 306
    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    .line 312
    :goto_0
    const/high16 v4, 0x3f800000    # 1.0f

    .line 313
    .local v4, "wScale":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 314
    .local v1, "hScale":F
    if-ge p2, p3, :cond_3

    .line 315
    if-ne p2, v3, :cond_2

    if-ne p3, v2, :cond_2

    .line 348
    .end local v1    # "hScale":F
    .end local v2    # "longSize":I
    .end local v3    # "shortSize":I
    .end local v4    # "wScale":F
    :cond_0
    :goto_1
    return-void

    .line 308
    .restart local v2    # "longSize":I
    .restart local v3    # "shortSize":I
    :cond_1
    iget v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    .line 309
    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    goto :goto_0

    .line 318
    .restart local v1    # "hScale":F
    .restart local v4    # "wScale":F
    :cond_2
    int-to-float v5, p2

    int-to-float v6, v3

    div-float v4, v5, v6

    .line 319
    int-to-float v5, p3

    int-to-float v6, v2

    div-float v1, v5, v6

    .line 329
    :goto_2
    const-string v5, "ScreenRotationAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Apply new resolution to freezing surface "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", r:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 333
    const/4 v5, 0x0

    invoke-static {p1, v5}, Lcom/android/server/wm/ScreenRotationAnimation;->deltaRotation(II)I

    move-result v0

    .line 334
    .local v0, "delta":I
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, p2, p3, v5}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 336
    iget v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    if-ne p1, v5, :cond_5

    .line 337
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 338
    const-string v5, "ScreenRotationAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no rotation, scale:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :goto_3
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransformInTransaction(Landroid/graphics/Matrix;F)V

    goto :goto_1

    .line 322
    .end local v0    # "delta":I
    :cond_3
    if-ne p2, v2, :cond_4

    if-eq p3, v3, :cond_0

    .line 325
    :cond_4
    int-to-float v5, p2

    int-to-float v6, v2

    div-float v4, v5, v6

    .line 326
    int-to-float v5, p3

    int-to-float v6, v3

    div-float v1, v5, v6

    goto :goto_2

    .line 339
    .restart local v0    # "delta":I
    :cond_5
    if-eqz p1, :cond_6

    const/4 v5, 0x2

    if-ne p1, v5, :cond_7

    .line 340
    :cond_6
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 341
    const-string v5, "ScreenRotationAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rotation to portrait, scale:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 343
    :cond_7
    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 344
    const-string v5, "ScreenRotationAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rotation to landscape, scale:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public stepAnimationLocked(J)Z
    .locals 5
    .param p1, "now"    # J

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    .line 1043
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation;->hasAnimations()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1044
    sget-boolean v1, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v1, :cond_0

    const-string v1, "ScreenRotationAnimation"

    const-string v2, "Step: no animations running"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    .line 1086
    :goto_0
    return v0

    .line 1049
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    if-nez v0, :cond_c

    .line 1050
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_2

    const-string v0, "ScreenRotationAnimation"

    const-string v1, "Step: starting start, finish, rotate"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_2
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->TWO_PHASE_ANIMATION:Z

    if-eqz v0, :cond_6

    .line 1052
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    .line 1053
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1055
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_4

    .line 1056
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1058
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_5

    .line 1059
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1061
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_6

    .line 1062
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1065
    :cond_6
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->USE_CUSTOM_BLACK_FRAME:Z

    if-eqz v0, :cond_9

    .line 1066
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_7

    .line 1067
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1069
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_8

    .line 1070
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1072
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_9

    .line 1073
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1076
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_a

    .line 1077
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1079
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_b

    .line 1080
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1082
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    .line 1083
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHalfwayPoint:J

    .line 1086
    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimation(J)Z

    move-result v0

    goto :goto_0
.end method

.method updateSurfacesInTransaction()V
    .locals 3

    .prologue
    .line 997
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v0, :cond_0

    .line 1040
    :goto_0
    return-void

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2

    .line 1002
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    if-nez v0, :cond_2

    .line 1003
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_1

    const-string v0, "ScreenRotationAnimation"

    const-string v1, "Exit animations done, hiding screenshot surface"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 1008
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_4

    .line 1009
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartFrame:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishFrame:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateFrame:Z

    if-nez v0, :cond_9

    .line 1010
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_3

    const-string v0, "ScreenRotationAnimation"

    const-string v1, "Frame animations done, hiding black frame"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->hide()V

    .line 1017
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_6

    .line 1018
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    if-nez v0, :cond_a

    .line 1019
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_5

    const-string v0, "ScreenRotationAnimation"

    const-string v1, "Frame animations done, hiding exiting frame"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->hide()V

    .line 1030
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_8

    .line 1031
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartEnter:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishEnter:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    if-nez v0, :cond_b

    .line 1032
    sget-boolean v0, Lcom/android/server/wm/ScreenRotationAnimation;->DEBUG_STATE:Z

    if-eqz v0, :cond_7

    const-string v0, "ScreenRotationAnimation"

    const-string v1, "Frame animations done, hiding entering frame"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->hide()V

    .line 1039
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransformInTransaction(Landroid/graphics/Matrix;F)V

    goto/16 :goto_0

    .line 1013
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_1

    .line 1022
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 1023
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    .line 1024
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    if-eqz v0, :cond_6

    .line 1025
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BlackFrame;->setAlpha(F)V

    goto :goto_2

    .line 1035
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_3
.end method
