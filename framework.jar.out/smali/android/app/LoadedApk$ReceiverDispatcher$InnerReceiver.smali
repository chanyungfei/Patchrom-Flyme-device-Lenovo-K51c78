.class final Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;
.super Landroid/content/IIntentReceiver$Stub;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk$ReceiverDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnerReceiver"
.end annotation


# instance fields
.field final mDispatcher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/LoadedApk$ReceiverDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field final mStrongRef:Landroid/app/LoadedApk$ReceiverDispatcher;


# direct methods
.method constructor <init>(Landroid/app/LoadedApk$ReceiverDispatcher;Z)V
    .locals 1
    .param p1, "rd"    # Landroid/app/LoadedApk$ReceiverDispatcher;
    .param p2, "strong"    # Z

    .prologue
    .line 789
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 790
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mDispatcher:Ljava/lang/ref/WeakReference;

    .line 791
    if-eqz p2, :cond_0

    .end local p1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :goto_0
    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mStrongRef:Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 792
    return-void

    .line 791
    .restart local p1    # "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    .prologue
    .line 795
    iget-object v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 801
    .local v0, "rd":Landroid/app/LoadedApk$ReceiverDispatcher;
    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 802
    invoke-virtual/range {v0 .. v7}, Landroid/app/LoadedApk$ReceiverDispatcher;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 828
    :goto_0
    return-void

    .line 811
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 813
    .local v1, "mgr":Landroid/app/IActivityManager;
    if-eqz p4, :cond_1

    .line 814
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p4, v2}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 817
    :cond_1
    sget-boolean v2, Landroid/app/LoadedApk;->IS_USER_BUILD:Z

    if-nez v2, :cond_2

    if-eqz p5, :cond_2

    .line 818
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BDC-Calling finishReceiver: IIntentReceiver="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_2
    const/4 v6, 0x0

    move-object v2, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 824
    :catch_0
    move-exception v8

    .line 825
    .local v8, "e":Landroid/os/RemoteException;
    const-string v2, "ActivityThread"

    const-string v3, "Couldn\'t finish broadcast to unregistered receiver"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
