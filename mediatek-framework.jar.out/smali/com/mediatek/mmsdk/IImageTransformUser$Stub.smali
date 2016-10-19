.class public abstract Lcom/mediatek/mmsdk/IImageTransformUser$Stub;
.super Landroid/os/Binder;
.source "IImageTransformUser.java"

# interfaces
.implements Lcom/mediatek/mmsdk/IImageTransformUser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mmsdk/IImageTransformUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mmsdk/IImageTransformUser$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.mmsdk.IImageTransformUser"

.field static final TRANSACTION_applyTransform:I = 0x2

.field static final TRANSACTION_getName:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.mediatek.mmsdk.IImageTransformUser"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/mmsdk/IImageTransformUser$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IImageTransformUser;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.mediatek.mmsdk.IImageTransformUser"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/mmsdk/IImageTransformUser;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/mediatek/mmsdk/IImageTransformUser;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/mediatek/mmsdk/IImageTransformUser$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/mmsdk/IImageTransformUser$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v6, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 43
    :sswitch_0
    const-string v5, "com.mediatek.mmsdk.IImageTransformUser"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v5, "com.mediatek.mmsdk.IImageTransformUser"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/mediatek/mmsdk/IImageTransformUser$Stub;->getName()Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string v5, "com.mediatek.mmsdk.IImageTransformUser"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    sget-object v5, Lcom/mediatek/mmsdk/ImageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mmsdk/ImageInfo;

    .line 65
    .local v0, "_arg0":Lcom/mediatek/mmsdk/ImageInfo;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/mmsdk/IMemory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IMemory;

    move-result-object v1

    .line 67
    .local v1, "_arg1":Lcom/mediatek/mmsdk/IMemory;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 68
    sget-object v5, Lcom/mediatek/mmsdk/ImageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/mmsdk/ImageInfo;

    .line 74
    .local v2, "_arg2":Lcom/mediatek/mmsdk/ImageInfo;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/mmsdk/IMemory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IMemory;

    move-result-object v3

    .line 75
    .local v3, "_arg3":Lcom/mediatek/mmsdk/IMemory;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mediatek/mmsdk/IImageTransformUser$Stub;->applyTransform(Lcom/mediatek/mmsdk/ImageInfo;Lcom/mediatek/mmsdk/IMemory;Lcom/mediatek/mmsdk/ImageInfo;Lcom/mediatek/mmsdk/IMemory;)Z

    move-result v4

    .line 76
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v4, :cond_2

    move v5, v6

    :goto_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 62
    .end local v0    # "_arg0":Lcom/mediatek/mmsdk/ImageInfo;
    .end local v1    # "_arg1":Lcom/mediatek/mmsdk/IMemory;
    .end local v2    # "_arg2":Lcom/mediatek/mmsdk/ImageInfo;
    .end local v3    # "_arg3":Lcom/mediatek/mmsdk/IMemory;
    .end local v4    # "_result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/mediatek/mmsdk/ImageInfo;
    goto :goto_1

    .line 71
    .restart local v1    # "_arg1":Lcom/mediatek/mmsdk/IMemory;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/mediatek/mmsdk/ImageInfo;
    goto :goto_2

    .line 77
    .restart local v3    # "_arg3":Lcom/mediatek/mmsdk/IMemory;
    .restart local v4    # "_result":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
