.class public Lcom/mediatek/perfservice/PerfServiceWrapper;
.super Ljava/lang/Object;
.source "PerfServiceWrapper.java"

# interfaces
.implements Lcom/mediatek/perfservice/IPerfServiceWrapper;


# static fields
.field private static final RENDER_THREAD_UPDATE_DURATION:I = 0x190

.field private static final TAG:Ljava/lang/String; = "PerfServiceWrapper"


# instance fields
.field private inited:I

.field private mContext:Landroid/content/Context;

.field private mPreviousTime:J

.field private sService:Lcom/mediatek/perfservice/IPerfService;

.field private setTid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    .line 55
    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->inited:I

    .line 57
    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->setTid:I

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mPreviousTime:J

    .line 78
    iput-object p1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mContext:Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 80
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 65
    iget v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->inited:I

    if-nez v1, :cond_0

    .line 66
    const-string/jumbo v1, "mtk-perfservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 67
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 68
    invoke-static {v0}, Lcom/mediatek/perfservice/IPerfService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/perfservice/IPerfService;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    .line 69
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_1

    .line 70
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->inited:I

    .line 75
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 72
    .restart local v0    # "b":Landroid/os/IBinder;
    :cond_1
    const-string v1, "ERR: getService() sService is still null.."

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 376
    const-string v0, "PerfServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PerfServiceWrapper] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 380
    const-string v0, "PerfServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PerfServiceWrapper] ERR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return-void
.end method

.method public static native nativeGetPid()I
.end method

.method public static native nativeGetTid()I
.end method


# virtual methods
.method public boostDisable(I)V
    .locals 3
    .param p1, "scenario"    # I

    .prologue
    .line 96
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 97
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->boostDisable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in boostDisable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public boostEnable(I)V
    .locals 3
    .param p1, "scenario"    # I

    .prologue
    .line 85
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 86
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->boostEnable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in boostEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public boostEnableTimeout(II)V
    .locals 3
    .param p1, "scenario"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 107
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 108
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->boostEnableTimeout(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in boostEnableTimeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public boostEnableTimeoutMs(II)V
    .locals 3
    .param p1, "scenario"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 118
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 119
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->boostEnableTimeoutMs(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in boostEnableTimeoutMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dumpAll()V
    .locals 3

    .prologue
    .line 308
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 309
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1}, Lcom/mediatek/perfservice/IPerfService;->dumpAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in dumpAll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyAppState(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "packName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "state"    # I

    .prologue
    .line 129
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 130
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2, p3}, Lcom/mediatek/perfservice/IPerfService;->notifyAppState(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in notifyAppState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyDisplayType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 354
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 356
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->notifyDisplayType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in notifyDisplayType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyFrameUpdate(I)V
    .locals 8
    .param p1, "level"    # I

    .prologue
    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 332
    .local v2, "nowTime":J
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 334
    iget v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->setTid:I

    if-nez v1, :cond_0

    .line 335
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetTid()I

    move-result p1

    .line 336
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->setTid:I

    .line 339
    :cond_0
    iget-wide v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mPreviousTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    iget-wide v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mPreviousTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x190

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    .line 341
    :cond_1
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_2

    .line 342
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->notifyFrameUpdate(I)V

    .line 343
    :cond_2
    iput-wide v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mPreviousTime:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :cond_3
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERR: RemoteException in notifyFrameUpdate:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyUserStatus(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "status"    # I

    .prologue
    .line 366
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 368
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->notifyUserStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in notifyUserStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFavorPid(I)V
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 319
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 320
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->setFavorPid(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in setFavorPid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userDisable(I)V
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 246
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 247
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->userDisable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in userDisable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userDisableAll()V
    .locals 3

    .prologue
    .line 288
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 289
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1}, Lcom/mediatek/perfservice/IPerfService;->userDisableAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in userDisableAll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userEnable(I)V
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 235
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 236
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->userEnable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in userEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userEnableTimeout(II)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 257
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 258
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->userEnableTimeout(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in userEnableTimeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userEnableTimeoutMs(II)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 268
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 269
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->userEnableTimeoutMs(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in userEnableTimeoutMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userGetCapability(I)I
    .locals 4
    .param p1, "cmd"    # I

    .prologue
    .line 181
    const/4 v1, -0x1

    .line 184
    .local v1, "value":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 185
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v2, p1}, Lcom/mediatek/perfservice/IPerfService;->userGetCapability(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 191
    :cond_0
    :goto_0
    return v1

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: RemoteException in userGetCapability:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userReg(II)I
    .locals 6
    .param p1, "scn_core"    # I
    .param p2, "scn_freq"    # I

    .prologue
    .line 138
    const/4 v1, -0x1

    .line 141
    .local v1, "handle":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 142
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetPid()I

    move-result v2

    .line 143
    .local v2, "pid":I
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetTid()I

    move-result v3

    .line 144
    .local v3, "tid":I
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v4, :cond_0

    .line 145
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v4, p1, p2, v2, v3}, Lcom/mediatek/perfservice/IPerfService;->userReg(IIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 150
    .end local v2    # "pid":I
    .end local v3    # "tid":I
    :cond_0
    :goto_0
    return v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERR: RemoteException in userReg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userRegBigLittle(IIII)I
    .locals 9
    .param p1, "scn_core_big"    # I
    .param p2, "scn_freq_big"    # I
    .param p3, "scn_core_little"    # I
    .param p4, "scn_freq_little"    # I

    .prologue
    .line 154
    const/4 v8, -0x1

    .line 157
    .local v8, "handle":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 158
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetPid()I

    move-result v5

    .line 159
    .local v5, "pid":I
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetTid()I

    move-result v6

    .line 160
    .local v6, "tid":I
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/perfservice/IPerfService;->userRegBigLittle(IIIIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 166
    .end local v5    # "pid":I
    .end local v6    # "tid":I
    :cond_0
    :goto_0
    return v8

    .line 162
    :catch_0
    move-exception v7

    .line 163
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERR: RemoteException in userRegBigLittle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userRegScn()I
    .locals 6

    .prologue
    .line 195
    const/4 v1, -0x1

    .line 198
    .local v1, "handle":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 199
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetPid()I

    move-result v2

    .line 200
    .local v2, "pid":I
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetTid()I

    move-result v3

    .line 201
    .local v3, "tid":I
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v4, :cond_0

    .line 202
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v4, v2, v3}, Lcom/mediatek/perfservice/IPerfService;->userRegScn(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 207
    .end local v2    # "pid":I
    .end local v3    # "tid":I
    :cond_0
    :goto_0
    return v1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERR: RemoteException in userRegScn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userRegScnConfig(IIIIII)V
    .locals 8
    .param p1, "handle"    # I
    .param p2, "cmd"    # I
    .param p3, "param_1"    # I
    .param p4, "param_2"    # I
    .param p5, "param_3"    # I
    .param p6, "param_4"    # I

    .prologue
    .line 213
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 214
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/perfservice/IPerfService;->userRegScnConfig(IIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v7

    .line 217
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERR: RemoteException in userRegScnConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userResetAll()V
    .locals 3

    .prologue
    .line 278
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 279
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1}, Lcom/mediatek/perfservice/IPerfService;->userResetAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in userResetAll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userRestoreAll()V
    .locals 3

    .prologue
    .line 298
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 299
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1}, Lcom/mediatek/perfservice/IPerfService;->userRestoreAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in userRestoreAll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userUnreg(I)V
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 172
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 173
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->userUnreg(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in userUnreg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userUnregScn(I)V
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 224
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 225
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->userUnregScn(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in userUnregScn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method
