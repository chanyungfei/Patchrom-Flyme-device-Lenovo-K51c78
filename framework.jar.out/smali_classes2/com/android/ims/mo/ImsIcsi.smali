.class public Lcom/android/ims/mo/ImsIcsi;
.super Ljava/lang/Object;
.source "ImsIcsi.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/mo/ImsIcsi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIcsi:Ljava/lang/String;

.field private mIsAllocated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/android/ims/mo/ImsIcsi$1;

    invoke-direct {v0}, Lcom/android/ims/mo/ImsIcsi$1;-><init>()V

    sput-object v0, Lcom/android/ims/mo/ImsIcsi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/mo/ImsIcsi;->mIcsi:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/mo/ImsIcsi;->mIsAllocated:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "icsi"    # Ljava/lang/String;
    .param p2, "isAllocated"    # Z

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/ims/mo/ImsIcsi;->mIcsi:Ljava/lang/String;

    .line 32
    iput-boolean p2, p0, Lcom/android/ims/mo/ImsIcsi;->mIsAllocated:Z

    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public getIcsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/ims/mo/ImsIcsi;->mIcsi:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAllocated()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/ims/mo/ImsIcsi;->mIsAllocated:Z

    return v0
.end method

.method public setIcsi(Ljava/lang/String;)V
    .locals 0
    .param p1, "icsi"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/ims/mo/ImsIcsi;->mIcsi:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setIsAllocated(Z)V
    .locals 0
    .param p1, "isAllocated"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/ims/mo/ImsIcsi;->mIsAllocated:Z

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImsIsci: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "ICSI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/mo/ImsIcsi;->mIcsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isAllocated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/ims/mo/ImsIcsi;->mIsAllocated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 81
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/mo/ImsIcsi;->mIcsi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-boolean v0, p0, Lcom/android/ims/mo/ImsIcsi;->mIsAllocated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    monitor-exit p0

    .line 106
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
