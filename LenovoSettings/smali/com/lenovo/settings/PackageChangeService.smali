.class public Lcom/lenovo/settings/PackageChangeService;
.super Landroid/app/Service;
.source "PackageChangeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/PackageChangeService$PackageUpdateTask;
    }
.end annotation


# instance fields
.field private mExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 77
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 27
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/PackageChangeService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 28
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 73
    iget-object v0, p0, Lcom/lenovo/settings/PackageChangeService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/settings/PackageChangeService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 75
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 37
    if-nez p1, :cond_0

    .line 38
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v3

    .line 67
    :goto_0
    return v3

    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 45
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "pkgName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 49
    .local v1, "op":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 51
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v3

    goto :goto_0

    .line 54
    :cond_2
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 55
    const/4 v1, 0x2

    .line 62
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/lenovo/settings/PackageChangeService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/lenovo/settings/PackageChangeService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v3

    if-nez v3, :cond_4

    .line 64
    iget-object v3, p0, Lcom/lenovo/settings/PackageChangeService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/lenovo/settings/PackageChangeService$PackageUpdateTask;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-direct {v4, p0, v1, v5}, Lcom/lenovo/settings/PackageChangeService$PackageUpdateTask;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 67
    .end local v1    # "op":I
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v3

    goto :goto_0

    .line 56
    .restart local v1    # "op":I
    .restart local v2    # "pkgName":Ljava/lang/String;
    :cond_5
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 57
    const/4 v1, 0x3

    goto :goto_1

    .line 58
    :cond_6
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 59
    const/4 v1, 0x1

    goto :goto_1
.end method
