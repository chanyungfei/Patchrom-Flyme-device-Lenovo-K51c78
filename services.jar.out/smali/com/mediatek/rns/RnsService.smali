.class public Lcom/mediatek/rns/RnsService;
.super Lcom/android/server/SystemService;
.source "RnsService.java"


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field final mImpl:Lcom/mediatek/rns/RnsServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 13
    const-string v0, "RnsService"

    iput-object v0, p0, Lcom/mediatek/rns/RnsService;->TAG:Ljava/lang/String;

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/rns/RnsService;->DEBUG:Z

    .line 22
    new-instance v0, Lcom/mediatek/rns/RnsServiceImpl;

    invoke-direct {v0, p1}, Lcom/mediatek/rns/RnsServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/rns/RnsService;->mImpl:Lcom/mediatek/rns/RnsServiceImpl;

    .line 23
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 33
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/mediatek/rns/RnsService;->mImpl:Lcom/mediatek/rns/RnsServiceImpl;

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsServiceImpl;->start()V

    .line 36
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 27
    const-string v0, "RnsService"

    const-string v1, "Registering service rns"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const-string v0, "rns"

    iget-object v1, p0, Lcom/mediatek/rns/RnsService;->mImpl:Lcom/mediatek/rns/RnsServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/rns/RnsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 29
    return-void
.end method
