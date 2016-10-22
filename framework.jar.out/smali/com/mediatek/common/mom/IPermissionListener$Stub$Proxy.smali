.class Lcom/mediatek/common/mom/IPermissionListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPermissionListener.java"

# interfaces
.implements Lcom/mediatek/common/mom/IPermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/mom/IPermissionListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/mediatek/common/mom/IPermissionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 100
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/common/mom/IPermissionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "com.mediatek.common.mom.IPermissionListener"

    return-object v0
.end method

.method public onPermissionChange(Lcom/mediatek/common/mom/PermissionRecord;)V
    .locals 5
    .param p1, "record"    # Lcom/mediatek/common/mom/PermissionRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 171
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 173
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.common.mom.IPermissionListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 174
    if-eqz p1, :cond_0

    .line 175
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/mediatek/common/mom/PermissionRecord;->writeToParcel(Landroid/os/Parcel;I)V

    .line 181
    :goto_0
    iget-object v2, p0, Lcom/mediatek/common/mom/IPermissionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 182
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 188
    return-void

    .line 179
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onPermissionCheck(Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "record"    # Lcom/mediatek/common/mom/PermissionRecord;
    .param p2, "flag"    # I
    .param p3, "uid"    # I
    .param p4, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 130
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 133
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.mediatek.common.mom.IPermissionListener"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 134
    if-eqz p1, :cond_0

    .line 135
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Lcom/mediatek/common/mom/PermissionRecord;->writeToParcel(Landroid/os/Parcel;I)V

    .line 141
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    if-eqz p4, :cond_1

    .line 144
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    const/4 v4, 0x0

    invoke-virtual {p4, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 150
    :goto_1
    iget-object v4, p0, Lcom/mediatek/common/mom/IPermissionListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 151
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 152
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 155
    .local v2, "_result":Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 158
    return v2

    .line 139
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    .line 148
    :cond_1
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    move v2, v3

    .line 152
    goto :goto_2
.end method
