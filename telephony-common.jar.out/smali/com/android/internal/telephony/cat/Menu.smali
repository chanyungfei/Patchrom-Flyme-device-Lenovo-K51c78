.class public Lcom/android/internal/telephony/cat/Menu;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/Menu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public defaultItem:I

.field public helpAvailable:Z

.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/Item;",
            ">;"
        }
    .end annotation
.end field

.field public itemsIconSelfExplanatory:Z

.field public mFromMD:I

.field public nextActionIndicator:[B

.field public presentationType:Lcom/android/internal/telephony/cat/PresentationType;

.field public softKeyPreferred:Z

.field public title:Ljava/lang/String;

.field public titleAttrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/TextAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public titleIcon:Landroid/graphics/Bitmap;

.field public titleIconSelfExplanatory:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lcom/android/internal/telephony/cat/Menu$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/Menu$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/Menu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    .line 60
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    .line 61
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->titleAttrs:Ljava/util/List;

    .line 62
    iput v1, p0, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    .line 63
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Menu;->softKeyPreferred:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    .line 65
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z

    .line 67
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    .line 69
    sget-object v0, Lcom/android/internal/telephony/cat/PresentationType;->NAVIGATION_OPTIONS:Lcom/android/internal/telephony/cat/PresentationType;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    .line 72
    iput-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->nextActionIndicator:[B

    .line 74
    iput v1, p0, Lcom/android/internal/telephony/cat/Menu;->mFromMD:I

    .line 75
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    .line 79
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    .line 81
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 83
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 84
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/Item;

    .line 85
    .local v1, "item":Lcom/android/internal/telephony/cat/Item;
    iget-object v4, p0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "item":Lcom/android/internal/telephony/cat/Item;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_1

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/Menu;->softKeyPreferred:Z

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_2

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_3

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_4

    :goto_4
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z

    .line 92
    invoke-static {}, Lcom/android/internal/telephony/cat/PresentationType;->values()[Lcom/android/internal/telephony/cat/PresentationType;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/cat/Menu;->mFromMD:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 97
    .local v2, "naiLen":I
    if-gtz v2, :cond_5

    .line 98
    iput-object v7, p0, Lcom/android/internal/telephony/cat/Menu;->nextActionIndicator:[B

    .line 104
    :goto_5
    const-string v4, "[Menu]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Menu: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cat/Menu;->mFromMD:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void

    .end local v2    # "naiLen":I
    :cond_1
    move v4, v6

    .line 88
    goto :goto_1

    :cond_2
    move v4, v6

    .line 89
    goto :goto_2

    :cond_3
    move v4, v6

    .line 90
    goto :goto_3

    :cond_4
    move v5, v6

    .line 91
    goto :goto_4

    .line 100
    .restart local v2    # "naiLen":I
    :cond_5
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/android/internal/telephony/cat/Menu;->nextActionIndicator:[B

    .line 101
    iget-object v4, p0, Lcom/android/internal/telephony/cat/Menu;->nextActionIndicator:[B

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_5
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/Menu$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/internal/telephony/cat/Menu$1;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/Menu;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getSetUpMenuFlag()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/android/internal/telephony/cat/Menu;->mFromMD:I

    return v0
.end method

.method public setSetUpMenuFlag(I)V
    .locals 0
    .param p1, "FromMD"    # I

    .prologue
    .line 160
    iput p1, p0, Lcom/android/internal/telephony/cat/Menu;->mFromMD:I

    .line 161
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 114
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 117
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 118
    .local v1, "size":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 120
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/cat/Menu;->defaultItem:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/Menu;->softKeyPreferred:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/Menu;->helpAvailable:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/Menu;->itemsIconSelfExplanatory:Z

    if-eqz v2, :cond_5

    :goto_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->presentationType:Lcom/android/internal/telephony/cat/PresentationType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/PresentationType;->ordinal()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget v2, p0, Lcom/android/internal/telephony/cat/Menu;->mFromMD:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->nextActionIndicator:[B

    if-nez v2, :cond_6

    const/4 v2, -0x1

    :goto_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->nextActionIndicator:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->nextActionIndicator:[B

    array-length v2, v2

    if-lez v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->nextActionIndicator:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 136
    :cond_1
    const-string v2, "[Menu]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeToParcel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/Menu;->mFromMD:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void

    :cond_2
    move v2, v4

    .line 123
    goto :goto_1

    :cond_3
    move v2, v4

    .line 124
    goto :goto_2

    :cond_4
    move v2, v4

    .line 125
    goto :goto_3

    :cond_5
    move v3, v4

    .line 126
    goto :goto_4

    .line 131
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/cat/Menu;->nextActionIndicator:[B

    array-length v2, v2

    goto :goto_5
.end method
