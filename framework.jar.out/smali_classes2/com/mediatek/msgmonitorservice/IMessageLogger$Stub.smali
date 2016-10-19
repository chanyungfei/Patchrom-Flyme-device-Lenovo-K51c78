.class public abstract Lcom/mediatek/msgmonitorservice/IMessageLogger$Stub;
.super Landroid/os/Binder;
.source "IMessageLogger.java"

# interfaces
.implements Lcom/mediatek/msgmonitorservice/IMessageLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/msgmonitorservice/IMessageLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/msgmonitorservice/IMessageLogger$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.msgmonitorservice.IMessageLogger"

.field static final TRANSACTION_dumpAllMessageHistory:I = 0x3

.field static final TRANSACTION_dumpCallStack:I = 0x5

.field static final TRANSACTION_dumpMSGHistorybyName:I = 0x4

.field static final TRANSACTION_registerMsgLogger:I = 0x1

.field static final TRANSACTION_unregisterMsgLogger:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.mediatek.msgmonitorservice.IMessageLogger"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/msgmonitorservice/IMessageLogger$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/msgmonitorservice/IMessageLogger;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "com.mediatek.msgmonitorservice.IMessageLogger"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/msgmonitorservice/IMessageLogger;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/mediatek/msgmonitorservice/IMessageLogger;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/mediatek/msgmonitorservice/IMessageLogger$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/msgmonitorservice/IMessageLogger$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
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
    const/4 v4, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 49
    :sswitch_0
    const-string v5, "com.mediatek.msgmonitorservice.IMessageLogger"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v5, "com.mediatek.msgmonitorservice.IMessageLogger"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 60
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 62
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/msgmonitorservice/IMessageLoggerWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/msgmonitorservice/IMessageLoggerWrapper;

    move-result-object v3

    .line 63
    .local v3, "_arg3":Lcom/mediatek/msgmonitorservice/IMessageLoggerWrapper;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mediatek/msgmonitorservice/IMessageLogger$Stub;->registerMsgLogger(Ljava/lang/String;IILcom/mediatek/msgmonitorservice/IMessageLoggerWrapper;)V

    goto :goto_0

    .line 68
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/mediatek/msgmonitorservice/IMessageLoggerWrapper;
    :sswitch_2
    const-string v5, "com.mediatek.msgmonitorservice.IMessageLogger"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/msgmonitorservice/IMessageLogger$Stub;->unregisterMsgLogger(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string v5, "com.mediatek.msgmonitorservice.IMessageLogger"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/msgmonitorservice/IMessageLogger$Stub;->dumpAllMessageHistory(I)V

    goto :goto_0

    .line 84
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string v5, "com.mediatek.msgmonitorservice.IMessageLogger"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/msgmonitorservice/IMessageLogger$Stub;->dumpMSGHistorybyName(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string v5, "com.mediatek.msgmonitorservice.IMessageLogger"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/msgmonitorservice/IMessageLogger$Stub;->dumpCallStack(I)V

    goto :goto_0

    .line 45
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
