.class public abstract Lcom/lenovo/component/translationservice/ITranslationService$Stub;
.super Landroid/os/Binder;
.source "ITranslationService.java"

# interfaces
.implements Lcom/lenovo/component/translationservice/ITranslationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/component/translationservice/ITranslationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/component/translationservice/ITranslationService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lenovo.component.translationservice.ITranslationService"

.field static final TRANSACTION_isNeedToShowNetworkTrafficWarning:I = 0x5

.field static final TRANSACTION_isNetworkConnected:I = 0x4

.field static final TRANSACTION_setNetworkTrafficWarningConfirmState:I = 0x6

.field static final TRANSACTION_startQuery:I = 0x1

.field static final TRANSACTION_startTranslationApp:I = 0x3

.field static final TRANSACTION_stopQuery:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.lenovo.component.translationservice.ITranslationService"

    invoke-virtual {p0, p0, v0}, Lcom/lenovo/component/translationservice/ITranslationService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lenovo/component/translationservice/ITranslationService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.lenovo.component.translationservice.ITranslationService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lenovo/component/translationservice/ITranslationService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/lenovo/component/translationservice/ITranslationService;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/lenovo/component/translationservice/ITranslationService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lenovo/component/translationservice/ITranslationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 46
    :sswitch_0
    const-string v3, "com.lenovo.component.translationservice.ITranslationService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v3, "com.lenovo.component.translationservice.ITranslationService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/component/translationservice/ITranslationQueryListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/component/translationservice/ITranslationQueryListener;

    move-result-object v1

    .line 56
    .local v1, "_arg1":Lcom/lenovo/component/translationservice/ITranslationQueryListener;
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/component/translationservice/ITranslationService$Stub;->startQuery(Ljava/lang/String;Lcom/lenovo/component/translationservice/ITranslationQueryListener;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 62
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/lenovo/component/translationservice/ITranslationQueryListener;
    :sswitch_2
    const-string v3, "com.lenovo.component.translationservice.ITranslationService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/lenovo/component/translationservice/ITranslationService$Stub;->stopQuery()V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    :sswitch_3
    const-string v3, "com.lenovo.component.translationservice.ITranslationService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lenovo/component/translationservice/ITranslationService$Stub;->startTranslationApp(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 78
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string v5, "com.lenovo.component.translationservice.ITranslationService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/lenovo/component/translationservice/ITranslationService$Stub;->isNetworkConnected()Z

    move-result v2

    .line 80
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 86
    .end local v2    # "_result":Z
    :sswitch_5
    const-string v5, "com.lenovo.component.translationservice.ITranslationService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/lenovo/component/translationservice/ITranslationService$Stub;->isNeedToShowNetworkTrafficWarning()Z

    move-result v2

    .line 88
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 94
    .end local v2    # "_result":Z
    :sswitch_6
    const-string v3, "com.lenovo.component.translationservice.ITranslationService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 97
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lenovo/component/translationservice/ITranslationService$Stub;->setNetworkTrafficWarningConfirmState(I)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
