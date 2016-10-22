.class public final Lcom/mediatek/hotknot/HotKnotActivityManager;
.super Lcom/mediatek/hotknot/IHotKnotCallback$Stub;
.source "HotKnotActivityManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;,
        Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    }
.end annotation


# static fields
.field static final DBG:Ljava/lang/Boolean;

.field static final TAG:Ljava/lang/String; = "HotKnot"


# instance fields
.field final mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

.field final mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mediatek/hotknot/HotKnotActivityManager;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/hotknot/HotKnotAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/mediatek/hotknot/HotKnotAdapter;

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/mediatek/hotknot/IHotKnotCallback$Stub;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    .line 194
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mActivities:Ljava/util/List;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mApps:Ljava/util/List;

    .line 196
    return-void
.end method


# virtual methods
.method checkMomPermission()Z
    .locals 2

    .prologue
    .line 327
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const-string/jumbo v0, "sub-permission.ACCESS_HOTKNOT"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/common/mom/MobileManagerUtils;->checkPermission(Ljava/lang/String;I)Z

    move-result v0

    .line 331
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public createMessage()Lcom/mediatek/hotknot/HotKnotMessage;
    .locals 4

    .prologue
    .line 340
    monitor-enter p0

    .line 341
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findResumedActivityState()Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v2

    .line 342
    .local v2, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    if-nez v2, :cond_1

    const/4 v1, 0x0

    monitor-exit p0

    .line 352
    :cond_0
    :goto_0
    return-object v1

    .line 344
    :cond_1
    iget-object v0, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessageCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;

    .line 345
    .local v0, "hotKnotCallback":Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;
    iget-object v1, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessage:Lcom/mediatek/hotknot/HotKnotMessage;

    .line 346
    .local v1, "message":Lcom/mediatek/hotknot/HotKnotMessage;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    if-eqz v0, :cond_0

    .line 349
    invoke-interface {v0}, Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;->createHotKnotMessage()Lcom/mediatek/hotknot/HotKnotMessage;

    move-result-object v1

    goto :goto_0

    .line 346
    .end local v0    # "hotKnotCallback":Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;
    .end local v1    # "message":Lcom/mediatek/hotknot/HotKnotMessage;
    .end local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method declared-synchronized destroyActivityState(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v0

    .line 186
    .local v0, "activityState":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->destroy()V

    .line 188
    iget-object v1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :cond_0
    monitor-exit p0

    return-void

    .line 185
    .end local v0    # "activityState":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized findActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    .line 149
    .local v1, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iget-object v2, v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->activity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    .line 153
    .end local v1    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 148
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized findActivityStateByClientId(I)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .locals 3
    .param p1, "clientId"    # I

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    .line 177
    .local v1, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iget v2, v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->clientId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    .line 181
    .end local v1    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 176
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method findAppState(Landroid/app/Application;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    .locals 3
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 65
    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;

    .line 66
    .local v0, "appState":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    iget-object v2, v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;->app:Landroid/app/Application;

    if-ne v2, p1, :cond_0

    .line 70
    .end local v0    # "appState":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized findResumedActivityState()Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .locals 3

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    .line 168
    .local v1, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iget-boolean v2, v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 172
    .end local v1    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 167
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized getActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v0

    .line 159
    .local v0, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    .end local v0    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    invoke-direct {v0, p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;-><init>(Lcom/mediatek/hotknot/HotKnotActivityManager;Landroid/app/Activity;)V

    .line 161
    .restart local v0    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iget-object v1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_0
    monitor-exit p0

    return-object v0

    .line 158
    .end local v0    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getClientId()I
    .locals 3

    .prologue
    .line 421
    const/4 v0, -0x1

    .line 422
    .local v0, "clientId":I
    monitor-enter p0

    .line 423
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findResumedActivityState()Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v1

    .line 424
    .local v1, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    if-eqz v1, :cond_0

    .line 425
    iget v0, v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->clientId:I

    .line 427
    :cond_0
    monitor-exit p0

    .line 428
    return v0

    .line 427
    .end local v1    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getUris()[Landroid/net/Uri;
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 379
    monitor-enter p0

    .line 380
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findResumedActivityState()Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v5

    .line 381
    .local v5, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    if-nez v5, :cond_1

    monitor-exit p0

    move-object v7, v8

    .line 414
    :cond_0
    :goto_0
    return-object v7

    .line 382
    :cond_1
    iget-object v7, v5, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uris:[Landroid/net/Uri;

    .line 383
    .local v7, "uris":[Landroid/net/Uri;
    iget-object v1, v5, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uriCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;

    .line 384
    .local v1, "callback":Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    if-eqz v7, :cond_2

    .line 388
    move-object v0, v7

    .local v0, "arr$":[Landroid/net/Uri;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v6, v0, v2

    .line 389
    .local v6, "uri":Landroid/net/Uri;
    const-string v9, "HotKnot"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  uri.toString: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 384
    .end local v0    # "arr$":[Landroid/net/Uri;
    .end local v1    # "callback":Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "uris":[Landroid/net/Uri;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 392
    .restart local v1    # "callback":Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;
    .restart local v5    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .restart local v7    # "uris":[Landroid/net/Uri;
    :cond_2
    const-string v9, "HotKnot"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "state.uriCallback:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    if-eqz v1, :cond_0

    .line 395
    invoke-interface {v1}, Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;->createHotKnotBeamUris()[Landroid/net/Uri;

    move-result-object v7

    .line 396
    if-eqz v7, :cond_0

    .line 397
    move-object v0, v7

    .restart local v0    # "arr$":[Landroid/net/Uri;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 398
    .restart local v6    # "uri":Landroid/net/Uri;
    if-nez v6, :cond_3

    .line 399
    const-string v9, "HotKnot"

    const-string v10, "Uri not allowed to be null."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 400
    goto :goto_0

    .line 402
    :cond_3
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, "scheme":Ljava/lang/String;
    if-eqz v4, :cond_4

    const-string v9, "file"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "content"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 405
    :cond_4
    const-string v9, "HotKnot"

    const-string v10, "Uri needs to have either scheme file or scheme content"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 407
    goto/16 :goto_0

    .line 397
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method isHotKnotRequired(Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;)Z
    .locals 1
    .param p1, "state"    # Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    .prologue
    .line 323
    iget-object v0, p1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessage:Lcom/mediatek/hotknot/HotKnotMessage;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessageCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uriCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uris:[Landroid/net/Uri;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 436
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 489
    monitor-enter p0

    .line 490
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v0

    .line 491
    .local v0, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    sget-object v1, Lcom/mediatek/hotknot/HotKnotActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HotKnot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDestroy() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_0
    if-eqz v0, :cond_1

    .line 494
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->destroyActivityState(Landroid/app/Activity;)V

    .line 496
    :cond_1
    monitor-exit p0

    .line 497
    return-void

    .line 496
    .end local v0    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 464
    monitor-enter p0

    .line 465
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v0

    .line 466
    .local v0, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    sget-object v2, Lcom/mediatek/hotknot/HotKnotActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "HotKnot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPause() for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_0
    if-nez v0, :cond_1

    monitor-exit p0

    .line 472
    :goto_0
    return-void

    .line 468
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 469
    iget-object v1, v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->token:Landroid/os/Binder;

    .line 470
    .local v1, "token":Landroid/os/Binder;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/mediatek/hotknot/HotKnotActivityManager;->requestHotKnotServiceCallback(Z)V

    .line 471
    monitor-exit p0

    goto :goto_0

    .end local v0    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .end local v1    # "token":Landroid/os/Binder;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 449
    monitor-enter p0

    .line 450
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v1

    .line 451
    .local v1, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    sget-object v3, Lcom/mediatek/hotknot/HotKnotActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "HotKnot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onResume() for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_0
    if-nez v1, :cond_1

    monitor-exit p0

    .line 458
    :goto_0
    return-void

    .line 453
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 454
    iget-object v2, v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->token:Landroid/os/Binder;

    .line 455
    .local v2, "token":Landroid/os/Binder;
    invoke-virtual {p0, v1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->isHotKnotRequired(Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;)Z

    move-result v0

    .line 456
    .local v0, "isRequest":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    invoke-virtual {p0, v0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->requestHotKnotServiceCallback(Z)V

    goto :goto_0

    .line 456
    .end local v0    # "isRequest":Z
    .end local v1    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .end local v2    # "token":Landroid/os/Binder;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 484
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 442
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 478
    return-void
.end method

.method public onHotKnotComplete(II)V
    .locals 5
    .param p1, "clientId"    # I
    .param p2, "reason"    # I

    .prologue
    .line 360
    monitor-enter p0

    .line 361
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findActivityStateByClientId(I)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v1

    .line 362
    .local v1, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    if-nez v1, :cond_1

    monitor-exit p0

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-object v0, v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->onHotKnotCompleteCallback:Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;

    .line 365
    .local v0, "callback":Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    const-string v2, "HotKnot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onHotKnotComplete:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    if-eqz v0, :cond_0

    .line 370
    invoke-interface {v0, p2}, Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;->onHotKnotComplete(I)V

    goto :goto_0

    .line 365
    .end local v0    # "callback":Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;
    .end local v1    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method registerApplication(Landroid/app/Application;)V
    .locals 2
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findAppState(Landroid/app/Application;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;

    move-result-object v0

    .line 75
    .local v0, "appState":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;

    .end local v0    # "appState":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    invoke-direct {v0, p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;-><init>(Lcom/mediatek/hotknot/HotKnotActivityManager;Landroid/app/Application;)V

    .line 77
    .restart local v0    # "appState":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    iget-object v1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mApps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;->register()V

    .line 80
    return-void
.end method

.method requestHotKnotServiceCallback(Z)V
    .locals 3
    .param p1, "request"    # Z

    .prologue
    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    iget-object v1, v1, Lcom/mediatek/hotknot/HotKnotAdapter;->mService:Lcom/mediatek/hotknot/IHotKnotAdapter;

    if-eqz p1, :cond_0

    .end local p0    # "this":Lcom/mediatek/hotknot/HotKnotActivityManager;
    :goto_0
    invoke-interface {v1, p0}, Lcom/mediatek/hotknot/IHotKnotAdapter;->setHotKnotCallback(Lcom/mediatek/hotknot/IHotKnotCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_1
    return-void

    .line 316
    .restart local p0    # "this":Lcom/mediatek/hotknot/HotKnotActivityManager;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 317
    .end local p0    # "this":Lcom/mediatek/hotknot/HotKnotActivityManager;
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HotKnot"

    const-string v2, "[HotKnotActivityManager] requestHotKnotServiceCallback()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setHotKnotContent(Landroid/app/Activity;[Landroid/net/Uri;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 268
    if-eqz p2, :cond_1

    .line 269
    invoke-virtual {p0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->checkMomPermission()Z

    move-result v3

    if-nez v3, :cond_1

    .line 270
    const-string v3, "HotKnot"

    const-string v4, "MOM permission is denied"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    monitor-enter p0

    .line 276
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->getActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v2

    .line 277
    .local v2, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iput-object p2, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uris:[Landroid/net/Uri;

    .line 278
    iget-boolean v1, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 279
    .local v1, "isResumed":Z
    invoke-virtual {p0, v2}, Lcom/mediatek/hotknot/HotKnotActivityManager;->isHotKnotRequired(Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;)Z

    move-result v0

    .line 280
    .local v0, "isRequest":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    const-string v4, "HotKnot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHotKnotContent:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {p0, v0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->requestHotKnotServiceCallback(Z)V

    goto :goto_0

    .line 280
    .end local v0    # "isRequest":Z
    .end local v1    # "isResumed":Z
    .end local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 281
    .restart local v0    # "isRequest":Z
    .restart local v1    # "isResumed":Z
    .restart local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setHotKnotContentCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;

    .prologue
    .line 291
    if-eqz p2, :cond_1

    .line 292
    invoke-virtual {p0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->checkMomPermission()Z

    move-result v3

    if-nez v3, :cond_1

    .line 293
    const-string v3, "HotKnot"

    const-string v4, "MOM permission is denied"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    monitor-enter p0

    .line 299
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->getActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v2

    .line 300
    .local v2, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iput-object p2, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uriCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;

    .line 301
    iget-boolean v1, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 302
    .local v1, "isResumed":Z
    invoke-virtual {p0, v2}, Lcom/mediatek/hotknot/HotKnotActivityManager;->isHotKnotRequired(Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;)Z

    move-result v0

    .line 303
    .local v0, "isRequest":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    const-string v4, "HotKnot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHotKnotContentCallback:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    if-eqz v1, :cond_0

    .line 306
    invoke-virtual {p0, v0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->requestHotKnotServiceCallback(Z)V

    goto :goto_0

    .line 303
    .end local v0    # "isRequest":Z
    .end local v1    # "isResumed":Z
    .end local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 304
    .restart local v0    # "isRequest":Z
    .restart local v1    # "isResumed":Z
    .restart local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setHotKnotMessage(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotMessage;I)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/mediatek/hotknot/HotKnotMessage;
    .param p3, "flags"    # I

    .prologue
    .line 201
    if-eqz p2, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->checkMomPermission()Z

    move-result v3

    if-nez v3, :cond_1

    .line 203
    const-string v3, "HotKnot"

    const-string v4, "MOM permission is denied"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    monitor-enter p0

    .line 209
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->getActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v2

    .line 210
    .local v2, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iput-object p2, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessage:Lcom/mediatek/hotknot/HotKnotMessage;

    .line 211
    iput p3, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->flags:I

    .line 212
    iget-boolean v1, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 213
    .local v1, "isResumed":Z
    invoke-virtual {p0, v2}, Lcom/mediatek/hotknot/HotKnotActivityManager;->isHotKnotRequired(Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;)Z

    move-result v0

    .line 214
    .local v0, "isRequest":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    const-string v4, "HotKnot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHotKnotMessage:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {p0, v0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->requestHotKnotServiceCallback(Z)V

    goto :goto_0

    .line 214
    .end local v0    # "isRequest":Z
    .end local v1    # "isResumed":Z
    .end local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 216
    .restart local v0    # "isRequest":Z
    .restart local v1    # "isResumed":Z
    .restart local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setHotKnotMessageCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;I)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;
    .param p3, "flags"    # I

    .prologue
    .line 227
    if-eqz p2, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->checkMomPermission()Z

    move-result v3

    if-nez v3, :cond_1

    .line 229
    const-string v3, "HotKnot"

    const-string v4, "MOM permission is denied"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    monitor-enter p0

    .line 235
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->getActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v2

    .line 236
    .local v2, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iput-object p2, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessageCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;

    .line 237
    iput p3, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->flags:I

    .line 238
    iget-boolean v1, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 239
    .local v1, "isResumed":Z
    invoke-virtual {p0, v2}, Lcom/mediatek/hotknot/HotKnotActivityManager;->isHotKnotRequired(Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;)Z

    move-result v0

    .line 240
    .local v0, "isRequest":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    const-string v4, "HotKnot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHotKnotMessageCallback:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {p0, v0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->requestHotKnotServiceCallback(Z)V

    goto :goto_0

    .line 240
    .end local v0    # "isRequest":Z
    .end local v1    # "isResumed":Z
    .end local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 241
    .restart local v0    # "isRequest":Z
    .restart local v1    # "isResumed":Z
    .restart local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setOnHotKnotCompleteCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;

    .prologue
    .line 251
    monitor-enter p0

    .line 252
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->getActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v2

    .line 253
    .local v2, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iput-object p2, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->onHotKnotCompleteCallback:Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;

    .line 254
    iget-boolean v1, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 255
    .local v1, "isResumed":Z
    invoke-virtual {p0, v2}, Lcom/mediatek/hotknot/HotKnotActivityManager;->isHotKnotRequired(Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;)Z

    move-result v0

    .line 256
    .local v0, "isRequest":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    const-string v4, "HotKnot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOnHotKnotCompleteCallback:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {p0, v0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->requestHotKnotServiceCallback(Z)V

    .line 263
    :cond_0
    return-void

    .line 256
    .end local v0    # "isRequest":Z
    .end local v1    # "isResumed":Z
    .end local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 257
    .restart local v0    # "isRequest":Z
    .restart local v1    # "isResumed":Z
    .restart local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method unregisterApplication(Landroid/app/Application;)V
    .locals 4
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findAppState(Landroid/app/Application;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;

    move-result-object v0

    .line 84
    .local v0, "appState":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    if-nez v0, :cond_0

    .line 85
    const-string v1, "HotKnot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app was not registered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;->unregister()V

    goto :goto_0
.end method
