.class public final Landroid/media/RemoteDisplay;
.super Ljava/lang/Object;
.source "RemoteDisplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteDisplay$Listener;
    }
.end annotation


# static fields
.field public static final DISPLAY_ERROR_CONNECTION_DROPPED:I = 0x2

.field public static final DISPLAY_ERROR_UNKOWN:I = 0x1

.field public static final DISPLAY_FLAG_SECURE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RemoteDisplay"

.field private static isDispose:Z

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private final mGuard:Ldalvik/system/CloseGuard;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/media/RemoteDisplay$Listener;

.field private mPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Landroid/media/RemoteDisplay;->isDispose:Z

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/RemoteDisplay;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/RemoteDisplay$Listener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    .line 71
    iput-object p1, p0, Landroid/media/RemoteDisplay;->mListener:Landroid/media/RemoteDisplay$Listener;

    .line 72
    iput-object p2, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    .line 73
    return-void
.end method

.method static synthetic access$000(Landroid/media/RemoteDisplay;)Landroid/media/RemoteDisplay$Listener;
    .locals 1
    .param p0, "x0"    # Landroid/media/RemoteDisplay;

    .prologue
    .line 37
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mListener:Landroid/media/RemoteDisplay$Listener;

    return-object v0
.end method

.method public static connect(Ljava/lang/String;Landroid/view/Surface;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;)Landroid/media/RemoteDisplay;
    .locals 3
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "listener"    # Landroid/media/RemoteDisplay$Listener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 193
    const-string v1, "RemoteDisplay"

    const-string v2, "connect"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-nez p0, :cond_0

    .line 195
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "iface must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_0
    if-nez p2, :cond_1

    .line 198
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_1
    if-nez p3, :cond_2

    .line 201
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "handler must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :cond_2
    new-instance v0, Landroid/media/RemoteDisplay;

    invoke-direct {v0, p2, p3}, Landroid/media/RemoteDisplay;-><init>(Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;)V

    .line 205
    .local v0, "display":Landroid/media/RemoteDisplay;
    invoke-direct {v0, p0, p1}, Landroid/media/RemoteDisplay;->startConnecting(Ljava/lang/String;Landroid/view/Surface;)V

    .line 206
    return-object v0
.end method

.method private dispose(Z)V
    .locals 4
    .param p1, "finalized"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 136
    const-string v0, "RemoteDisplay"

    const-string v1, "dispose"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 139
    if-eqz p1, :cond_2

    .line 140
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 146
    :cond_0
    :goto_0
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    invoke-direct {p0, v0, v1}, Landroid/media/RemoteDisplay;->nativeDispose(J)V

    .line 147
    iput-wide v2, p0, Landroid/media/RemoteDisplay;->mPtr:J

    .line 150
    :cond_1
    sget-object v1, Landroid/media/RemoteDisplay;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_0
    const-string v0, "RemoteDisplay"

    const-string v2, "dispose finish"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x0

    sput-boolean v0, Landroid/media/RemoteDisplay;->isDispose:Z

    .line 154
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    return-void

    .line 142
    :cond_2
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;)Landroid/media/RemoteDisplay;
    .locals 3
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "listener"    # Landroid/media/RemoteDisplay$Listener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 92
    const-string v1, "RemoteDisplay"

    const-string v2, "listen"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    if-nez p0, :cond_0

    .line 94
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "iface must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_0
    if-nez p1, :cond_1

    .line 97
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_1
    if-nez p2, :cond_2

    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "handler must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_2
    new-instance v0, Landroid/media/RemoteDisplay;

    invoke-direct {v0, p1, p2}, Landroid/media/RemoteDisplay;-><init>(Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;)V

    .line 104
    .local v0, "display":Landroid/media/RemoteDisplay;
    invoke-direct {v0, p0}, Landroid/media/RemoteDisplay;->startListening(Ljava/lang/String;)V

    .line 105
    return-object v0
.end method

.method private native nativeConnect(Ljava/lang/String;Landroid/view/Surface;)J
.end method

.method private native nativeDispose(J)V
.end method

.method private native nativeGetWfdParam(JI)I
.end method

.method private native nativeListen(Ljava/lang/String;)J
.end method

.method private native nativePause(J)V
.end method

.method private native nativeResume(J)V
.end method

.method private native nativeSendUibcEvent(JLjava/lang/String;)V
.end method

.method private native nativeSetWfdLevel(JI)V
.end method

.method private native nativeSuspendDisplay(JZLandroid/view/Surface;)V
.end method

.method private notifyDisplayConnected(Landroid/view/Surface;IIII)V
    .locals 8
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flags"    # I
    .param p5, "session"    # I

    .prologue
    .line 256
    const-string v0, "RemoteDisplay"

    const-string/jumbo v1, "notifyDisplayConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v7, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/media/RemoteDisplay$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/media/RemoteDisplay$1;-><init>(Landroid/media/RemoteDisplay;Landroid/view/Surface;IIII)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    return-void
.end method

.method private notifyDisplayDisconnected()V
    .locals 2

    .prologue
    .line 267
    const-string v0, "RemoteDisplay"

    const-string/jumbo v1, "notifyDisplayDisconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/RemoteDisplay$2;

    invoke-direct {v1, p0}, Landroid/media/RemoteDisplay$2;-><init>(Landroid/media/RemoteDisplay;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 274
    return-void
.end method

.method private notifyDisplayError(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 278
    const-string v0, "RemoteDisplay"

    const-string/jumbo v1, "notifyDisplayError"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/RemoteDisplay$3;

    invoke-direct {v1, p0, p1}, Landroid/media/RemoteDisplay$3;-><init>(Landroid/media/RemoteDisplay;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 285
    return-void
.end method

.method private notifyDisplayGenericMsgEvent(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 299
    const-string v0, "RemoteDisplay"

    const-string/jumbo v1, "notifyDisplayGenericMsgEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/RemoteDisplay$5;

    invoke-direct {v1, p0, p1}, Landroid/media/RemoteDisplay$5;-><init>(Landroid/media/RemoteDisplay;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    return-void
.end method

.method private notifyDisplayKeyEvent(II)V
    .locals 2
    .param p1, "uniCode"    # I
    .param p2, "flags"    # I

    .prologue
    .line 289
    const-string v0, "RemoteDisplay"

    const-string/jumbo v1, "notifyDisplayKeyEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/RemoteDisplay$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/RemoteDisplay$4;-><init>(Landroid/media/RemoteDisplay;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 296
    return-void
.end method

.method private startConnecting(Ljava/lang/String;Landroid/view/Surface;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 215
    const-string v0, "RemoteDisplay"

    const-string/jumbo v1, "startConnecting"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteDisplay;->nativeConnect(Ljava/lang/String;Landroid/view/Surface;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    .line 218
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not start connecting for remote display connection on \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method private startListening(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 158
    const-string v0, "RemoteDisplay"

    const-string/jumbo v1, "startListening"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0, p1}, Landroid/media/RemoteDisplay;->nativeListen(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    .line 160
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not start listening for remote display connection on \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 165
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 112
    const-string v0, "RemoteDisplay"

    const-string v1, "dispose"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-object v1, Landroid/media/RemoteDisplay;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    :try_start_0
    sget-boolean v0, Landroid/media/RemoteDisplay;->isDispose:Z

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "RemoteDisplay"

    const-string v2, "dispose done"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    monitor-exit v1

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Landroid/media/RemoteDisplay;->isDispose:Z

    .line 121
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/RemoteDisplay;->dispose(Z)V

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/media/RemoteDisplay;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 82
    return-void

    .line 80
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getWfdParam(I)I
    .locals 2
    .param p1, "paramType"    # I

    .prologue
    .line 182
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    invoke-direct {p0, v0, v1, p1}, Landroid/media/RemoteDisplay;->nativeGetWfdParam(JI)I

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "RemoteDisplay"

    const-string/jumbo v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    invoke-direct {p0, v0, v1}, Landroid/media/RemoteDisplay;->nativePause(J)V

    .line 128
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 131
    const-string v0, "RemoteDisplay"

    const-string/jumbo v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    invoke-direct {p0, v0, v1}, Landroid/media/RemoteDisplay;->nativeResume(J)V

    .line 133
    return-void
.end method

.method public sendUibcEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "eventDesc"    # Ljava/lang/String;

    .prologue
    .line 249
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    invoke-direct {p0, v0, v1, p1}, Landroid/media/RemoteDisplay;->nativeSendUibcEvent(JLjava/lang/String;)V

    .line 250
    return-void
.end method

.method public setWfdLevel(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 173
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    invoke-direct {p0, v0, v1, p1}, Landroid/media/RemoteDisplay;->nativeSetWfdLevel(JI)V

    .line 174
    return-void
.end method

.method public suspendDisplay(ZLandroid/view/Surface;)V
    .locals 2
    .param p1, "suspend"    # Z
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 231
    const-string v0, "RemoteDisplay"

    const-string/jumbo v1, "suspendDisplay"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "surface must be null when suspend display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "surface must not be null when resume display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_1
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/RemoteDisplay;->nativeSuspendDisplay(JZLandroid/view/Surface;)V

    .line 240
    return-void
.end method
