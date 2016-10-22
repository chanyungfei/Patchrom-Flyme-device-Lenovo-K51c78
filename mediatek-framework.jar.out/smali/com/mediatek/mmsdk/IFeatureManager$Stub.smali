.class public abstract Lcom/mediatek/mmsdk/IFeatureManager$Stub;
.super Landroid/os/Binder;
.source "IFeatureManager.java"

# interfaces
.implements Lcom/mediatek/mmsdk/IFeatureManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mmsdk/IFeatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mmsdk/IFeatureManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.mmsdk.IFeatureManager"

.field static final TRANSACTION_getEffectFactory:I = 0x5

.field static final TRANSACTION_getParameter:I = 0x2

.field static final TRANSACTION_setParameter:I = 0x1

.field static final TRANSACTION_setUp:I = 0x3

.field static final TRANSACTION_tearDown:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.mediatek.mmsdk.IFeatureManager"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/mmsdk/IFeatureManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/mmsdk/IFeatureManager;
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
    const-string v1, "com.mediatek.mmsdk.IFeatureManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/mmsdk/IFeatureManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/mediatek/mmsdk/IFeatureManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/mediatek/mmsdk/IFeatureManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/mmsdk/IFeatureManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 43
    :sswitch_0
    const-string v4, "com.mediatek.mmsdk.IFeatureManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v4, "com.mediatek.mmsdk.IFeatureManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/mmsdk/IFeatureManager$Stub;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 54
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_2
    const-string v4, "com.mediatek.mmsdk.IFeatureManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/mmsdk/IFeatureManager$Stub;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string v4, "com.mediatek.mmsdk.IFeatureManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    sget-object v4, Lcom/mediatek/mmsdk/EffectHalVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mmsdk/EffectHalVersion;

    .line 78
    .local v0, "_arg0":Lcom/mediatek/mmsdk/EffectHalVersion;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mediatek/mmsdk/IFeatureManager$Stub;->setUp(Lcom/mediatek/mmsdk/EffectHalVersion;)I

    move-result v2

    .line 79
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 76
    .end local v0    # "_arg0":Lcom/mediatek/mmsdk/EffectHalVersion;
    .end local v2    # "_result":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/mediatek/mmsdk/EffectHalVersion;
    goto :goto_1

    .line 85
    .end local v0    # "_arg0":Lcom/mediatek/mmsdk/EffectHalVersion;
    :sswitch_4
    const-string v4, "com.mediatek.mmsdk.IFeatureManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    sget-object v4, Lcom/mediatek/mmsdk/EffectHalVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mmsdk/EffectHalVersion;

    .line 93
    .restart local v0    # "_arg0":Lcom/mediatek/mmsdk/EffectHalVersion;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/mediatek/mmsdk/IFeatureManager$Stub;->tearDown(Lcom/mediatek/mmsdk/EffectHalVersion;)I

    move-result v2

    .line 94
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    .end local v0    # "_arg0":Lcom/mediatek/mmsdk/EffectHalVersion;
    .end local v2    # "_result":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/mediatek/mmsdk/EffectHalVersion;
    goto :goto_2

    .line 100
    .end local v0    # "_arg0":Lcom/mediatek/mmsdk/EffectHalVersion;
    :sswitch_5
    const-string v4, "com.mediatek.mmsdk.IFeatureManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    new-instance v0, Landroid/hardware/camera2/utils/BinderHolder;

    invoke-direct {v0}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    .line 103
    .local v0, "_arg0":Landroid/hardware/camera2/utils/BinderHolder;
    invoke-virtual {p0, v0}, Lcom/mediatek/mmsdk/IFeatureManager$Stub;->getEffectFactory(Landroid/hardware/camera2/utils/BinderHolder;)I

    move-result v2

    .line 104
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    invoke-virtual {v0, p3, v3}, Landroid/hardware/camera2/utils/BinderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 111
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
