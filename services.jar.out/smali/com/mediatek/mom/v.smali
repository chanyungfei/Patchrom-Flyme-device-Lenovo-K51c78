.class Lcom/mediatek/mom/v;
.super Lcom/mediatek/mom/ControllerBase;
.source "SourceFile"

# interfaces
.implements Lcom/mediatek/mom/IPackageBasedController;


# static fields
.field private static av:Z

.field private static c:Lcom/mediatek/mom/ControllerBase;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private W:Landroid/app/IActivityManager;

.field private au:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/mom/w;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/content/pm/IPackageManager;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    sput-object v0, Lcom/mediatek/mom/v;->mContext:Landroid/content/Context;

    .line 66
    sput-object v0, Lcom/mediatek/mom/v;->c:Lcom/mediatek/mom/ControllerBase;

    .line 70
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/mom/v;->av:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lcom/mediatek/mom/ControllerBase;-><init>()V

    .line 67
    iput-object v1, p0, Lcom/mediatek/mom/v;->W:Landroid/app/IActivityManager;

    .line 68
    iput-object v1, p0, Lcom/mediatek/mom/v;->g:Landroid/content/pm/IPackageManager;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    .line 71
    iput-object v1, p0, Lcom/mediatek/mom/v;->mHandler:Landroid/os/Handler;

    .line 81
    sput-object p1, Lcom/mediatek/mom/v;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/mediatek/mom/v;->mHandler:Landroid/os/Handler;

    .line 83
    invoke-static {}, Lcom/mediatek/mom/j;->h()Ljava/util/List;

    move-result-object v2

    .line 84
    if-eqz v2, :cond_1

    .line 85
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 86
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 88
    invoke-static {v0}, Lcom/mediatek/mom/j;->i(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    invoke-direct {p0, v0}, Lcom/mediatek/mom/v;->G(I)V

    .line 85
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 93
    :cond_1
    const-string v0, "Normal Bootup Start"

    invoke-virtual {p0, v0}, Lcom/mediatek/mom/v;->l(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method private G(I)V
    .locals 7

    .prologue
    .line 107
    iget-object v6, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    monitor-enter v6

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    monitor-exit v6

    .line 127
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-static {p1}, Lcom/mediatek/mom/j;->k(I)Lcom/mediatek/mom/j$a;

    move-result-object v0

    .line 112
    if-nez v0, :cond_1

    .line 113
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initRecordHelper() failed with identity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    monitor-exit v6

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 116
    :cond_1
    :try_start_1
    new-instance v1, Lcom/mediatek/mom/x;

    invoke-direct {v1, v0}, Lcom/mediatek/mom/x;-><init>(Lcom/mediatek/mom/j$a;)V

    .line 117
    new-instance v0, Lcom/mediatek/mom/w;

    sget-object v2, Lcom/mediatek/mom/v;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/mom/v;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/mediatek/mom/v;->getUserManagerService()Landroid/os/IUserManager;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/mom/v;->getPackageManagerService()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mom/w;-><init>(Lcom/mediatek/mom/x;Landroid/content/Context;Landroid/os/Handler;Landroid/os/IUserManager;Landroid/content/pm/IPackageManager;)V

    .line 123
    iget-object v2, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/mediatek/mom/x;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {v0}, Lcom/mediatek/mom/w;->C()V

    .line 125
    const-string v0, "ReceiverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init ReceiverRecordHelper for identity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mediatek/mom/x;->c()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Landroid/os/Handler;)Lcom/mediatek/mom/ControllerBase;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/mediatek/mom/v;->c:Lcom/mediatek/mom/ControllerBase;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/mediatek/mom/v;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/mom/v;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/mediatek/mom/v;->c:Lcom/mediatek/mom/ControllerBase;

    .line 77
    :cond_0
    sget-object v0, Lcom/mediatek/mom/v;->c:Lcom/mediatek/mom/ControllerBase;

    return-object v0
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6

    .prologue
    .line 363
    const/4 v1, 0x1

    .line 364
    iget-object v2, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    monitor-enter v2

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 366
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 368
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/w;

    .line 369
    invoke-virtual {v0, p2, p3}, Lcom/mediatek/mom/w;->h(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Identity "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " denied "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to package: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " at User("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v0, 0x0

    .line 376
    :goto_0
    monitor-exit v2

    .line 378
    return v0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private d(IZ)V
    .locals 4

    .prologue
    .line 260
    iget-object v1, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    monitor-enter v1

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 262
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/w;

    .line 264
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/mom/w;->f(IZ)V

    goto :goto_0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    return-void
.end method


# virtual methods
.method public H(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/ReceiverRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 271
    invoke-static {p1}, Lcom/mediatek/mom/j;->j(I)I

    move-result v0

    .line 272
    iget-object v2, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/w;

    .line 274
    invoke-virtual {v0, v1}, Lcom/mediatek/mom/w;->H(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/String;Z)V
    .locals 5

    .prologue
    .line 289
    invoke-static {p1}, Lcom/mediatek/mom/j;->j(I)I

    move-result v0

    .line 290
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 291
    const-string v2, "ReceiverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBootReceiverEnabledSetting("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") at User("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") with identity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v2, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/w;

    .line 295
    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v0, v1, p2, p3}, Lcom/mediatek/mom/w;->b(ILjava/lang/String;Z)Z

    move-result v0

    .line 297
    if-nez v0, :cond_0

    .line 298
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "setBootReceiverEnabledSetting("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 329
    sget-boolean v0, Lcom/mediatek/mom/v;->av:Z

    if-nez v0, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    if-nez p1, :cond_2

    .line 333
    const-string v0, "ReceiverController"

    const-string v1, "filterReceiver() ignored with null action"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 336
    :cond_2
    if-eqz p2, :cond_0

    .line 339
    invoke-virtual {p0, p3}, Lcom/mediatek/mom/v;->isValidUserId(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 340
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filterReceiver() ignored with invalid userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    :cond_3
    invoke-static {p1}, Lcom/mediatek/common/mom/BootReceiverPolicy;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 348
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 350
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_4

    .line 352
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 353
    invoke-direct {p0, p1, p3, v0}, Lcom/mediatek/mom/v;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 354
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method public clearAllSettings()Z
    .locals 2

    .prologue
    .line 324
    const-string v0, "ReceiverController"

    const-string v1, "clearAllSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public clearPackageSettings(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 317
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearPackageSettings("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public d(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    if-eqz p1, :cond_0

    .line 251
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 252
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 254
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/mediatek/mom/v;->d(IZ)V

    goto :goto_0

    .line 257
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/mediatek/mom/MobileManagerService$a;)V
    .locals 1

    .prologue
    .line 131
    const-string v0, "ReceiverController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public f(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/ReceiverRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    invoke-static {p1}, Lcom/mediatek/mom/j;->j(I)I

    move-result v0

    .line 279
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 280
    const-string v2, "ReceiverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBootReceiverEnabledSettings() at User("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") with identity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v2, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/w;

    .line 283
    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0, v1, p2}, Lcom/mediatek/mom/w;->g(ILjava/util/List;)V

    .line 286
    :cond_0
    return-void
.end method

.method public f(ILjava/lang/String;)Z
    .locals 5

    .prologue
    .line 304
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 305
    invoke-static {p1}, Lcom/mediatek/mom/j;->j(I)I

    move-result v0

    .line 306
    const-string v2, "ReceiverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBootReceiverEnabledSetting("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") at User("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") with identity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v2, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/w;

    .line 309
    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0, v1, p2}, Lcom/mediatek/mom/w;->h(ILjava/lang/String;)Z

    move-result v0

    .line 312
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public l(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 97
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMontor("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/mom/v;->av:Z

    .line 99
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 102
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopMontor("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/mom/v;->av:Z

    .line 104
    return-void
.end method

.method public onPackageStatusChange(ILjava/lang/String;I)V
    .locals 6

    .prologue
    .line 142
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageStatusChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 144
    packed-switch p3, :pswitch_data_0

    .line 209
    :goto_0
    return-void

    .line 146
    :pswitch_0
    const-string v0, "ReceiverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PACKAGE_ADDED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at User("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v2, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    monitor-enter v2

    .line 148
    :try_start_0
    invoke-static {p2}, Lcom/mediatek/mom/j;->c(Ljava/lang/String;)I

    move-result v0

    .line 149
    invoke-static {v0}, Lcom/mediatek/mom/j;->e(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    const-string v3, "ReceiverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initRecordHelper("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-direct {p0, v0}, Lcom/mediatek/mom/v;->G(I)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 155
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/w;

    .line 157
    invoke-virtual {v0, v1, p2}, Lcom/mediatek/mom/w;->g(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 158
    invoke-virtual {v0, v1, p2}, Lcom/mediatek/mom/w;->j(ILjava/lang/String;)V

    goto :goto_1

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 164
    :pswitch_1
    const-string v0, "ReceiverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PACKAGE_REMOVED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at User("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v2, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    monitor-enter v2

    .line 167
    :try_start_2
    invoke-static {p2}, Lcom/mediatek/mom/j;->c(Ljava/lang/String;)I

    move-result v3

    .line 169
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 170
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/w;

    .line 172
    invoke-virtual {v0, v1, p2}, Lcom/mediatek/mom/w;->k(ILjava/lang/String;)V

    goto :goto_2

    .line 182
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 174
    :cond_3
    :try_start_3
    invoke-static {v3}, Lcom/mediatek/mom/j;->e(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 175
    const-string v0, "ReceiverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uninitReceiverCache("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/w;

    .line 178
    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lcom/mediatek/mom/w;->J(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 179
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_4
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 185
    :pswitch_2
    const-string v0, "ReceiverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PACKAGE_UPDATED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v2, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    monitor-enter v2

    .line 188
    :try_start_4
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 189
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 190
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/w;

    .line 191
    invoke-virtual {v0, v1, p2}, Lcom/mediatek/mom/w;->g(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 193
    invoke-virtual {v0, v1, p2}, Lcom/mediatek/mom/w;->i(ILjava/lang/String;)V

    goto :goto_3

    .line 198
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 195
    :cond_5
    :try_start_5
    invoke-virtual {v0, v1, p2}, Lcom/mediatek/mom/w;->k(ILjava/lang/String;)V

    goto :goto_3

    .line 198
    :cond_6
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_0

    .line 201
    :pswitch_3
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PACKAGE_EXT_AVAILABLE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 204
    :pswitch_4
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PACKAGE_EXT_UNAVAILABLE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onUserStatusChange(II)V
    .locals 4

    .prologue
    .line 213
    packed-switch p2, :pswitch_data_0

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 215
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/mediatek/mom/v;->isValidUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER_SWITCHED: Update cache for User("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/mom/v;->d(IZ)V

    goto :goto_0

    .line 221
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/mediatek/mom/v;->isValidUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER_ADDED: Init cache for User("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    monitor-enter v1

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 225
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/w;

    .line 227
    invoke-virtual {v0, p1}, Lcom/mediatek/mom/w;->I(I)V

    goto :goto_1

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 233
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/mediatek/mom/v;->isValidUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const-string v0, "ReceiverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER_REMOVED: Remove cache for User("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v1, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    monitor-enter v1

    .line 236
    :try_start_2
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 237
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/mediatek/mom/v;->au:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/w;

    .line 239
    invoke-virtual {v0, p1}, Lcom/mediatek/mom/w;->L(I)V

    goto :goto_2

    .line 241
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lcom/mediatek/mom/v;->getPackageManagerService()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/v;->g:Landroid/content/pm/IPackageManager;

    .line 137
    invoke-static {}, Lcom/mediatek/mom/v;->getActivityManagerService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/v;->W:Landroid/app/IActivityManager;

    .line 138
    return-void
.end method
