.class Lcom/mediatek/mom/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mHandler:Landroid/os/Handler;

.field private static o:Lcom/mediatek/mom/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    sput-object v0, Lcom/mediatek/mom/g;->o:Lcom/mediatek/mom/g;

    .line 55
    sput-object v0, Lcom/mediatek/mom/g;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILandroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 90
    .line 92
    if-eqz p1, :cond_0

    .line 93
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {p0, v1, p1, p2, p3}, Lcom/mediatek/mom/f;->b(IILandroid/os/IBinder;Landroid/os/Bundle;I)Lcom/mediatek/mom/ListenerTriggerBase;

    move-result-object v1

    .line 100
    invoke-static {v1, v0}, Lcom/mediatek/mom/g;->a(Lcom/mediatek/mom/ListenerTriggerBase;Z)I

    move-result v0

    :goto_0
    return v0

    .line 96
    :cond_0
    const-string v1, "ListenerTriggerHelper"

    const-string v2, "Trigger null listener!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(Lcom/mediatek/mom/ListenerTriggerBase;Z)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 104
    .line 106
    sget-object v1, Lcom/mediatek/mom/g;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 107
    const-string v1, "ListenerTriggerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handler should be set before triggerListener() isAsync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_0
    return v0

    .line 112
    :cond_0
    const-string v1, "ListenerTriggerHelper"

    const-string v2, "triggerListenerInner(), Start monitoring listener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v1, Lcom/mediatek/mom/g;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 114
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 115
    sget-object v2, Lcom/mediatek/mom/g;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0x88b8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 118
    const-string v2, "ListenerTriggerHelper"

    const-string v3, "triggerListenerInner(), Start a trigger thread and run"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v2, Lcom/mediatek/mom/h;

    sget-object v3, Lcom/mediatek/mom/g;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v1}, Lcom/mediatek/mom/h;-><init>(Lcom/mediatek/mom/ListenerTriggerBase;Landroid/os/Handler;Landroid/os/Message;)V

    .line 122
    if-nez p1, :cond_1

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    invoke-virtual {v2}, Lcom/mediatek/mom/h;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    :try_start_2
    invoke-virtual {p0}, Lcom/mediatek/mom/ListenerTriggerBase;->getResult()I

    move-result v0

    .line 131
    const-string v1, "ListenerTriggerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerListenerInner() Sync End. result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    :try_start_3
    const-string v1, "ListenerTriggerHelper"

    const-string v2, "Trigger wait failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    :try_start_4
    invoke-virtual {p0}, Lcom/mediatek/mom/ListenerTriggerBase;->getResult()I

    move-result v0

    .line 131
    const-string v1, "ListenerTriggerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerListenerInner() Sync End. result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 130
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/mediatek/mom/ListenerTriggerBase;->getResult()I

    move-result v1

    .line 131
    const-string v2, "ListenerTriggerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "triggerListenerInner() Sync End. result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 136
    :cond_1
    invoke-virtual {v2}, Lcom/mediatek/mom/h;->start()V

    .line 137
    const-string v1, "ListenerTriggerHelper"

    const-string v2, "triggerListenerInner() Async End."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static a(ILandroid/os/IBinder;Landroid/os/Bundle;ILandroid/os/IBinder;)V
    .locals 6

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 75
    if-nez p4, :cond_0

    .line 76
    const-string v1, "ListenerTriggerHelper"

    const-string v2, "Triger null callback"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    if-eqz p1, :cond_1

    .line 80
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    move v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/mediatek/mom/f;->a(IILandroid/os/IBinder;Landroid/os/Bundle;ILandroid/os/IBinder;)Lcom/mediatek/mom/ListenerTriggerBase;

    move-result-object v0

    .line 86
    :goto_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/mom/g;->a(Lcom/mediatek/mom/ListenerTriggerBase;Z)I

    .line 87
    return-void

    .line 83
    :cond_1
    const-string v1, "ListenerTriggerHelper"

    const-string v2, "Trigger null listener function!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 62
    sput-object p0, Lcom/mediatek/mom/g;->mHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method public static b()Lcom/mediatek/mom/g;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/mediatek/mom/g;->o:Lcom/mediatek/mom/g;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/mediatek/mom/g;

    invoke-direct {v0}, Lcom/mediatek/mom/g;-><init>()V

    sput-object v0, Lcom/mediatek/mom/g;->o:Lcom/mediatek/mom/g;

    .line 69
    :cond_0
    sget-object v0, Lcom/mediatek/mom/g;->o:Lcom/mediatek/mom/g;

    return-object v0
.end method
