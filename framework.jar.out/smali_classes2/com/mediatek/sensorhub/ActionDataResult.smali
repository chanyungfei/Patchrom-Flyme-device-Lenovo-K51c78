.class public Lcom/mediatek/sensorhub/ActionDataResult;
.super Ljava/lang/Object;
.source "ActionDataResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/sensorhub/ActionDataResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_ACTION_DATA_RESULT:Ljava/lang/String; = "com.mediatek.sensorhub.EXTRA_ACTION_DATA_RESULT"

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "ActionDataResult"


# instance fields
.field private final mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/sensorhub/DataCell;",
            ">;"
        }
    .end annotation
.end field

.field private final mElapsedRealtimeMillis:J

.field private final mRequestId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lcom/mediatek/sensorhub/ActionDataResult$1;

    invoke-direct {v0}, Lcom/mediatek/sensorhub/ActionDataResult$1;-><init>()V

    sput-object v0, Lcom/mediatek/sensorhub/ActionDataResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;J)V
    .locals 1
    .param p1, "requestId"    # I
    .param p3, "elapsed"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/sensorhub/DataCell;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/sensorhub/DataCell;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lcom/mediatek/sensorhub/ActionDataResult;->mRequestId:I

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mediatek/sensorhub/ActionDataResult;->mData:Ljava/util/List;

    .line 95
    iput-wide p3, p0, Lcom/mediatek/sensorhub/ActionDataResult;->mElapsedRealtimeMillis:J

    .line 96
    return-void
.end method

.method public constructor <init>(I[Lcom/mediatek/sensorhub/DataCell;J)V
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "data"    # [Lcom/mediatek/sensorhub/DataCell;
    .param p3, "elapsed"    # J

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lcom/mediatek/sensorhub/ActionDataResult;->mRequestId:I

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/sensorhub/ActionDataResult;->mData:Ljava/util/List;

    .line 81
    if-eqz p2, :cond_0

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p2

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 83
    iget-object v2, p0, Lcom/mediatek/sensorhub/ActionDataResult;->mData:Ljava/util/List;

    aget-object v3, p2, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    iput-wide p3, p0, Lcom/mediatek/sensorhub/ActionDataResult;->mElapsedRealtimeMillis:J

    .line 87
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mediatek/sensorhub/ActionDataResult;->mRequestId:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/sensorhub/ActionDataResult;->mElapsedRealtimeMillis:J

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 102
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/mediatek/sensorhub/ActionDataResult;->mData:Ljava/util/List;

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 104
    iget-object v2, p0, Lcom/mediatek/sensorhub/ActionDataResult;->mData:Ljava/util/List;

    sget-object v3, Lcom/mediatek/sensorhub/DataCell;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mediatek/sensorhub/ActionDataResult$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/mediatek/sensorhub/ActionDataResult$1;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/mediatek/sensorhub/ActionDataResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static extractResult(Landroid/content/Intent;)Lcom/mediatek/sensorhub/ActionDataResult;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/mediatek/sensorhub/ActionDataResult;->hasResult(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "com.mediatek.sensorhub.EXTRA_ACTION_DATA_RESULT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mediatek/sensorhub/ActionDataResult;

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasResult(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "has":Z
    if-eqz p0, :cond_0

    const-string v1, "com.mediatek.sensorhub.EXTRA_ACTION_DATA_RESULT"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const/4 v0, 0x1

    .line 66
    :cond_0
    const-string v1, "ActionDataResult"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasResult("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/sensorhub/DataCell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mediatek/sensorhub/ActionDataResult;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getElapsedRealtimeMillis()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/mediatek/sensorhub/ActionDataResult;->mElapsedRealtimeMillis:J

    return-wide v0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/mediatek/sensorhub/ActionDataResult;->mRequestId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionDataResult(mRequestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/sensorhub/ActionDataResult;->mRequestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/sensorhub/ActionDataResult;->mData:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mElapsedRealtimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mediatek/sensorhub/ActionDataResult;->mElapsedRealtimeMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 174
    iget v2, p0, Lcom/mediatek/sensorhub/ActionDataResult;->mRequestId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-wide v2, p0, Lcom/mediatek/sensorhub/ActionDataResult;->mElapsedRealtimeMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 176
    iget-object v2, p0, Lcom/mediatek/sensorhub/ActionDataResult;->mData:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/mediatek/sensorhub/ActionDataResult;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 178
    .local v1, "size":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 180
    iget-object v2, p0, Lcom/mediatek/sensorhub/ActionDataResult;->mData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/sensorhub/DataCell;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/sensorhub/DataCell;->writeToParcel(Landroid/os/Parcel;I)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    :cond_1
    return-void
.end method
