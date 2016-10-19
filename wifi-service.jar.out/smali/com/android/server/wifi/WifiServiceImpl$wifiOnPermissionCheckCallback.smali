.class Lcom/android/server/wifi/WifiServiceImpl$wifiOnPermissionCheckCallback;
.super Lcom/mediatek/common/mom/IRequestedPermissionCallback$Stub;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "wifiOnPermissionCheckCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0

    .prologue
    .line 2333
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$wifiOnPermissionCheckCallback;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Lcom/mediatek/common/mom/IRequestedPermissionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionCheckResult(Ljava/lang/String;II)V
    .locals 6
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "result"    # I

    .prologue
    .line 2336
    if-nez p3, :cond_0

    .line 2337
    const-string v1, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiEnabled(PermissionCheckCallback): , uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    const/4 v0, 0x1

    .line 2339
    .local v0, "enable":Z
    if-eqz p3, :cond_1

    .line 2361
    .end local v0    # "enable":Z
    :cond_0
    :goto_0
    return-void

    .line 2347
    .restart local v0    # "enable":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2349
    .local v2, "ident":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$wifiOnPermissionCheckCallback;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiToggled(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 2354
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2358
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$wifiOnPermissionCheckCallback;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$800(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v4

    const v5, 0x26008

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$wifiOnPermissionCheckCallback;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiIpoOff:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->access$2300(Lcom/android/server/wifi/WifiServiceImpl;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v4, v5, v1}, Lcom/android/server/wifi/WifiController;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2354
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 2358
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method
