.class final Lcom/mediatek/mom/b;
.super Lcom/mediatek/mom/ListenerTriggerBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(IILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 0

    .prologue
    .line 54
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/mom/ListenerTriggerBase;-><init>(IILandroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 55
    return-void
.end method


# virtual methods
.method public onTriggerListenerDone()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public onTriggerListenerTimeout()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public triggerListenerFunc()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/mediatek/mom/b;->getParams()Landroid/os/Bundle;

    move-result-object v1

    .line 65
    invoke-virtual {p0}, Lcom/mediatek/mom/b;->getFunc()Landroid/os/IBinder;

    move-result-object v2

    .line 68
    const-string v3, "CallInterceptionListenerTrigger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[triggerListenerFunc]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "phoneNumber"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "callType"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "slotId"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {v2}, Lcom/mediatek/common/mom/ICallInterceptionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/ICallInterceptionListener;

    move-result-object v2

    .line 74
    if-eqz v2, :cond_1

    .line 76
    :try_start_0
    invoke-interface {v2, v1}, Lcom/mediatek/common/mom/ICallInterceptionListener;->onIncomingCallCheck(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 77
    if-eqz v1, :cond_0

    .line 85
    :goto_0
    const-string v1, "CallInterceptionListenerTrigger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MoMS << MoMA] onIncomingCallCheck() returned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return v0

    .line 77
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    const-string v2, "CallInterceptionListenerTrigger"

    const-string v3, "onNotificationBlocked() failed!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 82
    :cond_1
    const-string v1, "CallInterceptionListenerTrigger"

    const-string v2, "Ignore null listener"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
