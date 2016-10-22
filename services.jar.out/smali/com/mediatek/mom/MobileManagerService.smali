.class public Lcom/mediatek/mom/MobileManagerService;
.super Lcom/mediatek/common/mom/IMobileManagerService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mom/MobileManagerService$b;,
        Lcom/mediatek/mom/MobileManagerService$a;
    }
.end annotation


# instance fields
.field private F:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/mom/ControllerBase;",
            ">;"
        }
    .end annotation
.end field

.field private G:Z

.field private H:Lcom/mediatek/mom/m;

.field private I:Lcom/mediatek/mom/r;

.field private J:Lcom/mediatek/mom/p;

.field private K:Lcom/mediatek/mom/v;

.field private L:Lcom/mediatek/mom/n;

.field private M:Lcom/mediatek/mom/c;

.field private N:Lcom/mediatek/mom/e;

.field private O:Lcom/mediatek/mom/d;

.field private P:Lcom/mediatek/mom/a;

.field private Q:Lcom/mediatek/mom/k;

.field private final R:Lcom/android/internal/content/PackageMonitor;

.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 107
    invoke-direct {p0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->F:Ljava/util/Map;

    .line 87
    iput-boolean v3, p0, Lcom/mediatek/mom/MobileManagerService;->G:Z

    .line 88
    iput-object v4, p0, Lcom/mediatek/mom/MobileManagerService;->mContext:Landroid/content/Context;

    .line 90
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MoMS.HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 91
    iput-object v4, p0, Lcom/mediatek/mom/MobileManagerService;->H:Lcom/mediatek/mom/m;

    .line 93
    iput-object v4, p0, Lcom/mediatek/mom/MobileManagerService;->I:Lcom/mediatek/mom/r;

    .line 94
    iput-object v4, p0, Lcom/mediatek/mom/MobileManagerService;->J:Lcom/mediatek/mom/p;

    .line 95
    iput-object v4, p0, Lcom/mediatek/mom/MobileManagerService;->K:Lcom/mediatek/mom/v;

    .line 96
    iput-object v4, p0, Lcom/mediatek/mom/MobileManagerService;->L:Lcom/mediatek/mom/n;

    .line 97
    iput-object v4, p0, Lcom/mediatek/mom/MobileManagerService;->M:Lcom/mediatek/mom/c;

    .line 98
    iput-object v4, p0, Lcom/mediatek/mom/MobileManagerService;->N:Lcom/mediatek/mom/e;

    .line 99
    iput-object v4, p0, Lcom/mediatek/mom/MobileManagerService;->O:Lcom/mediatek/mom/d;

    .line 100
    iput-object v4, p0, Lcom/mediatek/mom/MobileManagerService;->P:Lcom/mediatek/mom/a;

    .line 101
    iput-object v4, p0, Lcom/mediatek/mom/MobileManagerService;->Q:Lcom/mediatek/mom/k;

    .line 397
    new-instance v0, Lcom/mediatek/mom/MobileManagerService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/mom/MobileManagerService$1;-><init>(Lcom/mediatek/mom/MobileManagerService;)V

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->R:Lcom/android/internal/content/PackageMonitor;

    .line 109
    iput-object p1, p0, Lcom/mediatek/mom/MobileManagerService;->mContext:Landroid/content/Context;

    .line 112
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 113
    new-instance v0, Lcom/mediatek/mom/m;

    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/mom/m;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->H:Lcom/mediatek/mom/m;

    .line 114
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->H:Lcom/mediatek/mom/m;

    invoke-static {v0}, Lcom/mediatek/mom/g;->a(Landroid/os/Handler;)V

    .line 117
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/mom/j;->init(Landroid/content/Context;)V

    .line 120
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->F:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/mom/p;->a()Lcom/mediatek/mom/ControllerBase;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-direct {p0, v5}, Lcom/mediatek/mom/MobileManagerService;->n(I)Lcom/mediatek/mom/ControllerBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/p;

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->J:Lcom/mediatek/mom/p;

    .line 123
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->F:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->J:Lcom/mediatek/mom/p;

    invoke-static {v2}, Lcom/mediatek/mom/r;->a(Lcom/mediatek/mom/p;)Lcom/mediatek/mom/ControllerBase;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-direct {p0, v3}, Lcom/mediatek/mom/MobileManagerService;->n(I)Lcom/mediatek/mom/ControllerBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/r;

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->I:Lcom/mediatek/mom/r;

    .line 126
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->F:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/mom/MobileManagerService;->H:Lcom/mediatek/mom/m;

    invoke-static {v2, v3}, Lcom/mediatek/mom/v;->a(Landroid/content/Context;Landroid/os/Handler;)Lcom/mediatek/mom/ControllerBase;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-direct {p0, v6}, Lcom/mediatek/mom/MobileManagerService;->n(I)Lcom/mediatek/mom/ControllerBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/v;

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->K:Lcom/mediatek/mom/v;

    .line 129
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->F:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/mom/n;->a()Lcom/mediatek/mom/ControllerBase;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-direct {p0, v7}, Lcom/mediatek/mom/MobileManagerService;->n(I)Lcom/mediatek/mom/ControllerBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/n;

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->L:Lcom/mediatek/mom/n;

    .line 132
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->F:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/mom/c;->a()Lcom/mediatek/mom/ControllerBase;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->n(I)Lcom/mediatek/mom/ControllerBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/c;

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->M:Lcom/mediatek/mom/c;

    .line 135
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->F:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/mom/e;->a()Lcom/mediatek/mom/ControllerBase;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->n(I)Lcom/mediatek/mom/ControllerBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/e;

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->N:Lcom/mediatek/mom/e;

    .line 138
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->F:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/mom/d;->a()Lcom/mediatek/mom/ControllerBase;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->n(I)Lcom/mediatek/mom/ControllerBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/d;

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->O:Lcom/mediatek/mom/d;

    .line 141
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->F:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/mom/a;->a()Lcom/mediatek/mom/ControllerBase;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->n(I)Lcom/mediatek/mom/ControllerBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/a;

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->P:Lcom/mediatek/mom/a;

    .line 144
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->F:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/mom/k;->a()Lcom/mediatek/mom/ControllerBase;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->n(I)Lcom/mediatek/mom/ControllerBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/k;

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->Q:Lcom/mediatek/mom/k;

    .line 148
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->R:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 151
    invoke-static {}, Lcom/mediatek/mom/MobileManagerService;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/mediatek/mom/MobileManagerService$b;

    invoke-direct {v2, p0, v4}, Lcom/mediatek/mom/MobileManagerService$b;-><init>(Lcom/mediatek/mom/MobileManagerService;Lcom/mediatek/mom/MobileManagerService$1;)V

    iget-object v3, p0, Lcom/mediatek/mom/MobileManagerService;->H:Lcom/mediatek/mom/m;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 158
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mediatek/mom/MobileManagerService;)Lcom/mediatek/mom/e;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->N:Lcom/mediatek/mom/e;

    return-object v0
.end method

.method static synthetic a(Lcom/mediatek/mom/MobileManagerService;II)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/mediatek/mom/MobileManagerService;->d(II)V

    return-void
.end method

.method static synthetic a(Lcom/mediatek/mom/MobileManagerService;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/mom/MobileManagerService;->onPackageStatusChange(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/mediatek/mom/MobileManagerService;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/mom/MobileManagerService;->a(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic a(Lcom/mediatek/mom/MobileManagerService;Z[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/mediatek/mom/MobileManagerService;->a(Z[Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .locals 3

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/mediatek/mom/MobileManagerService;->G:Z

    if-eqz v0, :cond_0

    .line 490
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mom.action.PACKAGE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    const-string v1, "mom.action.extra.status"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 492
    const-string v1, "mom.action.extra.package"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    const-string v1, "mom.action.extra.user"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 495
    const/16 v1, -0x2710

    if-eq p3, v1, :cond_1

    .line 496
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private a(Z[Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 460
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x3

    move v1, v0

    :goto_0
    move v2, v3

    .line 464
    :goto_1
    array-length v0, p2

    if-ge v2, v0, :cond_2

    .line 466
    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/mediatek/mom/p;->g(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 467
    if-eqz v0, :cond_3

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_3

    .line 468
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move v4, v0

    .line 470
    :goto_2
    const-string v0, "MobileManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlePackageAvaliable() package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " appId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/16 v0, 0x2710

    if-lt v4, v0, :cond_1

    .line 472
    invoke-direct {p0}, Lcom/mediatek/mom/MobileManagerService;->r()Ljava/util/List;

    move-result-object v0

    .line 473
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 474
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 476
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 477
    aget-object v6, p2, v2

    invoke-direct {p0, v0, v6, v1}, Lcom/mediatek/mom/MobileManagerService;->onPackageStatusChange(ILjava/lang/String;I)V

    goto :goto_3

    .line 460
    :cond_0
    const/4 v0, 0x4

    move v1, v0

    goto :goto_0

    .line 481
    :cond_1
    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/mediatek/mom/p;->i(Ljava/lang/String;)V

    .line 464
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 484
    :cond_2
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->K:Lcom/mediatek/mom/v;

    invoke-direct {p0}, Lcom/mediatek/mom/MobileManagerService;->r()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mediatek/mom/v;->d(Ljava/util/List;)V

    .line 485
    invoke-direct {p0, p2, v1}, Lcom/mediatek/mom/MobileManagerService;->a([Ljava/lang/String;I)V

    .line 486
    return-void

    :cond_3
    move v4, v3

    goto :goto_2
.end method

.method private a([Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/mediatek/mom/MobileManagerService;->G:Z

    if-eqz v0, :cond_0

    .line 505
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mom.action.PACKAGE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 506
    const-string v1, "mom.action.extra.status"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 507
    const-string v1, "mom.action.extra.package.list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    const-string v1, "mom.action.extra.user"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 509
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 511
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/mediatek/mom/MobileManagerService;II)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/mediatek/mom/MobileManagerService;->c(II)V

    return-void
.end method

.method private c(II)V
    .locals 3

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/mediatek/mom/MobileManagerService;->G:Z

    if-eqz v0, :cond_0

    .line 515
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mom.action.USER_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    const-string v1, "mom.action.extra.status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 517
    const-string v1, "mom.action.extra.user"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 518
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 520
    :cond_0
    return-void
.end method

.method private d(II)V
    .locals 3

    .prologue
    .line 570
    const-string v0, "MobileManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User Status Changed, userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->F:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 573
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 574
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 575
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ControllerBase;

    .line 576
    instance-of v2, v0, Lcom/mediatek/mom/IPackageBasedController;

    if-eqz v2, :cond_1

    .line 577
    check-cast v0, Lcom/mediatek/mom/IPackageBasedController;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/mom/IPackageBasedController;->onUserStatusChange(II)V

    goto :goto_0

    .line 579
    :cond_1
    instance-of v2, v0, Lcom/mediatek/mom/IPermissionController;

    if-eqz v2, :cond_0

    .line 580
    check-cast v0, Lcom/mediatek/mom/IPermissionController;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/mom/IPermissionController;->onUserStatusChange(II)V

    goto :goto_0

    .line 584
    :cond_2
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 284
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->p(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use MoMS API without valid license: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->I:Lcom/mediatek/mom/r;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/mom/r;->v(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use MoMS API without attachment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 298
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 299
    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    .line 300
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use MoMS API without valid uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " pid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    :cond_0
    return-void
.end method

.method private n(I)Lcom/mediatek/mom/ControllerBase;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->F:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ControllerBase;

    return-object v0
.end method

.method private o(I)V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->I:Lcom/mediatek/mom/r;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/r;->u(I)V

    .line 345
    return-void
.end method

.method private onPackageStatusChange(ILjava/lang/String;I)V
    .locals 3

    .prologue
    .line 523
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->F:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 524
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 525
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 526
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ControllerBase;

    .line 527
    instance-of v2, v0, Lcom/mediatek/mom/IPackageBasedController;

    if-eqz v2, :cond_1

    .line 528
    check-cast v0, Lcom/mediatek/mom/IPackageBasedController;

    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/mom/IPackageBasedController;->onPackageStatusChange(ILjava/lang/String;I)V

    goto :goto_0

    .line 529
    :cond_1
    instance-of v2, v0, Lcom/mediatek/mom/IPermissionController;

    if-eqz v2, :cond_0

    .line 530
    check-cast v0, Lcom/mediatek/mom/IPermissionController;

    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/mom/IPermissionController;->onPackageStatusChange(ILjava/lang/String;I)V

    goto :goto_0

    .line 535
    :cond_2
    const/4 v0, 0x1

    if-ne p3, v0, :cond_4

    .line 538
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->N:Lcom/mediatek/mom/e;

    invoke-static {p2}, Lcom/mediatek/mom/e;->a(Ljava/lang/String;)I

    move-result v0

    .line 541
    invoke-static {v0}, Lcom/mediatek/mom/j;->d(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 542
    invoke-direct {p0}, Lcom/mediatek/mom/MobileManagerService;->q()V

    .line 548
    :cond_3
    :goto_1
    return-void

    .line 544
    :cond_4
    if-nez p3, :cond_3

    .line 545
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->N:Lcom/mediatek/mom/e;

    invoke-static {p2}, Lcom/mediatek/mom/e;->a(Ljava/lang/String;)I

    move-result v0

    .line 546
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->I:Lcom/mediatek/mom/r;

    invoke-virtual {v1, v0}, Lcom/mediatek/mom/r;->s(I)V

    goto :goto_1
.end method

.method private static p()Z
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x1

    .line 168
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p(I)Z
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->N:Lcom/mediatek/mom/e;

    invoke-static {p1}, Lcom/mediatek/mom/e;->a(I)I

    move-result v0

    .line 350
    if-eqz v0, :cond_0

    .line 351
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->N:Lcom/mediatek/mom/e;

    invoke-virtual {v1, p1, v0}, Lcom/mediatek/mom/e;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    const/4 v0, 0x1

    .line 355
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()V
    .locals 3

    .prologue
    .line 365
    const-string v0, "MobileManagerService"

    const-string v1, "clearAllSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->F:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 368
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 370
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ControllerBase;

    .line 371
    instance-of v2, v0, Lcom/mediatek/mom/IPackageBasedController;

    if-eqz v2, :cond_0

    .line 372
    check-cast v0, Lcom/mediatek/mom/IPackageBasedController;

    invoke-interface {v0}, Lcom/mediatek/mom/IPackageBasedController;->clearAllSettings()Z

    goto :goto_0

    .line 375
    :cond_1
    return-void
.end method

.method private r()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    const/4 v0, 0x0

    .line 449
    :try_start_0
    const-string v1, "user"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v1

    .line 450
    if-eqz v1, :cond_0

    .line 451
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 456
    :cond_0
    :goto_0
    return-object v0

    .line 453
    :catch_0
    move-exception v1

    .line 454
    const-string v2, "MobileManagerService"

    const-string v3, "getUsers() failed!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized attach(Lcom/mediatek/common/mom/IMobileConnectionCallback;)Z
    .locals 6

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    const-string v0, "attach()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->d(Ljava/lang/String;)V

    .line 317
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 318
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->N:Lcom/mediatek/mom/e;

    invoke-static {v1}, Lcom/mediatek/mom/e;->a(I)I

    move-result v2

    .line 319
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->I:Lcom/mediatek/mom/r;

    invoke-virtual {v0, v1}, Lcom/mediatek/mom/r;->w(I)I

    move-result v0

    .line 322
    const-string v3, "MobileManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attach() currentIdentity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " checkIdentity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    if-nez p1, :cond_0

    .line 325
    const-string v0, "MobileManagerService"

    const-string v1, "attach with null callback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    const/4 v0, 0x0

    .line 335
    :goto_0
    monitor-exit p0

    return v0

    .line 328
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/mom/MobileManagerService;->I:Lcom/mediatek/mom/r;

    invoke-virtual {v3, p1, v1, v0, v2}, Lcom/mediatek/mom/r;->a(Lcom/mediatek/common/mom/IMobileConnectionCallback;III)Z

    move-result v0

    .line 330
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 331
    const-string v3, "MobileManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attach() with uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " identity: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " successfully"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 333
    :cond_1
    :try_start_2
    const-string v3, "MobileManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attach() with uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " identity: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public cancelNotification(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 856
    const-string v0, "cancelNotification()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->d(Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->L:Lcom/mediatek/mom/n;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/n;->cancelNotification(Ljava/lang/String;)V

    .line 858
    return-void
.end method

.method public checkPermission(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->I:Lcom/mediatek/mom/r;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/mediatek/mom/r;->a(Ljava/lang/String;ILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public checkPermissionAsync(Ljava/lang/String;ILcom/mediatek/common/mom/IRequestedPermissionCallback;)V
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->I:Lcom/mediatek/mom/r;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/mediatek/mom/r;->a(Ljava/lang/String;ILandroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)V

    .line 710
    return-void
.end method

.method public checkPermissionAsyncWithData(Ljava/lang/String;ILandroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)V
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->I:Lcom/mediatek/mom/r;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/mom/r;->a(Ljava/lang/String;ILandroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)V

    .line 719
    return-void
.end method

.method public checkPermissionWithData(Ljava/lang/String;ILandroid/os/Bundle;)I
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->I:Lcom/mediatek/mom/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/mom/r;->a(Ljava/lang/String;ILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public clearAllSettings()V
    .locals 1

    .prologue
    .line 359
    const-string v0, "clearAllSettings()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->d(Ljava/lang/String;)V

    .line 360
    invoke-direct {p0}, Lcom/mediatek/mom/MobileManagerService;->q()V

    .line 361
    return-void
.end method

.method public clearPackageSettings(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 379
    const-string v0, "clearPackageSettings()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->d(Ljava/lang/String;)V

    .line 380
    const-string v0, "MobileManagerService"

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

    .line 382
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->F:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 383
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 385
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ControllerBase;

    .line 386
    instance-of v2, v0, Lcom/mediatek/mom/IPackageBasedController;

    if-eqz v2, :cond_0

    .line 387
    check-cast v0, Lcom/mediatek/mom/IPackageBasedController;

    invoke-interface {v0, p1}, Lcom/mediatek/mom/IPackageBasedController;->clearPackageSettings(Ljava/lang/String;)Z

    goto :goto_0

    .line 390
    :cond_1
    return-void
.end method

.method public deletePackage(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 835
    const-string v0, "deletePackage()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->d(Ljava/lang/String;)V

    .line 837
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 839
    iget-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->J:Lcom/mediatek/mom/p;

    invoke-virtual {v2, p1}, Lcom/mediatek/mom/p;->deletePackage(Ljava/lang/String;)V

    .line 841
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 842
    return-void
.end method

.method public detach()V
    .locals 1

    .prologue
    .line 339
    const-string v0, "detach()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->e(Ljava/lang/String;)V

    .line 340
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->o(I)V

    .line 341
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 212
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump MobileManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v0, v1

    .line 222
    :cond_2
    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_3

    .line 223
    aget-object v2, p3, v0

    .line 224
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_5

    .line 248
    :cond_3
    new-instance v1, Lcom/mediatek/mom/MobileManagerService$a;

    invoke-direct {v1}, Lcom/mediatek/mom/MobileManagerService$a;-><init>()V

    .line 251
    array-length v2, p3

    if-ge v0, v2, :cond_4

    .line 252
    aget-object v2, p3, v0

    .line 253
    add-int/lit8 v0, v0, 0x1

    .line 254
    const-string v0, "permission"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 255
    invoke-virtual {v1, v5}, Lcom/mediatek/mom/MobileManagerService$a;->r(I)V

    .line 267
    :cond_4
    :goto_2
    invoke-virtual {v1, v5}, Lcom/mediatek/mom/MobileManagerService$a;->q(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    invoke-virtual {v1, v7}, Lcom/mediatek/mom/MobileManagerService$a;->q(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    invoke-virtual {v1, v6}, Lcom/mediatek/mom/MobileManagerService$a;->q(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    invoke-virtual {v1, v8}, Lcom/mediatek/mom/MobileManagerService$a;->q(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/mediatek/mom/MobileManagerService$a;->q(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 227
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 228
    const-string v3, "-a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 230
    const-string v3, "-h"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 231
    const-string v0, "Mobile manager dump options:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    const-string v0, "  [-h] [-c] [controller] ..."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    const-string v0, "    -c: print the specific controller"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    const-string v0, "    -h: print this help"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    const-string v0, "  controller may be one of:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    const-string v0, "    permission: list permission configuration"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    const-string v0, "    package: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    const-string v0, "    receiver: list packages that cannot receive BOOT_COMPLETED"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    const-string v0, "    notification: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    const-string v0, "    firewall: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 242
    :cond_6
    const-string v3, "-c"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; use -h for help"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 256
    :cond_7
    const-string v0, "package"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 257
    invoke-virtual {v1, v6}, Lcom/mediatek/mom/MobileManagerService$a;->r(I)V

    goto/16 :goto_2

    .line 258
    :cond_8
    const-string v0, "receiver"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 259
    invoke-virtual {v1, v7}, Lcom/mediatek/mom/MobileManagerService$a;->r(I)V

    goto/16 :goto_2

    .line 260
    :cond_9
    const-string v0, "notification"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 261
    invoke-virtual {v1, v8}, Lcom/mediatek/mom/MobileManagerService$a;->r(I)V

    goto/16 :goto_2

    .line 262
    :cond_a
    const-string v0, "firewall"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 263
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/mediatek/mom/MobileManagerService$a;->r(I)V

    goto/16 :goto_2
.end method

.method public enableInterceptionController(Z)V
    .locals 3

    .prologue
    .line 879
    const-string v0, "enableInterceptionController()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->d(Ljava/lang/String;)V

    .line 880
    const-string v0, "MobileManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableInterceptionController() enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->O:Lcom/mediatek/mom/d;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/d;->enableController(Z)V

    .line 882
    return-void
.end method

.method public enablePermissionController(Z)V
    .locals 3

    .prologue
    .line 670
    const-string v0, "enablePermissionController()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->e(Ljava/lang/String;)V

    .line 671
    const-string v0, "MobileManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enablePermissionController() enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->I:Lcom/mediatek/mom/r;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/r;->enableController(Z)V

    .line 673
    return-void
.end method

.method public filterReceiver(Landroid/content/Intent;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 776
    const-string v0, "filterReceiver()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->f(Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->K:Lcom/mediatek/mom/v;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/mediatek/mom/v;->a(Ljava/lang/String;Ljava/util/List;I)V

    .line 778
    return-void
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 800
    const-string v0, "forceStopPackage()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->d(Ljava/lang/String;)V

    .line 802
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 804
    iget-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->J:Lcom/mediatek/mom/p;

    invoke-virtual {v2, p1}, Lcom/mediatek/mom/p;->forceStopPackage(Ljava/lang/String;)V

    .line 806
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 807
    return-void
.end method

.method public getBootReceiverEnabledSetting(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 770
    const-string v0, "getBootReceiverEnabledSetting()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->d(Ljava/lang/String;)V

    .line 771
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 772
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->K:Lcom/mediatek/mom/v;

    invoke-virtual {v1, v0, p1}, Lcom/mediatek/mom/v;->f(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBootReceiverList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/ReceiverRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 738
    const-string v0, "getBootReceiverList()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->d(Ljava/lang/String;)V

    .line 739
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 740
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->K:Lcom/mediatek/mom/v;

    invoke-virtual {v1, v0}, Lcom/mediatek/mom/v;->H(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    const-string v0, "getInstalledPackages()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->d(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->J:Lcom/mediatek/mom/p;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/mom/p;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInterceptionEnabledSetting()Z
    .locals 1

    .prologue
    .line 885
    const-string v0, "getInterceptionEnabledSetting()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->f(Ljava/lang/String;)V

    .line 886
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->O:Lcom/mediatek/mom/d;

    invoke-virtual {v0}, Lcom/mediatek/mom/d;->isControllerEnabled()Z

    move-result v0

    return v0
.end method

.method public getNotificationEnabledSetting(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 866
    const-string v0, "getNotificationEnabledSetting()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->f(Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->L:Lcom/mediatek/mom/n;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/n;->getNotificationEnabledSetting(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPackageGrantedPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 676
    const-string v0, "getPackageGrantedPermissions()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->d(Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->I:Lcom/mediatek/mom/r;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/mom/r;->c(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 679
    return-object v0
.end method

.method public getParentPermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->I:Lcom/mediatek/mom/r;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/r;->getParentPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserConfirmTime(IJ)J
    .locals 6

    .prologue
    .line 722
    const-string v0, "getUserConfirmTime"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->f(Ljava/lang/String;)V

    .line 724
    const/16 v0, -0x2710

    if-ne p1, v0, :cond_0

    .line 725
    const-string v0, "MobileManagerService"

    const-string v1, "getUserConfirmTime() skipped because of null user id"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const-wide/16 v0, 0x0

    .line 731
    :goto_0
    return-wide v0

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->I:Lcom/mediatek/mom/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/mom/r;->getUserConfirmTime(IJ)J

    move-result-wide v0

    .line 729
    const-string v2, "MobileManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserConfirmTime() at User("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") timeBound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " totalTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    const-string v0, "getVersionName()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->d(Ljava/lang/String;)V

    .line 307
    const-string v0, "MoMS.5.0.0"

    return-object v0
.end method

.method public installPackage(Landroid/net/Uri;Lcom/mediatek/common/mom/IPackageInstallCallback;)V
    .locals 3

    .prologue
    .line 818
    const-string v0, "installPackage()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->d(Ljava/lang/String;)V

    .line 820
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 822
    iget-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->J:Lcom/mediatek/mom/p;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/mom/p;->installPackage(Landroid/net/Uri;Lcom/mediatek/common/mom/IPackageInstallCallback;)V

    .line 824
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 825
    return-void
.end method

.method public registerManagerApListener(ILandroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 588
    if-nez p1, :cond_0

    .line 589
    const-string v0, "registerManagerApListener()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->e(Ljava/lang/String;)V

    .line 593
    :goto_0
    invoke-direct {p0, p1}, Lcom/mediatek/mom/MobileManagerService;->n(I)Lcom/mediatek/mom/ControllerBase;

    move-result-object v0

    .line 594
    const-string v1, "MobileManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerManagerApListener() controllerID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    if-eqz v0, :cond_1

    .line 597
    invoke-virtual {v0, p2}, Lcom/mediatek/mom/ControllerBase;->registerManagerApListener(Landroid/os/IBinder;)V

    .line 601
    :goto_1
    return-void

    .line 591
    :cond_0
    const-string v0, "registerManagerApListener()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 599
    :cond_1
    const-string v0, "MobileManagerService"

    const-string v1, "registerManagerApListener() failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setBootReceiverEnabledSetting(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 751
    const-string v0, "setBootReceiverEnabledSetting()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->d(Ljava/lang/String;)V

    .line 752
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 753
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->K:Lcom/mediatek/mom/v;

    invoke-virtual {v1, v0, p1, p2}, Lcom/mediatek/mom/v;->a(ILjava/lang/String;Z)V

    .line 754
    return-void
.end method

.method public setBootReceiverEnabledSettings(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/ReceiverRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 757
    const-string v0, "setBootReceiverEnabledSettings()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->d(Ljava/lang/String;)V

    .line 758
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 759
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->K:Lcom/mediatek/mom/v;

    invoke-virtual {v1, v0, p1}, Lcom/mediatek/mom/v;->f(ILjava/util/List;)V

    .line 760
    return-void
.end method

.method public setFirewallPolicy(IIZ)V
    .locals 1

    .prologue
    .line 848
    const-string v0, "setFirewallPolicy()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->d(Ljava/lang/String;)V

    .line 849
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->M:Lcom/mediatek/mom/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/mom/c;->setFirewallPolicy(IIZ)V

    .line 850
    return-void
.end method

.method public setNotificationCache(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/NotificationCacheRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 871
    const-string v0, "setNotificationCache()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->d(Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->L:Lcom/mediatek/mom/n;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/n;->setNotificationCache(Ljava/util/List;)V

    .line 873
    return-void
.end method

.method public setNotificationEnabledSetting(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 861
    const-string v0, "setNotificationEnabledSetting()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->d(Ljava/lang/String;)V

    .line 862
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->L:Lcom/mediatek/mom/n;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/mom/n;->setNotificationEnabledSetting(Ljava/lang/String;Z)V

    .line 863
    return-void
.end method

.method public setPermissionCache(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 693
    const-string v0, "setPermissionCache()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->e(Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->I:Lcom/mediatek/mom/r;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/mom/r;->A(I)V

    .line 696
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->I:Lcom/mediatek/mom/r;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/mom/r;->c(ILjava/util/List;)V

    .line 697
    return-void
.end method

.method public setPermissionRecord(Lcom/mediatek/common/mom/PermissionRecord;)V
    .locals 2

    .prologue
    .line 683
    const-string v0, "setPermissionRecord()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->e(Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->I:Lcom/mediatek/mom/r;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/mom/r;->a(ILcom/mediatek/common/mom/PermissionRecord;)V

    .line 685
    return-void
.end method

.method public setPermissionRecords(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 688
    const-string v0, "setPermissionRecords()"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->e(Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->I:Lcom/mediatek/mom/r;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/mom/r;->c(ILjava/util/List;)V

    .line 690
    return-void
.end method

.method public startMonitorBootReceiver(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startMonitorBootReceiver("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->f(Ljava/lang/String;)V

    .line 782
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->K:Lcom/mediatek/mom/v;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/v;->l(Ljava/lang/String;)V

    .line 783
    return-void
.end method

.method public stopMonitorBootReceiver(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopMonitorBootReceiver("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->f(Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->K:Lcom/mediatek/mom/v;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/v;->m(Ljava/lang/String;)V

    .line 788
    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 175
    const-string v0, "MobileManagerService"

    const-string v1, "systemReady()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->F:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 178
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 180
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ControllerBase;

    .line 181
    iget-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/mediatek/mom/ControllerBase;->systemReady(Landroid/content/Context;)V

    goto :goto_0

    .line 185
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mom/MobileManagerService;->G:Z

    .line 186
    return-void
.end method

.method public triggerManagerApListener(ILandroid/os/Bundle;I)I
    .locals 5

    .prologue
    .line 612
    const-string v0, "triggerManagerApListener"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->f(Ljava/lang/String;)V

    .line 613
    const/4 v0, 0x0

    .line 616
    invoke-direct {p0, p1}, Lcom/mediatek/mom/MobileManagerService;->n(I)Lcom/mediatek/mom/ControllerBase;

    move-result-object v1

    .line 619
    const-string v2, "MobileManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "triggerManagerApListener() controllerID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " defaultResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    if-eqz v1, :cond_1

    .line 623
    invoke-virtual {v1}, Lcom/mediatek/mom/ControllerBase;->getManagerApListener()Landroid/os/IBinder;

    move-result-object v1

    .line 624
    if-eqz v1, :cond_0

    .line 625
    invoke-static {p1, v1, p2, p3}, Lcom/mediatek/mom/g;->a(ILandroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v0

    .line 633
    :goto_0
    return v0

    .line 628
    :cond_0
    const-string v1, "MobileManagerService"

    const-string v2, "Trigger null listener!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 631
    :cond_1
    const-string v1, "MobileManagerService"

    const-string v2, "triggerManagerApListener() failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public triggerManagerApListenerAsync(ILandroid/os/Bundle;ILandroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 637
    const-string v0, "triggerManagerApListenerAsync"

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->f(Ljava/lang/String;)V

    .line 640
    if-nez p4, :cond_0

    .line 641
    const-string v0, "MobileManagerService"

    const-string v1, "triggerManagerApListenerAsync() with null callback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :goto_0
    return-void

    .line 646
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/mom/MobileManagerService;->n(I)Lcom/mediatek/mom/ControllerBase;

    move-result-object v0

    .line 649
    const-string v1, "MobileManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerManagerApListenerAsync() controllerID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " defaultResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    if-eqz v0, :cond_2

    .line 654
    invoke-virtual {v0}, Lcom/mediatek/mom/ControllerBase;->getManagerApListener()Landroid/os/IBinder;

    move-result-object v0

    .line 655
    if-eqz v0, :cond_1

    .line 656
    invoke-static {p1, v0, p2, p3, p4}, Lcom/mediatek/mom/g;->a(ILandroid/os/IBinder;Landroid/os/Bundle;ILandroid/os/IBinder;)V

    goto :goto_0

    .line 659
    :cond_1
    const-string v0, "MobileManagerService"

    const-string v1, "Trigger null listener!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 662
    :cond_2
    const-string v0, "MobileManagerService"

    const-string v1, "triggerManagerApListener() failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
