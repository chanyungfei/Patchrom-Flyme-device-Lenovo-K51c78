.class public abstract Lcom/mediatek/mom/MultiUserControllerBase;
.super Lcom/mediatek/mom/ControllerBase;
.source "SourceFile"


# instance fields
.field private T:Landroid/util/SparseBooleanArray;

.field private U:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mediatek/mom/ControllerBase;-><init>()V

    .line 55
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/MultiUserControllerBase;->T:Landroid/util/SparseBooleanArray;

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/MultiUserControllerBase;->U:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public enableController(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 60
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 62
    if-ne p1, v2, :cond_0

    .line 63
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 65
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->isUserAMonkey()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 66
    const-string v0, "MultiUserControllerBase"

    const-string v2, "Contrller is disabled during monkey test"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    const/4 p1, 0x0

    .line 73
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/mom/MultiUserControllerBase;->T:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 74
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const-string v2, "MultiUserControllerBase"

    const-string v3, "isUserAMonkey() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getManagerApListener()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/mediatek/mom/MultiUserControllerBase;->U:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public getManagerApListener(I)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/mom/MultiUserControllerBase;->U:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public isControllerEnabled()Z
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/mediatek/mom/MultiUserControllerBase;->T:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public registerManagerApListener(Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 84
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 85
    iget-object v1, p0, Lcom/mediatek/mom/MultiUserControllerBase;->U:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    const-string v1, "MultiUserControllerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerManagerApListener() listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method
