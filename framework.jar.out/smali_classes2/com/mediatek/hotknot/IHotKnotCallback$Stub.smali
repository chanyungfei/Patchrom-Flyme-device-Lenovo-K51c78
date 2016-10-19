.class public abstract Lcom/mediatek/hotknot/IHotKnotCallback$Stub;
.super Landroid/os/Binder;
.source "IHotKnotCallback.java"

# interfaces
.implements Lcom/mediatek/hotknot/IHotKnotCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/hotknot/IHotKnotCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/hotknot/IHotKnotCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.hotknot.IHotKnotCallback"

.field static final TRANSACTION_createMessage:I = 0x1

.field static final TRANSACTION_getClientId:I = 0x4

.field static final TRANSACTION_getUris:I = 0x2

.field static final TRANSACTION_onHotKnotComplete:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.mediatek.hotknot.IHotKnotCallback"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/hotknot/IHotKnotCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/hotknot/IHotKnotCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.mediatek.hotknot.IHotKnotCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/hotknot/IHotKnotCallback;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/mediatek/hotknot/IHotKnotCallback;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/mediatek/hotknot/IHotKnotCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/hotknot/IHotKnotCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v3, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 45
    :sswitch_0
    const-string v4, "com.mediatek.hotknot.IHotKnotCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v4, "com.mediatek.hotknot.IHotKnotCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/mediatek/hotknot/IHotKnotCallback$Stub;->createMessage()Lcom/mediatek/hotknot/HotKnotMessage;

    move-result-object v2

    .line 52
    .local v2, "_result":Lcom/mediatek/hotknot/HotKnotMessage;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {v2, p3, v3}, Lcom/mediatek/hotknot/HotKnotMessage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 58
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v2    # "_result":Lcom/mediatek/hotknot/HotKnotMessage;
    :sswitch_2
    const-string v4, "com.mediatek.hotknot.IHotKnotCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/mediatek/hotknot/IHotKnotCallback$Stub;->getUris()[Landroid/net/Uri;

    move-result-object v2

    .line 66
    .local v2, "_result":[Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 72
    .end local v2    # "_result":[Landroid/net/Uri;
    :sswitch_3
    const-string v4, "com.mediatek.hotknot.IHotKnotCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 77
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/hotknot/IHotKnotCallback$Stub;->onHotKnotComplete(II)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 83
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_4
    const-string v4, "com.mediatek.hotknot.IHotKnotCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/mediatek/hotknot/IHotKnotCallback$Stub;->getClientId()I

    move-result v2

    .line 85
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
