.class public Lcom/mediatek/sensorhub/SensorHubManager;
.super Ljava/lang/Object;
.source "SensorHubManager.java"

# interfaces
.implements Lcom/mediatek/sensorhub/ISensorHubManager;


# static fields
.field public static EXTRA_REQUEST_ID:Ljava/lang/String; = null

.field private static final LOG:Z

.field public static final REQUEST_ERROR_CONTEXT_INVALID:I = -0x3

.field public static final REQUEST_ERROR_NO_RESOURCE:I = -0x2

.field public static final REQUEST_ERROR_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SensorHubManager"

.field public static UPDATE_SENSORHUB_ACTION:Ljava/lang/String;

.field public static WAKE_DEVICE_SENSORHUB:Ljava/lang/String;


# instance fields
.field private mContextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/mediatek/sensorhub/ISensorHubService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 172
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mediatek/sensorhub/SensorHubManager;->LOG:Z

    .line 182
    const-string v0, "com.mediatek.permission.WAKE_DEVICE_SENSORHUB"

    sput-object v0, Lcom/mediatek/sensorhub/SensorHubManager;->WAKE_DEVICE_SENSORHUB:Ljava/lang/String;

    .line 189
    const-string v0, "com.mediatek.permission.UPDATE_SENSORHUB_ACTION"

    sput-object v0, Lcom/mediatek/sensorhub/SensorHubManager;->UPDATE_SENSORHUB_ACTION:Ljava/lang/String;

    .line 194
    const-string v0, "com.mediatek.sensorhub.EXTRA_REQUEST_ID"

    sput-object v0, Lcom/mediatek/sensorhub/SensorHubManager;->EXTRA_REQUEST_ID:Ljava/lang/String;

    return-void

    .line 172
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/mediatek/sensorhub/ISensorHubService;)V
    .locals 0
    .param p1, "service"    # Lcom/mediatek/sensorhub/ISensorHubService;

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    .line 220
    return-void
.end method


# virtual methods
.method public cancelAction(I)Z
    .locals 5
    .param p1, "requestId"    # I

    .prologue
    .line 356
    const/4 v1, 0x0

    .line 357
    .local v1, "success":Z
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    if-eqz v2, :cond_0

    if-lez p1, :cond_0

    .line 359
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    invoke-interface {v2, p1}, Lcom/mediatek/sensorhub/ISensorHubService;->cancelAction(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 364
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/mediatek/sensorhub/SensorHubManager;->LOG:Z

    if-eqz v2, :cond_1

    .line 365
    const-string v3, "SensorHubManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelAction: rid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_2

    const-string v2, " succeed."

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_1
    return v1

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelAction: RemoteException! rid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 365
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v2, "failed!"

    goto :goto_1
.end method

.method public enableGestureWakeup(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 385
    const/4 v1, 0x0

    .line 386
    .local v1, "result":Z
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    if-eqz v2, :cond_0

    .line 388
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    invoke-interface {v2, p1}, Lcom/mediatek/sensorhub/ISensorHubService;->enableGestureWakeup(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 393
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/mediatek/sensorhub/SensorHubManager;->LOG:Z

    if-eqz v2, :cond_1

    .line 394
    const-string v3, "SensorHubManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableGestureWakeup: enable="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_2

    const-string v2, " succeed."

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_1
    return v1

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableGestureWakeup: RemoteException! enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 394
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v2, " failed!"

    goto :goto_1
.end method

.method public getContextList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    const/4 v1, 0x0

    .line 230
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mContextList:Ljava/util/List;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    if-eqz v2, :cond_0

    .line 232
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    invoke-interface {v2}, Lcom/mediatek/sensorhub/ISensorHubService;->getContextList()Lcom/mediatek/sensorhub/ParcelableListInteger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/sensorhub/ParcelableListInteger;->toList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mContextList:Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mContextList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 238
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mContextList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 240
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    sget-boolean v2, Lcom/mediatek/sensorhub/SensorHubManager;->LOG:Z

    if-eqz v2, :cond_2

    .line 241
    const-string v2, "SensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContextList: list="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_2
    return-object v1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SensorHubManager"

    const-string v3, "getContextList: RemoteException!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isContextSupported(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/mediatek/sensorhub/SensorHubManager;->getContextList()Ljava/util/List;

    move-result-object v0

    .line 258
    .local v0, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v0, :cond_1

    .line 259
    sget-boolean v1, Lcom/mediatek/sensorhub/SensorHubManager;->LOG:Z

    if-eqz v1, :cond_0

    const-string v1, "SensorHubManager"

    const-string v2, "isContextSupported: null context list!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    const/4 v1, 0x0

    .line 262
    :goto_0
    return v1

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public requestAction(Lcom/mediatek/sensorhub/Condition;Lcom/mediatek/sensorhub/Action;)I
    .locals 5
    .param p1, "condition"    # Lcom/mediatek/sensorhub/Condition;
    .param p2, "action"    # Lcom/mediatek/sensorhub/Action;

    .prologue
    .line 290
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 291
    :cond_0
    const-string v2, "SensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestAction: failed! condition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v1, -0x1

    .line 306
    :cond_1
    :goto_0
    return v1

    .line 294
    :cond_2
    const/4 v1, -0x1

    .line 295
    .local v1, "rid":I
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    if-eqz v2, :cond_3

    .line 297
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    invoke-interface {v2, p1, p2}, Lcom/mediatek/sensorhub/ISensorHubService;->requestAction(Lcom/mediatek/sensorhub/Condition;Lcom/mediatek/sensorhub/Action;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 302
    :cond_3
    :goto_1
    sget-boolean v2, Lcom/mediatek/sensorhub/SensorHubManager;->LOG:Z

    if-eqz v2, :cond_1

    .line 303
    const-string v2, "SensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestAction: condition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", action["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/mediatek/sensorhub/Action;->isRepeatable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/mediatek/sensorhub/Action;->isOnConditionChanged()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], rid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SensorHubManager"

    const-string/jumbo v3, "requestAction: RemoteException!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public updateCondition(ILcom/mediatek/sensorhub/Condition;)Z
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "condition"    # Lcom/mediatek/sensorhub/Condition;

    .prologue
    .line 321
    if-lez p1, :cond_0

    if-nez p2, :cond_2

    .line 322
    :cond_0
    const-string v2, "SensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCondition: failed! rid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", condition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v1, 0x0

    .line 337
    :cond_1
    :goto_0
    return v1

    .line 326
    :cond_2
    const/4 v1, 0x0

    .line 327
    .local v1, "result":Z
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    if-eqz v2, :cond_3

    .line 329
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    invoke-interface {v2, p1, p2}, Lcom/mediatek/sensorhub/ISensorHubService;->updateCondition(ILcom/mediatek/sensorhub/Condition;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 334
    :cond_3
    :goto_1
    sget-boolean v2, Lcom/mediatek/sensorhub/SensorHubManager;->LOG:Z

    if-eqz v2, :cond_1

    .line 335
    const-string v3, "SensorHubManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCondition: rid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", condition="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_4

    const-string v2, " succeed."

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCondition: RemoteException! rid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",condition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 335
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string v2, " failed!"

    goto :goto_2
.end method
