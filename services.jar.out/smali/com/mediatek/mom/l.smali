.class final Lcom/mediatek/mom/l;
.super Lcom/mediatek/mom/ListenerTriggerBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(IILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 0

    .prologue
    .line 57
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/mom/ListenerTriggerBase;-><init>(IILandroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 58
    return-void
.end method


# virtual methods
.method public onTriggerListenerDone()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public onTriggerListenerTimeout()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public triggerListenerFunc()I
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    .line 65
    invoke-virtual {p0}, Lcom/mediatek/mom/l;->getParams()Landroid/os/Bundle;

    move-result-object v2

    .line 66
    invoke-virtual {p0}, Lcom/mediatek/mom/l;->getFunc()Landroid/os/IBinder;

    move-result-object v4

    .line 67
    const-string v0, "intent"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 68
    if-nez v0, :cond_0

    .line 70
    const-string v0, "MessageInterceptListenerTrigger"

    const-string v2, "get intent null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    return v1

    .line 74
    :cond_0
    invoke-static {v0}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 75
    const-string v5, "subId"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 78
    const-string v5, "MessageInterceptListenerTrigger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "triggerListenerFunc() subId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    if-nez v0, :cond_1

    .line 81
    const-string v0, "MessageInterceptListenerTrigger"

    const-string v5, "[MoMS >> MoMA] onNewSMSCheck(), empty msgs"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_1
    invoke-static {v4}, Lcom/mediatek/common/mom/IMessageInterceptListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMessageInterceptListener;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_2

    .line 91
    :try_start_0
    invoke-interface {v0, v2}, Lcom/mediatek/common/mom/IMessageInterceptListener;->onNewSMSCheck(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 92
    :try_start_1
    const-string v0, "MessageInterceptListenerTrigger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNewSMSCheck result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    :goto_2
    if-ne v2, v3, :cond_3

    const/4 v0, 0x0

    :goto_3
    move v1, v0

    goto :goto_0

    .line 83
    :cond_1
    const-string v5, "MessageInterceptListenerTrigger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MoMS >> MoMA] onNewSMSCheck(), new pdu size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v0, v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 93
    :catch_0
    move-exception v0

    move v2, v3

    .line 94
    :goto_4
    const-string v4, "MessageInterceptListenerTrigger"

    const-string v5, "onNewSMSCheck() failed!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 97
    :cond_2
    const-string v0, "MessageInterceptListenerTrigger"

    const-string v2, "Ignore null listener"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_2

    :cond_3
    move v0, v1

    .line 100
    goto :goto_3

    .line 93
    :catch_1
    move-exception v0

    goto :goto_4
.end method
