.class public Lcom/lenovo/datamining/hook/HookActivityManagerService;
.super Ljava/lang/Object;
.source "HookActivityManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HookActivityManagerService"

.field static final sSystemCollectorListener:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    sput-object v0, Lcom/lenovo/datamining/hook/HookActivityManagerService;->sSystemCollectorListener:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static notifySystemCollectorListener_onPhoneEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/datamining/avatar/api/LocalParamMap;)V
    .locals 6
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "params"    # Lcom/lenovo/datamining/avatar/api/LocalParamMap;

    .prologue
    .line 81
    sget-object v4, Lcom/lenovo/datamining/hook/HookActivityManagerService;->sSystemCollectorListener:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 84
    :try_start_0
    sget-object v3, Lcom/lenovo/datamining/hook/HookActivityManagerService;->sSystemCollectorListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 85
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 86
    sget-object v3, Lcom/lenovo/datamining/hook/HookActivityManagerService;->sSystemCollectorListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener;

    invoke-interface {v3, p0, p1, p2, p3}, Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener;->onPhoneEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/datamining/avatar/api/LocalParamMap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "HookActivityManagerService"

    const-string v5, "RemoteException in notifyAppAppExecption: "

    invoke-static {v3, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v3, Lcom/lenovo/datamining/hook/HookActivityManagerService;->sSystemCollectorListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 92
    monitor-exit v4

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public static notifySystemCollectorListener_onSystemEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/datamining/avatar/api/LocalParamMap;)V
    .locals 6
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "params"    # Lcom/lenovo/datamining/avatar/api/LocalParamMap;

    .prologue
    .line 59
    sget-object v4, Lcom/lenovo/datamining/hook/HookActivityManagerService;->sSystemCollectorListener:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 62
    :try_start_0
    sget-object v3, Lcom/lenovo/datamining/hook/HookActivityManagerService;->sSystemCollectorListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 63
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 64
    sget-object v3, Lcom/lenovo/datamining/hook/HookActivityManagerService;->sSystemCollectorListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener;

    invoke-interface {v3, p0, p1, p2, p3}, Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener;->onSystemEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/datamining/avatar/api/LocalParamMap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "HookActivityManagerService"

    const-string v5, "RemoteException in notifyAppAppExecption: "

    invoke-static {v3, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v3, Lcom/lenovo/datamining/hook/HookActivityManagerService;->sSystemCollectorListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 70
    monitor-exit v4

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public static registerSystemCollectorListener(Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener;)V
    .locals 4
    .param p0, "listener"    # Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener;

    .prologue
    .line 43
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 45
    .local v0, "caller":I
    sget-object v2, Lcom/lenovo/datamining/hook/HookActivityManagerService;->sSystemCollectorListener:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    .line 46
    :try_start_0
    sget-object v1, Lcom/lenovo/datamining/hook/HookActivityManagerService;->sSystemCollectorListener:Landroid/os/RemoteCallbackList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 47
    monitor-exit v2

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
