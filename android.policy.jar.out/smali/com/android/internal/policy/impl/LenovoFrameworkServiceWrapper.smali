.class public Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;
.super Ljava/lang/Object;
.source "LenovoFrameworkServiceWrapper.java"

# interfaces
.implements Lcom/android/internal/policy/ILenovoFrameworkService;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mService:Lcom/android/internal/policy/ILenovoFrameworkService;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/ILenovoFrameworkService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/internal/policy/ILenovoFrameworkService;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "LenovoGesture_FrameworkServiceWrapper"

    iput-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;->TAG:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;->mService:Lcom/android/internal/policy/ILenovoFrameworkService;

    .line 36
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;->mService:Lcom/android/internal/policy/ILenovoFrameworkService;

    invoke-interface {v0}, Lcom/android/internal/policy/ILenovoFrameworkService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public isGestureUnlockScreenReady()Z
    .locals 3

    .prologue
    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;->mService:Lcom/android/internal/policy/ILenovoFrameworkService;

    invoke-interface {v1}, Lcom/android/internal/policy/ILenovoFrameworkService;->isGestureUnlockScreenReady()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 44
    :goto_0
    return v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onScreenTurnedOff(I)V
    .locals 3
    .param p1, "why"    # I

    .prologue
    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;->mService:Lcom/android/internal/policy/ILenovoFrameworkService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/ILenovoFrameworkService;->onScreenTurnedOff(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;->mService:Lcom/android/internal/policy/ILenovoFrameworkService;

    invoke-interface {v1}, Lcom/android/internal/policy/ILenovoFrameworkService;->onScreenTurnedOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setLenovoFrameworkCallback(Lcom/android/internal/policy/ILenovoFrameworkCallBack;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/ILenovoFrameworkCallBack;

    .prologue
    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;->mService:Lcom/android/internal/policy/ILenovoFrameworkService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/ILenovoFrameworkService;->setLenovoFrameworkCallback(Lcom/android/internal/policy/ILenovoFrameworkCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showGestureUnlockScreen()V
    .locals 3

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;->mService:Lcom/android/internal/policy/ILenovoFrameworkService;

    invoke-interface {v1}, Lcom/android/internal/policy/ILenovoFrameworkService;->showGestureUnlockScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public triggerSnapshot(I)V
    .locals 3
    .param p1, "keycode"    # I

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;->mService:Lcom/android/internal/policy/ILenovoFrameworkService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/ILenovoFrameworkService;->triggerSnapshot(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
