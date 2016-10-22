.class public Lcom/mediatek/sensorhub/DataCell;
.super Ljava/lang/Object;
.source "DataCell.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/sensorhub/DataCell;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_TYPE_FLOAT:I = 0x3

.field public static final DATA_TYPE_INT:I = 0x1

.field public static final DATA_TYPE_INVALID:I = 0x0

.field public static final DATA_TYPE_LONG:I = 0x2


# instance fields
.field private mFloatValue:F

.field private mIndex:I

.field private mIntValue:I

.field private mIsPrevious:Z

.field private mLongValue:J

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/mediatek/sensorhub/DataCell$1;

    invoke-direct {v0}, Lcom/mediatek/sensorhub/DataCell$1;-><init>()V

    sput-object v0, Lcom/mediatek/sensorhub/DataCell;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/sensorhub/DataCell;->mType:I

    .line 39
    return-void
.end method

.method constructor <init>(IZF)V
    .locals 1
    .param p1, "dataIndex"    # I
    .param p2, "isPrevious"    # Z
    .param p3, "value"    # F

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/sensorhub/DataCell;->mType:I

    .line 49
    iput p1, p0, Lcom/mediatek/sensorhub/DataCell;->mIndex:I

    .line 50
    iput-boolean p2, p0, Lcom/mediatek/sensorhub/DataCell;->mIsPrevious:Z

    .line 51
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/sensorhub/DataCell;->mType:I

    .line 52
    iput p3, p0, Lcom/mediatek/sensorhub/DataCell;->mFloatValue:F

    .line 53
    return-void
.end method

.method constructor <init>(IZI)V
    .locals 1
    .param p1, "dataIndex"    # I
    .param p2, "isPrevious"    # Z
    .param p3, "value"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/sensorhub/DataCell;->mType:I

    .line 42
    iput p1, p0, Lcom/mediatek/sensorhub/DataCell;->mIndex:I

    .line 43
    iput-boolean p2, p0, Lcom/mediatek/sensorhub/DataCell;->mIsPrevious:Z

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/sensorhub/DataCell;->mType:I

    .line 45
    iput p3, p0, Lcom/mediatek/sensorhub/DataCell;->mIntValue:I

    .line 46
    return-void
.end method

.method public constructor <init>(IZJ)V
    .locals 1
    .param p1, "dataIndex"    # I
    .param p2, "isPrevious"    # Z
    .param p3, "value"    # J

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/sensorhub/DataCell;->mType:I

    .line 65
    iput p1, p0, Lcom/mediatek/sensorhub/DataCell;->mIndex:I

    .line 66
    iput-boolean p2, p0, Lcom/mediatek/sensorhub/DataCell;->mIsPrevious:Z

    .line 67
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/sensorhub/DataCell;->mType:I

    .line 68
    iput-wide p3, p0, Lcom/mediatek/sensorhub/DataCell;->mLongValue:J

    .line 69
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/mediatek/sensorhub/DataCell;->mType:I

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mediatek/sensorhub/DataCell;->mIndex:I

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/mediatek/sensorhub/DataCell;->mIsPrevious:Z

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/sensorhub/DataCell;->mType:I

    .line 180
    iget v0, p0, Lcom/mediatek/sensorhub/DataCell;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 193
    :goto_0
    return-void

    .line 182
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/mediatek/sensorhub/DataCell;->mFloatValue:F

    goto :goto_0

    .line 185
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/sensorhub/DataCell;->mIntValue:I

    goto :goto_0

    .line 188
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/sensorhub/DataCell;->mLongValue:J

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mediatek/sensorhub/DataCell$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/mediatek/sensorhub/DataCell$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/mediatek/sensorhub/DataCell;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public getFloatValue()F
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/mediatek/sensorhub/DataCell;->mFloatValue:F

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/mediatek/sensorhub/DataCell;->mIndex:I

    return v0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/mediatek/sensorhub/DataCell;->mIntValue:I

    return v0
.end method

.method public getLongValue()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/mediatek/sensorhub/DataCell;->mLongValue:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/mediatek/sensorhub/DataCell;->mType:I

    return v0
.end method

.method public isPrevious()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/mediatek/sensorhub/DataCell;->mIsPrevious:Z

    return v0
.end method

.method setDataIndex(I)Lcom/mediatek/sensorhub/DataCell;
    .locals 0
    .param p1, "dataIndex"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/mediatek/sensorhub/DataCell;->mIndex:I

    .line 136
    return-object p0
.end method

.method setLast(Z)Lcom/mediatek/sensorhub/DataCell;
    .locals 0
    .param p1, "isLast"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/mediatek/sensorhub/DataCell;->mIsPrevious:Z

    .line 141
    return-object p0
.end method

.method setValue(F)Lcom/mediatek/sensorhub/DataCell;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 157
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/sensorhub/DataCell;->mType:I

    .line 158
    iput p1, p0, Lcom/mediatek/sensorhub/DataCell;->mFloatValue:F

    .line 159
    return-object p0
.end method

.method setValue(I)Lcom/mediatek/sensorhub/DataCell;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 145
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/sensorhub/DataCell;->mType:I

    .line 146
    iput p1, p0, Lcom/mediatek/sensorhub/DataCell;->mIntValue:I

    .line 147
    return-object p0
.end method

.method setValue(J)Lcom/mediatek/sensorhub/DataCell;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 151
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/sensorhub/DataCell;->mType:I

    .line 152
    iput-wide p1, p0, Lcom/mediatek/sensorhub/DataCell;->mLongValue:J

    .line 153
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 208
    iget v0, p0, Lcom/mediatek/sensorhub/DataCell;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget-boolean v0, p0, Lcom/mediatek/sensorhub/DataCell;->mIsPrevious:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget v0, p0, Lcom/mediatek/sensorhub/DataCell;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget v0, p0, Lcom/mediatek/sensorhub/DataCell;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 224
    :goto_1
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 213
    :pswitch_0
    iget v0, p0, Lcom/mediatek/sensorhub/DataCell;->mFloatValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_1

    .line 216
    :pswitch_1
    iget v0, p0, Lcom/mediatek/sensorhub/DataCell;->mIntValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 219
    :pswitch_2
    iget-wide v0, p0, Lcom/mediatek/sensorhub/DataCell;->mLongValue:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_1

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
