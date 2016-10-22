.class Lcom/mediatek/mom/MobileManagerService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mom/MobileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic S:Lcom/mediatek/mom/MobileManagerService;


# direct methods
.method constructor <init>(Lcom/mediatek/mom/MobileManagerService;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/mediatek/mom/MobileManagerService$1;->S:Lcom/mediatek/mom/MobileManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 400
    invoke-virtual {p0}, Lcom/mediatek/mom/MobileManagerService$1;->getChangingUserId()I

    move-result v0

    .line 401
    const-string v1, "MobileManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPackageAdded() packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at User("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService$1;->S:Lcom/mediatek/mom/MobileManagerService;

    invoke-static {v1}, Lcom/mediatek/mom/MobileManagerService;->a(Lcom/mediatek/mom/MobileManagerService;)Lcom/mediatek/mom/e;

    invoke-static {p2}, Lcom/mediatek/mom/e;->a(I)I

    move-result v1

    .line 403
    invoke-static {v1}, Lcom/mediatek/mom/j;->g(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    invoke-static {v1, p2}, Lcom/mediatek/mom/j;->b(II)V

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService$1;->S:Lcom/mediatek/mom/MobileManagerService;

    invoke-static {v1, p2, p1, v4}, Lcom/mediatek/mom/MobileManagerService;->a(Lcom/mediatek/mom/MobileManagerService;ILjava/lang/String;I)V

    .line 407
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService$1;->S:Lcom/mediatek/mom/MobileManagerService;

    invoke-static {v1, p1, v4, v0}, Lcom/mediatek/mom/MobileManagerService;->a(Lcom/mediatek/mom/MobileManagerService;Ljava/lang/String;II)V

    .line 408
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 411
    invoke-virtual {p0}, Lcom/mediatek/mom/MobileManagerService$1;->getChangingUserId()I

    move-result v0

    .line 412
    const-string v1, "MobileManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPackageRemoved() packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at User("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService$1;->S:Lcom/mediatek/mom/MobileManagerService;

    invoke-static {v1, p2, p1, v4}, Lcom/mediatek/mom/MobileManagerService;->a(Lcom/mediatek/mom/MobileManagerService;ILjava/lang/String;I)V

    .line 415
    invoke-static {p2}, Lcom/mediatek/mom/j;->j(I)I

    move-result v1

    .line 416
    invoke-static {v1}, Lcom/mediatek/mom/j;->g(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    invoke-static {v1}, Lcom/mediatek/mom/j;->h(I)V

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService$1;->S:Lcom/mediatek/mom/MobileManagerService;

    invoke-static {v1, p1, v4, v0}, Lcom/mediatek/mom/MobileManagerService;->a(Lcom/mediatek/mom/MobileManagerService;Ljava/lang/String;II)V

    .line 420
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 423
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 424
    const-string v1, "MobileManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPackageUpdateFinished() packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at User("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-static {p1}, Lcom/mediatek/mom/j;->c(Ljava/lang/String;)I

    move-result v1

    .line 426
    invoke-static {v1}, Lcom/mediatek/mom/j;->g(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    invoke-static {v1, p2}, Lcom/mediatek/mom/j;->b(II)V

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService$1;->S:Lcom/mediatek/mom/MobileManagerService;

    invoke-static {v1, p2, p1, v4}, Lcom/mediatek/mom/MobileManagerService;->a(Lcom/mediatek/mom/MobileManagerService;ILjava/lang/String;I)V

    .line 430
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService$1;->S:Lcom/mediatek/mom/MobileManagerService;

    invoke-static {v1, p1, v4, v0}, Lcom/mediatek/mom/MobileManagerService;->a(Lcom/mediatek/mom/MobileManagerService;Ljava/lang/String;II)V

    .line 431
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 435
    const-string v0, "MobileManagerService"

    const-string v1, "onPackagesAvailable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService$1;->S:Lcom/mediatek/mom/MobileManagerService;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/mediatek/mom/MobileManagerService;->a(Lcom/mediatek/mom/MobileManagerService;Z[Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 440
    const-string v0, "MobileManagerService"

    const-string v1, "onPackagesUnavailable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService$1;->S:Lcom/mediatek/mom/MobileManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/mediatek/mom/MobileManagerService;->a(Lcom/mediatek/mom/MobileManagerService;Z[Ljava/lang/String;)V

    .line 442
    return-void
.end method
