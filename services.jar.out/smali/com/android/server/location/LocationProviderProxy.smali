.class public Lcom/android/server/location/LocationProviderProxy;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "LocationProviderProxy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mLock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private mNewServiceWork:Ljava/lang/Runnable;

.field private mProperties:Lcom/android/internal/location/ProviderProperties;

.field private mRequest:Lcom/android/internal/location/ProviderRequest;

.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;

.field private mWorksource:Landroid/os/WorkSource;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "overlaySwitchResId"    # I
    .param p5, "defaultServicePackageNameResId"    # I
    .param p6, "initialPackageNamesResId"    # I
    .param p7, "handler"    # Landroid/os/Handler;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    .line 56
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mProperties:Lcom/android/internal/location/ProviderProperties;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    .line 60
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mWorksource:Landroid/os/WorkSource;

    .line 127
    new-instance v0, Lcom/android/server/location/LocationProviderProxy$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/LocationProviderProxy$1;-><init>(Lcom/android/server/location/LocationProviderProxy;)V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mNewServiceWork:Ljava/lang/Runnable;

    .line 79
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/android/server/ServiceWatcher;

    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocationProviderProxy-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/android/server/location/LocationProviderProxy;->mNewServiceWork:Ljava/lang/Runnable;

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LocationProviderProxy;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/location/LocationProviderProxy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LocationProviderProxy;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/internal/location/ProviderRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LocationProviderProxy;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/WorkSource;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LocationProviderProxy;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mWorksource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/internal/location/ILocationProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LocationProviderProxy;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/ServiceWatcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/LocationProviderProxy;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/location/LocationProviderProxy;Lcom/android/internal/location/ProviderProperties;)Lcom/android/internal/location/ProviderProperties;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/LocationProviderProxy;
    .param p1, "x1"    # Lcom/android/internal/location/ProviderProperties;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy;->mProperties:Lcom/android/internal/location/ProviderProperties;

    return-object p1
.end method

.method private bind()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->start()Z

    move-result v0

    return v0
.end method

.method public static close(Lcom/android/server/location/LocationProviderProxy;)V
    .locals 0
    .param p0, "proxy"    # Lcom/android/server/location/LocationProviderProxy;

    .prologue
    .line 98
    if-eqz p0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->unbind()V

    .line 101
    :cond_0
    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "overlaySwitchResId"    # I
    .param p4, "defaultServicePackageNameResId"    # I
    .param p5, "initialPackageNamesResId"    # I
    .param p6, "handler"    # Landroid/os/Handler;

    .prologue
    .line 91
    new-instance v0, Lcom/android/server/location/LocationProviderProxy;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/LocationProviderProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V

    .line 94
    .local v0, "proxy":Lcom/android/server/location/LocationProviderProxy;
    return-object v0
.end method

.method public static createAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "overlaySwitchResId"    # I
    .param p4, "defaultServicePackageNameResId"    # I
    .param p5, "initialPackageNamesResId"    # I
    .param p6, "handler"    # Landroid/os/Handler;

    .prologue
    .line 66
    new-instance v0, Lcom/android/server/location/LocationProviderProxy;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/LocationProviderProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V

    .line 69
    .local v0, "proxy":Lcom/android/server/location/LocationProviderProxy;
    invoke-direct {v0}, Lcom/android/server/location/LocationProviderProxy;->bind()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    .end local v0    # "proxy":Lcom/android/server/location/LocationProviderProxy;
    :goto_0
    return-object v0

    .restart local v0    # "proxy":Lcom/android/server/location/LocationProviderProxy;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getService()Lcom/android/internal/location/ILocationProvider;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    return-object v0
.end method

.method private unbind()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->stop()V

    .line 105
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 5

    .prologue
    .line 206
    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 207
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    .line 208
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v1

    .line 210
    .local v1, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 208
    .end local v1    # "service":Lcom/android/internal/location/ILocationProvider;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 213
    .restart local v1    # "service":Lcom/android/internal/location/ILocationProvider;
    :cond_0
    :try_start_2
    invoke-interface {v1}, Lcom/android/internal/location/ILocationProvider;->disable()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LocationProviderProxy"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 216
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LocationProviderProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v4}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 250
    const-string v2, "REMOTE SERVICE"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 251
    const-string v2, " name="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 252
    const-string v2, " pkg="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v3}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 253
    const-string v2, " version="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v4}, Lcom/android/server/ServiceWatcher;->getBestVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 254
    const/16 v2, 0xa

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 256
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v1

    .line 257
    .local v1, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v1, :cond_0

    .line 258
    const-string v2, "service down (null)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 264
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/location/ILocationProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "service down (RemoteException)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    const-string v2, "LocationProviderProxy"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 268
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "service down (Exception)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    const-string v2, "LocationProviderProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v4}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enable()V
    .locals 5

    .prologue
    .line 188
    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 189
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    .line 190
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v1

    .line 192
    .local v1, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v1, :cond_0

    .line 202
    :goto_0
    return-void

    .line 190
    .end local v1    # "service":Lcom/android/internal/location/ILocationProvider;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 195
    .restart local v1    # "service":Lcom/android/internal/location/ILocationProvider;
    :cond_0
    :try_start_2
    invoke-interface {v1}, Lcom/android/internal/location/ILocationProvider;->enable()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LocationProviderProxy"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 198
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LocationProviderProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v4}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectedPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .locals 2

    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mProperties:Lcom/android/internal/location/ProviderProperties;

    monitor-exit v1

    return-object v0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 277
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v1

    .line 278
    .local v1, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v1, :cond_0

    .line 288
    :goto_0
    return v2

    .line 281
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/internal/location/ILocationProvider;->getStatus(Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LocationProviderProxy"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 284
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "LocationProviderProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v5}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getStatusUpdateTime()J
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 293
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v1

    .line 294
    .local v1, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v1, :cond_0

    .line 304
    :goto_0
    return-wide v2

    .line 297
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/location/ILocationProvider;->getStatusUpdateTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "LocationProviderProxy"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 300
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "LocationProviderProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v6}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 224
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z

    monitor-exit v1

    return v0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 309
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v1

    .line 310
    .local v1, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v1, :cond_0

    .line 320
    :goto_0
    return v2

    .line 313
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/internal/location/ILocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LocationProviderProxy"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 316
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "LocationProviderProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v5}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 231
    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 232
    :try_start_0
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    .line 233
    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy;->mWorksource:Landroid/os/WorkSource;

    .line 234
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    invoke-direct {p0}, Lcom/android/server/location/LocationProviderProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v1

    .line 236
    .local v1, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v1, :cond_0

    .line 246
    :goto_0
    return-void

    .line 234
    .end local v1    # "service":Lcom/android/internal/location/ILocationProvider;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 239
    .restart local v1    # "service":Lcom/android/internal/location/ILocationProvider;
    :cond_0
    :try_start_2
    invoke-interface {v1, p1, p2}, Lcom/android/internal/location/ILocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LocationProviderProxy"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 242
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LocationProviderProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v4}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
