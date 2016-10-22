.class public Lcom/mediatek/common/mom/ReceiverRecord;
.super Ljava/lang/Object;
.source "ReceiverRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/common/mom/ReceiverRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public enabled:Z

.field public final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/mediatek/common/mom/ReceiverRecord$1;

    invoke-direct {v0}, Lcom/mediatek/common/mom/ReceiverRecord$1;-><init>()V

    sput-object v0, Lcom/mediatek/common/mom/ReceiverRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/mediatek/common/mom/ReceiverRecord;->enabled:Z

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/common/mom/ReceiverRecord;->packageName:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/common/mom/ReceiverRecord;->enabled:Z

    .line 69
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mediatek/common/mom/ReceiverRecord$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/mediatek/common/mom/ReceiverRecord$1;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/mediatek/common/mom/ReceiverRecord;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/common/mom/ReceiverRecord;)V
    .locals 1
    .param p1, "data"    # Lcom/mediatek/common/mom/ReceiverRecord;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/common/mom/ReceiverRecord;->enabled:Z

    .line 62
    iget-object v0, p1, Lcom/mediatek/common/mom/ReceiverRecord;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/common/mom/ReceiverRecord;->packageName:Ljava/lang/String;

    .line 63
    iget-boolean v0, p1, Lcom/mediatek/common/mom/ReceiverRecord;->enabled:Z

    iput-boolean v0, p0, Lcom/mediatek/common/mom/ReceiverRecord;->enabled:Z

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "_packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/mediatek/common/mom/ReceiverRecord;->enabled:Z

    .line 52
    iput-object p1, p0, Lcom/mediatek/common/mom/ReceiverRecord;->packageName:Ljava/lang/String;

    .line 53
    iput-boolean v0, p0, Lcom/mediatek/common/mom/ReceiverRecord;->enabled:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "_packageName"    # Ljava/lang/String;
    .param p2, "_enable"    # Z

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/common/mom/ReceiverRecord;->enabled:Z

    .line 57
    iput-object p1, p0, Lcom/mediatek/common/mom/ReceiverRecord;->packageName:Ljava/lang/String;

    .line 58
    iput-boolean p2, p0, Lcom/mediatek/common/mom/ReceiverRecord;->enabled:Z

    .line 59
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    if-ne p0, p1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v1

    .line 100
    :cond_1
    instance-of v3, p1, Lcom/mediatek/common/mom/ReceiverRecord;

    if-nez v3, :cond_2

    move v1, v2

    .line 101
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 104
    check-cast v0, Lcom/mediatek/common/mom/ReceiverRecord;

    .line 106
    .local v0, "record":Lcom/mediatek/common/mom/ReceiverRecord;
    iget-object v3, p0, Lcom/mediatek/common/mom/ReceiverRecord;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/mediatek/common/mom/ReceiverRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/mediatek/common/mom/ReceiverRecord;->enabled:Z

    iget-boolean v4, v0, Lcom/mediatek/common/mom/ReceiverRecord;->enabled:Z

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/mediatek/common/mom/ReceiverRecord;->packageName:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/mediatek/common/mom/ReceiverRecord;->enabled:Z

    if-eqz v2, :cond_0

    const/16 v1, 0x1f

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/mediatek/common/mom/ReceiverRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReceiverRecord {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/common/mom/ReceiverRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/common/mom/ReceiverRecord;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/common/mom/ReceiverRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-boolean v0, p0, Lcom/mediatek/common/mom/ReceiverRecord;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
