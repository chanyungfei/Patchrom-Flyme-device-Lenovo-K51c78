.class public abstract Lcom/mediatek/sensorhub/ISensorHubService$Stub;
.super Landroid/os/Binder;
.source "ISensorHubService.java"

# interfaces
.implements Lcom/mediatek/sensorhub/ISensorHubService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/sensorhub/ISensorHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/sensorhub/ISensorHubService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.sensorhub.ISensorHubService"

.field static final TRANSACTION_cancelAction:I = 0x3

.field static final TRANSACTION_enableGestureWakeup:I = 0x5

.field static final TRANSACTION_getContextList:I = 0x1

.field static final TRANSACTION_requestAction:I = 0x2

.field static final TRANSACTION_updateCondition:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.mediatek.sensorhub.ISensorHubService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/sensorhub/ISensorHubService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/sensorhub/ISensorHubService;
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
    const-string v1, "com.mediatek.sensorhub.ISensorHubService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/sensorhub/ISensorHubService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/mediatek/sensorhub/ISensorHubService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/mediatek/sensorhub/ISensorHubService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/sensorhub/ISensorHubService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v3, "com.mediatek.sensorhub.ISensorHubService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v5, "com.mediatek.sensorhub.ISensorHubService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/mediatek/sensorhub/ISensorHubService$Stub;->getContextList()Lcom/mediatek/sensorhub/ParcelableListInteger;

    move-result-object v2

    .line 52
    .local v2, "_result":Lcom/mediatek/sensorhub/ParcelableListInteger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {v2, p3, v4}, Lcom/mediatek/sensorhub/ParcelableListInteger;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v2    # "_result":Lcom/mediatek/sensorhub/ParcelableListInteger;
    :sswitch_2
    const-string v3, "com.mediatek.sensorhub.ISensorHubService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    sget-object v3, Lcom/mediatek/sensorhub/Condition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/sensorhub/Condition;

    .line 73
    .local v0, "_arg0":Lcom/mediatek/sensorhub/Condition;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    sget-object v3, Lcom/mediatek/sensorhub/Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/sensorhub/Action;

    .line 79
    .local v1, "_arg1":Lcom/mediatek/sensorhub/Action;
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/sensorhub/ISensorHubService$Stub;->requestAction(Lcom/mediatek/sensorhub/Condition;Lcom/mediatek/sensorhub/Action;)I

    move-result v2

    .line 80
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 70
    .end local v0    # "_arg0":Lcom/mediatek/sensorhub/Condition;
    .end local v1    # "_arg1":Lcom/mediatek/sensorhub/Action;
    .end local v2    # "_result":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/mediatek/sensorhub/Condition;
    goto :goto_1

    .line 77
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/mediatek/sensorhub/Action;
    goto :goto_2

    .line 86
    .end local v0    # "_arg0":Lcom/mediatek/sensorhub/Condition;
    .end local v1    # "_arg1":Lcom/mediatek/sensorhub/Action;
    :sswitch_3
    const-string v5, "com.mediatek.sensorhub.ISensorHubService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/sensorhub/ISensorHubService$Stub;->cancelAction(I)Z

    move-result v2

    .line 90
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_4
    const-string v5, "com.mediatek.sensorhub.ISensorHubService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    .line 101
    sget-object v5, Lcom/mediatek/sensorhub/Condition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/sensorhub/Condition;

    .line 106
    .local v1, "_arg1":Lcom/mediatek/sensorhub/Condition;
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/sensorhub/ISensorHubService$Stub;->updateCondition(ILcom/mediatek/sensorhub/Condition;)Z

    move-result v2

    .line 107
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v2, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 104
    .end local v1    # "_arg1":Lcom/mediatek/sensorhub/Condition;
    .end local v2    # "_result":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/mediatek/sensorhub/Condition;
    goto :goto_3

    .line 113
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/mediatek/sensorhub/Condition;
    :sswitch_5
    const-string v5, "com.mediatek.sensorhub.ISensorHubService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    move v0, v4

    .line 116
    .local v0, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/mediatek/sensorhub/ISensorHubService$Stub;->enableGestureWakeup(Z)Z

    move-result v2

    .line 117
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v2, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v2    # "_result":Z
    :cond_7
    move v0, v3

    .line 115
    goto :goto_4

    .line 41
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
