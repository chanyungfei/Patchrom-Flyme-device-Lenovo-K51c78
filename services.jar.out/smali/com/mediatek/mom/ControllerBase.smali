.class public abstract Lcom/mediatek/mom/ControllerBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mom/ControllerBase$a;
    }
.end annotation


# instance fields
.field private d:Landroid/os/IBinder;

.field private mEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/mom/ControllerBase;->mEnabled:Z

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mom/ControllerBase;->d:Landroid/os/IBinder;

    .line 164
    return-void
.end method

.method public static getActivityManagerService()Landroid/app/IActivityManager;
    .locals 2

    .prologue
    .line 137
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 138
    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null activity manager service"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    return-object v0
.end method

.method public static getPackageManagerService()Landroid/content/pm/IPackageManager;
    .locals 2

    .prologue
    .line 128
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 129
    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null package manager service"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    return-object v0
.end method

.method public static getUserManagerService()Landroid/os/IUserManager;
    .locals 2

    .prologue
    .line 146
    const-string v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v0

    .line 147
    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null user manager service"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Lcom/mediatek/mom/MobileManagerService$a;)V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public enableController(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 77
    if-ne p1, v1, :cond_0

    .line 78
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 80
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->isUserAMonkey()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 81
    const-string v0, "ControllerBase"

    const-string v1, "Contrller is disabled during monkey test"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    const/4 p1, 0x0

    .line 88
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/mediatek/mom/ControllerBase;->mEnabled:Z

    .line 89
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string v1, "ControllerBase"

    const-string v2, "isUserAMonkey() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getManagerApListener()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mediatek/mom/ControllerBase;->d:Landroid/os/IBinder;

    return-object v0
.end method

.method public isControllerEnabled()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/mediatek/mom/ControllerBase;->mEnabled:Z

    return v0
.end method

.method public isValidUserId(I)Z
    .locals 3

    .prologue
    .line 154
    if-ltz p1, :cond_0

    const v0, 0x186a0

    if-ge p1, v0, :cond_0

    .line 155
    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    .line 157
    :cond_0
    const-string v0, "ControllerBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerManagerApListener(Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 106
    iput-object p1, p0, Lcom/mediatek/mom/ControllerBase;->d:Landroid/os/IBinder;

    .line 107
    const-string v0, "ControllerBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerManagerApListener() listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    if-eqz p1, :cond_0

    .line 112
    :try_start_0
    new-instance v0, Lcom/mediatek/mom/ControllerBase$a;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/mom/ControllerBase$a;-><init>(Lcom/mediatek/mom/ControllerBase;Landroid/os/IBinder;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    const-string v0, "ControllerBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LinkToDeath() failed! listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public abstract systemReady(Landroid/content/Context;)V
.end method
