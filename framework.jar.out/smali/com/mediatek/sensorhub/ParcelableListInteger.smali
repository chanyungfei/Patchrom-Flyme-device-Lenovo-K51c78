.class public Lcom/mediatek/sensorhub/ParcelableListInteger;
.super Ljava/lang/Object;
.source "ParcelableListInteger.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/sensorhub/ParcelableListInteger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/mediatek/sensorhub/ParcelableListInteger$1;

    invoke-direct {v0}, Lcom/mediatek/sensorhub/ParcelableListInteger$1;-><init>()V

    sput-object v0, Lcom/mediatek/sensorhub/ParcelableListInteger;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/sensorhub/ParcelableListInteger;->mList:Ljava/util/List;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 34
    .local v1, "size":I
    iget-object v2, p0, Lcom/mediatek/sensorhub/ParcelableListInteger;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 35
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 36
    iget-object v2, p0, Lcom/mediatek/sensorhub/ParcelableListInteger;->mList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mediatek/sensorhub/ParcelableListInteger$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/mediatek/sensorhub/ParcelableListInteger$1;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/mediatek/sensorhub/ParcelableListInteger;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/sensorhub/ParcelableListInteger;->mList:Ljava/util/List;

    .line 15
    iget-object v0, p0, Lcom/mediatek/sensorhub/ParcelableListInteger;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    iget-object v0, p0, Lcom/mediatek/sensorhub/ParcelableListInteger;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    return-void
.end method

.method public constructor <init>([I)V
    .locals 4
    .param p1, "list"    # [I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/sensorhub/ParcelableListInteger;->mList:Ljava/util/List;

    .line 20
    iget-object v2, p0, Lcom/mediatek/sensorhub/ParcelableListInteger;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 21
    if-eqz p1, :cond_0

    .line 22
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 23
    iget-object v2, p0, Lcom/mediatek/sensorhub/ParcelableListInteger;->mList:Ljava/util/List;

    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public toList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/sensorhub/ParcelableListInteger;->mList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 59
    iget-object v2, p0, Lcom/mediatek/sensorhub/ParcelableListInteger;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 60
    .local v1, "size":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 62
    iget-object v2, p0, Lcom/mediatek/sensorhub/ParcelableListInteger;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method
