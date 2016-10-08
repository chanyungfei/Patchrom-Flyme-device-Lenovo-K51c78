.class public Lcom/android/ims/mo/ImsPhoneCtx;
.super Ljava/lang/Object;
.source "ImsPhoneCtx.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/mo/ImsPhoneCtx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPhoneCtx:Ljava/lang/String;

.field private mPhoneCtxIpuis:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/android/ims/mo/ImsPhoneCtx$1;

    invoke-direct {v0}, Lcom/android/ims/mo/ImsPhoneCtx$1;-><init>()V

    sput-object v0, Lcom/android/ims/mo/ImsPhoneCtx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/mo/ImsPhoneCtx;->mPhoneCtx:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneCtx"    # Ljava/lang/String;
    .param p2, "phoneCtxIpuis"    # [Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/ims/mo/ImsPhoneCtx;->mPhoneCtx:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/android/ims/mo/ImsPhoneCtx;->mPhoneCtxIpuis:[Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public getPhoneCtx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/ims/mo/ImsPhoneCtx;->mPhoneCtx:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneCtxIpuis()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/ims/mo/ImsPhoneCtx;->mPhoneCtxIpuis:[Ljava/lang/String;

    return-object v0
.end method

.method public setPhoneCtx(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneCtx"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/ims/mo/ImsPhoneCtx;->mPhoneCtx:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setPhoneCtxIpuis([Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneCtxIpuis"    # [Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/ims/mo/ImsPhoneCtx;->mPhoneCtxIpuis:[Ljava/lang/String;

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "ImsPhoneCtx: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v5, "Phone Context: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/ims/mo/ImsPhoneCtx;->mPhoneCtx:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Address Type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v5, p0, Lcom/android/ims/mo/ImsPhoneCtx;->mPhoneCtxIpuis:[Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/ims/mo/ImsPhoneCtx;->mPhoneCtxIpuis:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    .line 79
    .local v3, "ipuis":Ljava/lang/String;
    const-string v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "ipuis":Ljava/lang/String;
    .end local v4    # "len$":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    monitor-exit p0

    return-object v5

    .line 83
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/mo/ImsPhoneCtx;->mPhoneCtx:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/ims/mo/ImsPhoneCtx;->mPhoneCtxIpuis:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 107
    monitor-exit p0

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
