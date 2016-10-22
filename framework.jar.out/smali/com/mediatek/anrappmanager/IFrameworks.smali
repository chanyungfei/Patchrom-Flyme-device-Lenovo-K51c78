.class public interface abstract Lcom/mediatek/anrappmanager/IFrameworks;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getActivityManagerDescriptor()Ljava/lang/String;
.end method

.method public abstract looperGetQueue(Landroid/os/Looper;)Landroid/os/MessageQueue;
.end method

.method public abstract messageQueueDumpMessageQueue(Landroid/os/MessageQueue;)Ljava/lang/String;
.end method

.method public abstract serviceManagerGetService(Ljava/lang/String;)Landroid/os/IBinder;
.end method

.method public abstract systemClockCurrentTimeMicro()J
.end method
