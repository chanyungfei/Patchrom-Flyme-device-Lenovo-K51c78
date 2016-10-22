.class public final Lcom/mediatek/epdg/EpdgService;
.super Lcom/android/server/SystemService;
.source "EpdgService.java"


# static fields
.field private static final EDPG_SERVICE:Ljava/lang/String; = "epdg_service"

.field private static final TAG:Ljava/lang/String; = "EpdgService"


# instance fields
.field final mImpl:Lcom/mediatek/epdg/EpdgServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/mediatek/epdg/EpdgServiceImpl;

    invoke-direct {v0, p1}, Lcom/mediatek/epdg/EpdgServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/epdg/EpdgService;->mImpl:Lcom/mediatek/epdg/EpdgServiceImpl;

    .line 45
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 55
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgService;->mImpl:Lcom/mediatek/epdg/EpdgServiceImpl;

    invoke-virtual {v0}, Lcom/mediatek/epdg/EpdgServiceImpl;->start()V

    .line 58
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "EpdgService"

    const-string v1, "Registering service epdg_service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v0, "epdg_service"

    iget-object v1, p0, Lcom/mediatek/epdg/EpdgService;->mImpl:Lcom/mediatek/epdg/EpdgServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/epdg/EpdgService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 51
    return-void
.end method
