.class Landroid/net/Proxy$DefaultHttpNotifyHandler;
.super Ljava/lang/Object;
.source "Proxy.java"

# interfaces
.implements Ljava/net/HttpNotifyHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultHttpNotifyHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    return-void
.end method


# virtual methods
.method public notifyHttpRedirect(Ljava/lang/String;)V
    .locals 4
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 396
    :try_start_0
    const-string v2, "Proxy"

    const-string v3, "[NetworkHttpMonitor] call cm.monitorHttpRedirect"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v2, "connectivity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    .line 399
    .local v0, "cm":Landroid/net/IConnectivityManager;
    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->monitorHttpRedirect(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .end local v0    # "cm":Landroid/net/IConnectivityManager;
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v1

    .line 401
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Proxy"

    const-string v3, "[NetworkHttpMonitor] call cm.monitorHttpRedirect failed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
