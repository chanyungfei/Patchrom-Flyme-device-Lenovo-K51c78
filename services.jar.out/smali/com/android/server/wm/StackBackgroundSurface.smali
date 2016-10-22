.class public Lcom/android/server/wm/StackBackgroundSurface;
.super Ljava/lang/Object;
.source "StackBackgroundSurface.java"


# static fields
.field private static final DEBUG:Z = true


# instance fields
.field private TAG:Ljava/lang/String;

.field mAlpha:F

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mHeight:I

.field mLayer:I

.field mLeft:F

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mShowing:Z

.field final mStack:Lcom/android/server/wm/TaskStack;

.field private final mSurface:Landroid/view/Surface;

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field mTop:F

.field mWidth:I

.field needUpdate:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "StackBackgroundSurface"

    iput-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurface:Landroid/view/Surface;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mAlpha:F

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mLayer:I

    .line 52
    iput-boolean v1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mShowing:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/server/wm/StackBackgroundSurface;->needUpdate:Z

    .line 62
    iput-object p2, p0, Lcom/android/server/wm/StackBackgroundSurface;->mStack:Lcom/android/server/wm/TaskStack;

    .line 63
    iput-object p3, p0, Lcom/android/server/wm/StackBackgroundSurface;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 64
    iput-object p1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 65
    return-void
.end method


# virtual methods
.method destroySurface()V
    .locals 2

    .prologue
    .line 195
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_DIM_LAYER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->TAG:Ljava/lang/String;

    const-string v1, "destroySurface."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 200
    :cond_1
    return-void
.end method

.method getLayer()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mLayer:I

    return v0
.end method

.method hide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->needUpdate:Z

    if-eqz v0, :cond_2

    .line 182
    iget v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mLeft:F

    iget v1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mTop:F

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/StackBackgroundSurface;->setPosition(FF)V

    .line 183
    iget v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mWidth:I

    iget v1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/StackBackgroundSurface;->setSize(II)V

    .line 184
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mLayer:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 185
    iput-boolean v2, p0, Lcom/android/server/wm/StackBackgroundSurface;->needUpdate:Z

    .line 187
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mShowing:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 189
    iput-boolean v2, p0, Lcom/android/server/wm/StackBackgroundSurface;->mShowing:Z

    goto :goto_0
.end method

.method prepareSurface()V
    .locals 9

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v7

    .line 69
    .local v7, "displayId":I
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_DIM_LAYER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ctor: displayId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StackBackgroundSurface-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "surfaceName":Ljava/lang/String;
    iput-object v2, p0, Lcom/android/server/wm/StackBackgroundSurface;->TAG:Ljava/lang/String;

    .line 75
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v0, :cond_3

    .line 76
    new-instance v0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    iget-object v1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x1

    const v6, 0x20004

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 86
    :goto_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_2

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  BLACK "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": CREATE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v7}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 90
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 96
    :goto_1
    return-void

    .line 81
    :cond_3
    :try_start_1
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    const/16 v3, 0x10

    const/16 v4, 0x10

    const/4 v5, -0x1

    const v6, 0x20004

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v8

    .line 92
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "WindowManager"

    const-string v1, "Exception creating Dim surface"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 203
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " StackBackgroundSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 204
    const-string v0, " mStack="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 205
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mShowing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mShowing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 206
    const-string v0, " mLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 207
    const-string v0, " mAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 208
    const-string v0, " left="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mLeft:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 209
    const-string v0, " top="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mTop:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 210
    const-string v0, " w="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 211
    const-string v0, " h="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 212
    const-string v0, " needUpdate="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->needUpdate:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 213
    return-void
.end method

.method setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iput p1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mAlpha:F

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    goto :goto_0
.end method

.method setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 154
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mLeft:F

    .line 155
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mTop:F

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mWidth:I

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mHeight:I

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->needUpdate:Z

    .line 159
    return-void
.end method

.method setLayer(I)V
    .locals 1
    .param p1, "layer"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mLayer:I

    if-eq v0, p1, :cond_0

    .line 103
    iput p1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mLayer:I

    .line 104
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    goto :goto_0
.end method

.method setMatrix(FFFF)V
    .locals 1
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dsdy"    # F
    .param p4, "dtdy"    # F

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_0
.end method

.method setPosition(FF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 124
    :cond_0
    iput p1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mLeft:F

    .line 125
    iput p2, p0, Lcom/android/server/wm/StackBackgroundSurface;->mTop:F

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    goto :goto_0
.end method

.method setSize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    iput p1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mWidth:I

    .line 141
    iput p2, p0, Lcom/android/server/wm/StackBackgroundSurface;->mHeight:I

    .line 142
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    goto :goto_0
.end method

.method setWindowCrop(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method show()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->needUpdate:Z

    if-eqz v0, :cond_2

    .line 166
    iget v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mLeft:F

    iget v1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mTop:F

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/StackBackgroundSurface;->setPosition(FF)V

    .line 167
    iget v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mWidth:I

    iget v1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/StackBackgroundSurface;->setSize(II)V

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/StackBackgroundSurface;->mLayer:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->needUpdate:Z

    .line 171
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mShowing:Z

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/StackBackgroundSurface;->mShowing:Z

    goto :goto_0
.end method
