.class public Landroid/app/KeyguardManager;
.super Ljava/lang/Object;
.source "KeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/KeyguardManager$OnKeyguardExitResult;,
        Landroid/app/KeyguardManager$KeyguardLock;
    }
.end annotation


# static fields
.field public static final ACTION_CONFIRM_DEVICE_CREDENTIAL:Ljava/lang/String; = "android.app.action.CONFIRM_DEVICE_CREDENTIAL"

.field public static final EXTRA_DESCRIPTION:Ljava/lang/String; = "android.app.extra.DESCRIPTION"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.app.extra.TITLE"


# instance fields
.field private mTrustManager:Landroid/app/trust/ITrustManager;

.field private mWM:Landroid/view/IWindowManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    .line 164
    const-string/jumbo v0, "trust"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/KeyguardManager;->mTrustManager:Landroid/app/trust/ITrustManager;

    .line 166
    return-void
.end method

.method static synthetic access$000(Landroid/app/KeyguardManager;)Landroid/view/IWindowManager;
    .locals 1
    .param p0, "x0"    # Landroid/app/KeyguardManager;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    return-object v0
.end method


# virtual methods
.method public createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 83
    :goto_0
    return-object v0

    .line 78
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.CONFIRM_DEVICE_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 80
    const-string v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 82
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V
    .locals 2
    .param p1, "callback"    # Landroid/app/KeyguardManager$OnKeyguardExitResult;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 312
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    new-instance v1, Landroid/app/KeyguardManager$1;

    invoke-direct {v1, p0, p1}, Landroid/app/KeyguardManager$1;-><init>(Landroid/app/KeyguardManager;Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public inKeyguardRestrictedInputMode()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 240
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 241
    .local v1, "myUid":I
    const/16 v5, 0x3e8

    if-eq v1, v5, :cond_1

    .line 242
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 243
    .local v3, "userId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const-string v6, "com.tencent.mobileqq"

    invoke-interface {v5, v6, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v2

    .line 244
    .local v2, "qqUid":I
    if-ne v1, v2, :cond_0

    .line 245
    const-string v5, "KeyguardManager"

    const-string/jumbo v6, "qq,inKeyguardRestrictedInputMode,false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .end local v1    # "myUid":I
    .end local v2    # "qqUid":I
    .end local v3    # "userId":I
    :goto_0
    return v4

    .line 247
    .restart local v1    # "myUid":I
    .restart local v2    # "qqUid":I
    .restart local v3    # "userId":I
    :cond_0
    iget-object v5, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v5}, Landroid/view/IWindowManager;->isCoverApp()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 248
    const/4 v4, 0x1

    goto :goto_0

    .line 252
    .end local v2    # "qqUid":I
    .end local v3    # "userId":I
    :cond_1
    iget-object v5, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v5}, Landroid/view/IWindowManager;->inKeyguardRestrictedInputMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 253
    .end local v1    # "myUid":I
    :catch_0
    move-exception v0

    .line 254
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isDeviceLocked()Z
    .locals 1

    .prologue
    .line 266
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    return v0
.end method

.method public isDeviceLocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 280
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager;->mTrustManager:Landroid/app/trust/ITrustManager;

    invoke-interface {v1, p1}, Landroid/app/trust/ITrustManager;->isDeviceLocked(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 282
    :goto_0
    return v1

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isKeyguardLocked()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 197
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 198
    .local v1, "myUid":I
    const/16 v5, 0x3e8

    if-eq v1, v5, :cond_1

    .line 199
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 200
    .local v3, "userId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const-string v6, "com.tencent.mobileqq"

    invoke-interface {v5, v6, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v2

    .line 201
    .local v2, "qqUid":I
    if-ne v1, v2, :cond_0

    .line 202
    const-string v5, "KeyguardManager"

    const-string/jumbo v6, "qq,isKeyguardLocked,false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .end local v1    # "myUid":I
    .end local v2    # "qqUid":I
    .end local v3    # "userId":I
    :goto_0
    return v4

    .line 204
    .restart local v1    # "myUid":I
    .restart local v2    # "qqUid":I
    .restart local v3    # "userId":I
    :cond_0
    iget-object v5, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v5}, Landroid/view/IWindowManager;->isCoverApp()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 205
    const/4 v4, 0x1

    goto :goto_0

    .line 209
    .end local v2    # "qqUid":I
    .end local v3    # "userId":I
    :cond_1
    iget-object v5, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v5}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 210
    .end local v1    # "myUid":I
    :catch_0
    move-exception v0

    .line 211
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isKeyguardSecure()Z
    .locals 2

    .prologue
    .line 222
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->isKeyguardSecure()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 224
    :goto_0
    return v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 186
    new-instance v0, Landroid/app/KeyguardManager$KeyguardLock;

    invoke-direct {v0, p0, p1}, Landroid/app/KeyguardManager$KeyguardLock;-><init>(Landroid/app/KeyguardManager;Ljava/lang/String;)V

    return-object v0
.end method
