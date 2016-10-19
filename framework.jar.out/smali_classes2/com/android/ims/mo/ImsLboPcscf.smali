.class public Lcom/android/ims/mo/ImsLboPcscf;
.super Ljava/lang/Object;
.source "ImsLboPcscf.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/mo/ImsLboPcscf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLboPcscfAddress:Ljava/lang/String;

.field private mLboPcscfAddressType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/android/ims/mo/ImsLboPcscf$1;

    invoke-direct {v0}, Lcom/android/ims/mo/ImsLboPcscf$1;-><init>()V

    sput-object v0, Lcom/android/ims/mo/ImsLboPcscf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/mo/ImsLboPcscf;->mLboPcscfAddress:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/mo/ImsLboPcscf;->mLboPcscfAddressType:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "lboPcscfAddress"    # Ljava/lang/String;
    .param p2, "lboPcscfAddressType"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/ims/mo/ImsLboPcscf;->mLboPcscfAddress:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/android/ims/mo/ImsLboPcscf;->mLboPcscfAddressType:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public getLboPcscfAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/ims/mo/ImsLboPcscf;->mLboPcscfAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLboPcscfAddressType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/ims/mo/ImsLboPcscf;->mLboPcscfAddressType:Ljava/lang/String;

    return-object v0
.end method

.method public setLboPcscfAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "lboPcscfAddress"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/ims/mo/ImsLboPcscf;->mLboPcscfAddress:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setLboPcscfAddressType(Ljava/lang/String;)V
    .locals 0
    .param p1, "lboPcscfAddressType"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/ims/mo/ImsLboPcscf;->mLboPcscfAddressType:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImsLboPcscf: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "LBO PCSCF Address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/mo/ImsLboPcscf;->mLboPcscfAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Address Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/mo/ImsLboPcscf;->mLboPcscfAddressType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 76
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
    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/mo/ImsLboPcscf;->mLboPcscfAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/android/ims/mo/ImsLboPcscf;->mLboPcscfAddressType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    monitor-exit p0

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
