.class public abstract Lcom/mediatek/anrappmanager/ANRManagerNative;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/mediatek/anrappmanager/IANRManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/anrappmanager/ANRManagerNative$a;
    }
.end annotation


# static fields
.field private static c:Lcom/mediatek/anrappmanager/IFrameworks;

.field private static final d:Lcom/mediatek/anrappmanager/ANRManagerNative$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/anrappmanager/ANRManagerNative$a",
            "<",
            "Lcom/mediatek/anrappmanager/IANRManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/anrappmanager/ANRManagerNative;->c:Lcom/mediatek/anrappmanager/IFrameworks;

    .line 75
    new-instance v0, Lcom/mediatek/anrappmanager/ANRManagerNative$1;

    invoke-direct {v0}, Lcom/mediatek/anrappmanager/ANRManagerNative$1;-><init>()V

    sput-object v0, Lcom/mediatek/anrappmanager/ANRManagerNative;->d:Lcom/mediatek/anrappmanager/ANRManagerNative$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "android.app.IANRManager"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/anrappmanager/ANRManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method static synthetic a()Lcom/mediatek/anrappmanager/IFrameworks;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/mediatek/anrappmanager/ANRManagerNative;->c:Lcom/mediatek/anrappmanager/IFrameworks;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/anrappmanager/IANRManager;
    .locals 2

    .prologue
    .line 18
    if-nez p0, :cond_1

    .line 19
    const/4 v0, 0x0

    .line 27
    :cond_0
    :goto_0
    return-object v0

    .line 21
    :cond_1
    const-string v0, "android.app.IANRManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/mediatek/anrappmanager/IANRManager;

    .line 23
    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/mediatek/anrappmanager/a;

    sget-object v1, Lcom/mediatek/anrappmanager/ANRManagerNative;->c:Lcom/mediatek/anrappmanager/IFrameworks;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/anrappmanager/a;-><init>(Landroid/os/IBinder;Lcom/mediatek/anrappmanager/IFrameworks;)V

    goto :goto_0
.end method

.method public static getDefault(Lcom/mediatek/anrappmanager/IFrameworks;)Lcom/mediatek/anrappmanager/IANRManager;
    .locals 1

    .prologue
    .line 34
    sput-object p0, Lcom/mediatek/anrappmanager/ANRManagerNative;->c:Lcom/mediatek/anrappmanager/IFrameworks;

    .line 35
    sget-object v0, Lcom/mediatek/anrappmanager/ANRManagerNative;->d:Lcom/mediatek/anrappmanager/ANRManagerNative$a;

    invoke-virtual {v0}, Lcom/mediatek/anrappmanager/ANRManagerNative$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/anrappmanager/IANRManager;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 72
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 44
    packed-switch p1, :pswitch_data_0

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :pswitch_0
    sget-object v1, Lcom/mediatek/anrappmanager/ANRManagerNative;->c:Lcom/mediatek/anrappmanager/IFrameworks;

    invoke-interface {v1}, Lcom/mediatek/anrappmanager/IFrameworks;->getActivityManagerDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 51
    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/anrappmanager/ANRManagerNative;->notifyLightWeightANR(ILjava/lang/String;I)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 59
    :pswitch_1
    const-string v1, "android.app.IANRManager"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 62
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/anrappmanager/ANRManagerNative;->informMessageDump(Ljava/lang/String;I)V

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
