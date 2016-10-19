.class public abstract Lcom/mediatek/search/ISearchEngineManagerService$Stub;
.super Landroid/os/Binder;
.source "ISearchEngineManagerService.java"

# interfaces
.implements Lcom/mediatek/search/ISearchEngineManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/search/ISearchEngineManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/search/ISearchEngineManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.search.ISearchEngineManagerService"

.field static final TRANSACTION_getAvailables:I = 0x1

.field static final TRANSACTION_getBestMatch:I = 0x3

.field static final TRANSACTION_getDefault:I = 0x2

.field static final TRANSACTION_getSearchEngine:I = 0x4

.field static final TRANSACTION_setDefault:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.mediatek.search.ISearchEngineManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/search/ISearchEngineManagerService;
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
    const-string v1, "com.mediatek.search.ISearchEngineManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/search/ISearchEngineManagerService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/mediatek/search/ISearchEngineManagerService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/mediatek/search/ISearchEngineManagerService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/search/ISearchEngineManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 45
    :sswitch_0
    const-string v4, "com.mediatek.search.ISearchEngineManagerService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v4, "com.mediatek.search.ISearchEngineManagerService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->getAvailables()Ljava/util/List;

    move-result-object v3

    .line 52
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/search/SearchEngine;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 58
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/search/SearchEngine;>;"
    :sswitch_2
    const-string v6, "com.mediatek.search.ISearchEngineManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->getDefault()Lcom/mediatek/common/search/SearchEngine;

    move-result-object v2

    .line 60
    .local v2, "_result":Lcom/mediatek/common/search/SearchEngine;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {v2, p3, v5}, Lcom/mediatek/common/search/SearchEngine;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v2    # "_result":Lcom/mediatek/common/search/SearchEngine;
    :sswitch_3
    const-string v6, "com.mediatek.search.ISearchEngineManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->getBestMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v2

    .line 78
    .restart local v2    # "_result":Lcom/mediatek/common/search/SearchEngine;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    invoke-virtual {v2, p3, v5}, Lcom/mediatek/common/search/SearchEngine;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 90
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Lcom/mediatek/common/search/SearchEngine;
    :sswitch_4
    const-string v6, "com.mediatek.search.ISearchEngineManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->getSearchEngine(ILjava/lang/String;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v2

    .line 96
    .restart local v2    # "_result":Lcom/mediatek/common/search/SearchEngine;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v2, :cond_2

    .line 98
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    invoke-virtual {v2, p3, v5}, Lcom/mediatek/common/search/SearchEngine;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 108
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Lcom/mediatek/common/search/SearchEngine;
    :sswitch_5
    const-string v6, "com.mediatek.search.ISearchEngineManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    .line 111
    sget-object v6, Lcom/mediatek/common/search/SearchEngine;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/search/SearchEngine;

    .line 116
    .local v0, "_arg0":Lcom/mediatek/common/search/SearchEngine;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->setDefault(Lcom/mediatek/common/search/SearchEngine;)Z

    move-result v2

    .line 117
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v2, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 114
    .end local v0    # "_arg0":Lcom/mediatek/common/search/SearchEngine;
    .end local v2    # "_result":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/mediatek/common/search/SearchEngine;
    goto :goto_1

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
