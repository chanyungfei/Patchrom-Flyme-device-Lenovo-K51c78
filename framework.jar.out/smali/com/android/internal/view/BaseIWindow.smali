.class public Lcom/android/internal/view/BaseIWindow;
.super Landroid/view/IWindow$Stub;
.source "BaseIWindow.java"


# instance fields
.field public mSeq:I

.field private mSession:Landroid/view/IWindowSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/view/IWindow$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public closeSystemDialogs(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 74
    return-void
.end method

.method public dispatchAppVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 58
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 88
    return-void
.end method

.method public dispatchGetNewSurface()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(IIII)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "globalUi"    # I
    .param p3, "localValue"    # I
    .param p4, "localChanges"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/android/internal/view/BaseIWindow;->mSeq:I

    .line 94
    return-void
.end method

.method public dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "sync"    # Z

    .prologue
    .line 99
    if-eqz p6, :cond_0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dispatchWallpaperOffsets(FFFFZ)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "xStep"    # F
    .param p4, "yStep"    # F
    .param p5, "sync"    # Z

    .prologue
    .line 78
    if-eqz p5, :cond_0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dispatchWindowShown()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public doneAnimating()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public dumpInputDispatchingStatus()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public enableLog(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 119
    return-void
.end method

.method public executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "out"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 70
    return-void
.end method

.method public moved(II)V
    .locals 0
    .param p1, "newX"    # I
    .param p2, "newY"    # I

    .prologue
    .line 54
    return-void
.end method

.method public resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 1
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "overscanInsets"    # Landroid/graphics/Rect;
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "stableInsets"    # Landroid/graphics/Rect;
    .param p6, "reportDraw"    # Z
    .param p7, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 44
    if-eqz p6, :cond_0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    invoke-interface {v0, p0}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setSession(Landroid/view/IWindowSession;)V
    .locals 0
    .param p1, "session"    # Landroid/view/IWindowSession;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/internal/view/BaseIWindow;->mSession:Landroid/view/IWindowSession;

    .line 39
    return-void
.end method

.method public windowFocusChanged(ZZ)V
    .locals 0
    .param p1, "hasFocus"    # Z
    .param p2, "touchEnabled"    # Z

    .prologue
    .line 66
    return-void
.end method
