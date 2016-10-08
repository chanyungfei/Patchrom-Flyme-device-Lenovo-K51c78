.class public interface abstract Lcom/mediatek/anrappmanager/IANRManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final INFORM_MESSAGE_DUMP_TRANSACTION:I = 0x3

.field public static final NOTIFY_LIGHTWEIGHT_ANR_TRANSACTION:I = 0x2

.field public static final descriptor:Ljava/lang/String; = "android.app.IANRManager"


# virtual methods
.method public abstract informMessageDump(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyLightWeightANR(ILjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
