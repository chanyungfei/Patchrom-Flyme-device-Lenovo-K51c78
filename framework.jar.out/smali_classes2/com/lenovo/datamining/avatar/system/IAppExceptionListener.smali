.class public interface abstract Lcom/lenovo/datamining/avatar/system/IAppExceptionListener;
.super Ljava/lang/Object;
.source "IAppExceptionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/datamining/avatar/system/IAppExceptionListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAppExecption(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
