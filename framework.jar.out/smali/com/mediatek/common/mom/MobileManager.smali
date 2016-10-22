.class public Lcom/mediatek/common/mom/MobileManager;
.super Ljava/lang/Object;
.source "MobileManager.java"

# interfaces
.implements Lcom/mediatek/common/mom/IMobileManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "MobileManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field mInstance:Lcom/mediatek/common/mom/MobileManager;

.field private mService:Lcom/mediatek/common/mom/IMobileManagerService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/common/mom/MobileManager;->mInstance:Lcom/mediatek/common/mom/MobileManager;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/common/mom/IMobileManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/mediatek/common/mom/IMobileManagerService;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/common/mom/MobileManager;->mInstance:Lcom/mediatek/common/mom/MobileManager;

    .line 29
    iput-object p1, p0, Lcom/mediatek/common/mom/MobileManager;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    .line 31
    iget-object v0, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "null MobileManagerService!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    return-void
.end method

.method private checkLicense(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public attach(Lcom/mediatek/common/mom/IMobileConnectionCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcom/mediatek/common/mom/IMobileConnectionCallback;

    .prologue
    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v1, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->attach(Lcom/mediatek/common/mom/IMobileConnectionCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 53
    :goto_0
    return v1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MobileManager"

    const-string v2, "attach() failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cancelNotification(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v1, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->cancelNotification(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelNotification() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearAllSettings()V
    .locals 3

    .prologue
    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v1}, Lcom/mediatek/common/mom/IMobileManagerService;->clearAllSettings()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MobileManager"

    const-string v2, "clearAllSettings() failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearPackageSettings(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v1, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->clearPackageSettings(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearPackageSettings() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public deletePackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v1, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->deletePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deletePackage() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public detach()V
    .locals 3

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v1}, Lcom/mediatek/common/mom/IMobileManagerService;->detach()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MobileManager"

    const-string v2, "detach() failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableInterceptionController(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v1, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->enableInterceptionController(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableInterceptionController() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enablePermissionController(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v1, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->enablePermissionController(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enablePermissionController() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v1, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceStopPackage() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getBootReceiverEnabledSetting(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v1, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->getBootReceiverEnabledSetting(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 174
    :goto_0
    return v1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBootReceiverEnabledSetting() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBootReceiverList()Ljava/util/List;
    .locals 3
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
    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v1}, Lcom/mediatek/common/mom/IMobileManagerService;->getBootReceiverList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 192
    :goto_0
    return-object v1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MobileManager"

    const-string v2, "getBootReceiverList()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledPackages()Ljava/util/List;
    .locals 3
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
    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v1}, Lcom/mediatek/common/mom/IMobileManagerService;->getInstalledPackages()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 97
    :goto_0
    return-object v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MobileManager"

    const-string v2, "getInstalledPackages() failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNotificationEnabledSetting(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v1, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->getNotificationEnabledSetting(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 268
    :goto_0
    return v1

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNotificationEnabledSetting() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackageGrantedPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
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
    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v1, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->getPackageGrantedPermissions(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 107
    :goto_0
    return-object v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackageGrantedPermissions() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v1}, Lcom/mediatek/common/mom/IMobileManagerService;->getVersionName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 44
    :goto_0
    return-object v1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MobileManager"

    const-string v2, "getVersionName() failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installPackage(Landroid/net/Uri;Lcom/mediatek/common/mom/IPackageInstallCallback;)V
    .locals 4
    .param p1, "packageURI"    # Landroid/net/Uri;
    .param p2, "callback"    # Lcom/mediatek/common/mom/IPackageInstallCallback;

    .prologue
    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/mom/IMobileManagerService;->installPackage(Landroid/net/Uri;Lcom/mediatek/common/mom/IPackageInstallCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installPackage() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerCallInterceptionListener(Lcom/mediatek/common/mom/ICallInterceptionListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/mediatek/common/mom/ICallInterceptionListener;

    .prologue
    .line 311
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    const/4 v4, 0x6

    move-object v0, p1

    check-cast v0, Landroid/os/IBinder;

    move-object v2, v0

    invoke-interface {v3, v4, v2}, Lcom/mediatek/common/mom/IMobileManagerService;->registerManagerApListener(ILandroid/os/IBinder;)V

    .line 314
    iget-object v3, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    const/16 v4, 0x8

    move-object v0, p1

    check-cast v0, Landroid/os/IBinder;

    move-object v2, v0

    invoke-interface {v3, v4, v2}, Lcom/mediatek/common/mom/IMobileManagerService;->registerManagerApListener(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v1

    .line 316
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MobileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerCallInterceptionListener() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerMessageInterceptListener(Lcom/mediatek/common/mom/IMessageInterceptListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/mediatek/common/mom/IMessageInterceptListener;

    .prologue
    .line 344
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    const/4 v4, 0x5

    move-object v0, p1

    check-cast v0, Landroid/os/IBinder;

    move-object v2, v0

    invoke-interface {v3, v4, v2}, Lcom/mediatek/common/mom/IMobileManagerService;->registerManagerApListener(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v1

    .line 347
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MobileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerMessageInterceptListener() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerNotificationListener(Lcom/mediatek/common/mom/INotificationListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/mediatek/common/mom/INotificationListener;

    .prologue
    .line 274
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    const/4 v4, 0x3

    move-object v0, p1

    check-cast v0, Landroid/os/IBinder;

    move-object v2, v0

    invoke-interface {v3, v4, v2}, Lcom/mediatek/common/mom/IMobileManagerService;->registerManagerApListener(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v1

    .line 276
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MobileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerNotificationListener() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerPermissionListener(Lcom/mediatek/common/mom/IPermissionListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/mediatek/common/mom/IPermissionListener;

    .prologue
    .line 113
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    const/4 v4, 0x0

    move-object v0, p1

    check-cast v0, Landroid/os/IBinder;

    move-object v2, v0

    invoke-interface {v3, v4, v2}, Lcom/mediatek/common/mom/IMobileManagerService;->registerManagerApListener(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MobileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerPermissionListener() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBootReceiverEnabledSetting(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/mom/IMobileManagerService;->setBootReceiverEnabledSetting(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBootReceiverEnabledSetting() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBootReceiverEnabledSettings(Ljava/util/List;)V
    .locals 3
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
    .line 180
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/mom/ReceiverRecord;>;"
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v1, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->setBootReceiverEnabledSettings(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MobileManager"

    const-string/jumbo v2, "setBootReceiverEnabledSettings()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFirewallPolicy(IIZ)V
    .locals 4
    .param p1, "appUid"    # I
    .param p2, "networkType"    # I
    .param p3, "enable"    # Z

    .prologue
    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v1, p1, p2, p3}, Lcom/mediatek/common/mom/IMobileManagerService;->setFirewallPolicy(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFirewallPolicy() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " networkType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setNotificationCache(Ljava/util/List;)V
    .locals 3
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
    .line 282
    .local p1, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/mom/NotificationCacheRecord;>;"
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v1, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->setNotificationCache(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_0
    return-void

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MobileManager"

    const-string/jumbo v2, "setNotificationCache()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setNotificationEnabledSetting(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/mom/IMobileManagerService;->setNotificationEnabledSetting(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setNotificationEnabledSetting() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPermissionCache(Ljava/util/List;)V
    .locals 4
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
    .line 137
    .local p1, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v1, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->setPermissionCache(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPermissionCache() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPermissionRecord(Lcom/mediatek/common/mom/PermissionRecord;)V
    .locals 4
    .param p1, "record"    # Lcom/mediatek/common/mom/PermissionRecord;

    .prologue
    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v1, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->setPermissionRecord(Lcom/mediatek/common/mom/PermissionRecord;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPermissionRecord() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/common/mom/PermissionRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPermissionRecords(Ljava/util/List;)V
    .locals 4
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
    .line 129
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/mom/PermissionRecord;>;"
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/common/mom/MobileManager;->mService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v1, p1}, Lcom/mediatek/common/mom/IMobileManagerService;->setPermissionRecords(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MobileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPermissionRecord() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
