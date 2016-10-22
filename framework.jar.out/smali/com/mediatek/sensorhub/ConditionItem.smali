.class public Lcom/mediatek/sensorhub/ConditionItem;
.super Ljava/lang/Object;
.source "ConditionItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CONDITION_TYPE_CMP:I = 0x20

.field public static final CONDITION_TYPE_DATA:I = 0xf

.field public static final CONDITION_TYPE_DIFF:I = 0x10

.field public static final CONDITION_TYPE_INVALID:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/sensorhub/ConditionItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBracketLeft:Z

.field private mBracketRight:Z

.field private mCombine:I

.field private mConditionType:I

.field private mDataType:I

.field private mFloatValue:F

.field private mIndex1:I

.field private mIndex2:I

.field private mIntValue:I

.field private mIsLast1:Z

.field private mIsLast2:Z

.field private mLongValue:J

.field private mOperation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/mediatek/sensorhub/ConditionItem$1;

    invoke-direct {v0}, Lcom/mediatek/sensorhub/ConditionItem$1;-><init>()V

    sput-object v0, Lcom/mediatek/sensorhub/ConditionItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZIF)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "isLast"    # Z
    .param p3, "operation"    # I
    .param p4, "value"    # F

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mDataType:I

    .line 22
    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mConditionType:I

    .line 48
    const/16 v0, 0xf

    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mConditionType:I

    .line 49
    iput p1, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIndex1:I

    .line 50
    iput-boolean p2, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIsLast1:Z

    .line 51
    iput p3, p0, Lcom/mediatek/sensorhub/ConditionItem;->mOperation:I

    .line 52
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mDataType:I

    .line 53
    iput p4, p0, Lcom/mediatek/sensorhub/ConditionItem;->mFloatValue:F

    .line 54
    return-void
.end method

.method public constructor <init>(IZII)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "isLast"    # Z
    .param p3, "operation"    # I
    .param p4, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mDataType:I

    .line 22
    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mConditionType:I

    .line 30
    const/16 v0, 0xf

    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mConditionType:I

    .line 31
    iput p1, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIndex1:I

    .line 32
    iput-boolean p2, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIsLast1:Z

    .line 33
    iput p3, p0, Lcom/mediatek/sensorhub/ConditionItem;->mOperation:I

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mDataType:I

    .line 35
    iput p4, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIntValue:I

    .line 36
    return-void
.end method

.method public constructor <init>(IZIIZ)V
    .locals 1
    .param p1, "index1"    # I
    .param p2, "isLast1"    # Z
    .param p3, "operation"    # I
    .param p4, "index2"    # I
    .param p5, "isLast2"    # Z

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mDataType:I

    .line 22
    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mConditionType:I

    .line 57
    const/16 v0, 0x20

    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mConditionType:I

    .line 58
    iput p1, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIndex1:I

    .line 59
    iput-boolean p2, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIsLast1:Z

    .line 60
    iput p3, p0, Lcom/mediatek/sensorhub/ConditionItem;->mOperation:I

    .line 61
    iput p4, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIndex2:I

    .line 62
    iput-boolean p5, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIsLast2:Z

    .line 63
    return-void
.end method

.method public constructor <init>(IZIIZF)V
    .locals 1
    .param p1, "index1"    # I
    .param p2, "isLast1"    # Z
    .param p3, "operation"    # I
    .param p4, "index2"    # I
    .param p5, "isLast2"    # Z
    .param p6, "value"    # F

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mDataType:I

    .line 22
    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mConditionType:I

    .line 88
    const/16 v0, 0x10

    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mConditionType:I

    .line 89
    iput p1, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIndex1:I

    .line 90
    iput-boolean p2, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIsLast1:Z

    .line 91
    iput p3, p0, Lcom/mediatek/sensorhub/ConditionItem;->mOperation:I

    .line 92
    iput p4, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIndex2:I

    .line 93
    iput-boolean p5, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIsLast2:Z

    .line 94
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mDataType:I

    .line 95
    iput p6, p0, Lcom/mediatek/sensorhub/ConditionItem;->mFloatValue:F

    .line 96
    return-void
.end method

.method public constructor <init>(IZIIZI)V
    .locals 1
    .param p1, "index1"    # I
    .param p2, "isLast1"    # Z
    .param p3, "operation"    # I
    .param p4, "index2"    # I
    .param p5, "isLast2"    # Z
    .param p6, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mDataType:I

    .line 22
    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mConditionType:I

    .line 66
    const/16 v0, 0x10

    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mConditionType:I

    .line 67
    iput p1, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIndex1:I

    .line 68
    iput-boolean p2, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIsLast1:Z

    .line 69
    iput p3, p0, Lcom/mediatek/sensorhub/ConditionItem;->mOperation:I

    .line 70
    iput p4, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIndex2:I

    .line 71
    iput-boolean p5, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIsLast2:Z

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mDataType:I

    .line 73
    iput p6, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIntValue:I

    .line 74
    return-void
.end method

.method public constructor <init>(IZIIZJ)V
    .locals 2
    .param p1, "index1"    # I
    .param p2, "isLast1"    # Z
    .param p3, "operation"    # I
    .param p4, "index2"    # I
    .param p5, "isLast2"    # Z
    .param p6, "value"    # J

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mDataType:I

    .line 22
    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mConditionType:I

    .line 77
    const/16 v0, 0x10

    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mConditionType:I

    .line 78
    iput p1, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIndex1:I

    .line 79
    iput-boolean p2, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIsLast1:Z

    .line 80
    iput p3, p0, Lcom/mediatek/sensorhub/ConditionItem;->mOperation:I

    .line 81
    iput p4, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIndex2:I

    .line 82
    iput-boolean p5, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIsLast2:Z

    .line 83
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mDataType:I

    .line 84
    iput-wide p6, p0, Lcom/mediatek/sensorhub/ConditionItem;->mLongValue:J

    .line 85
    return-void
.end method

.method public constructor <init>(IZIJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "isLast"    # Z
    .param p3, "operation"    # I
    .param p4, "value"    # J

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mDataType:I

    .line 22
    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mConditionType:I

    .line 39
    const/16 v0, 0xf

    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mConditionType:I

    .line 40
    iput p1, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIndex1:I

    .line 41
    iput-boolean p2, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIsLast1:Z

    .line 42
    iput p3, p0, Lcom/mediatek/sensorhub/ConditionItem;->mOperation:I

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mDataType:I

    .line 44
    iput-wide p4, p0, Lcom/mediatek/sensorhub/ConditionItem;->mLongValue:J

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mDataType:I

    .line 22
    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mConditionType:I

    .line 131
    invoke-virtual {p0, p1}, Lcom/mediatek/sensorhub/ConditionItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 132
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public isBracketLeft()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mBracketLeft:Z

    return v0
.end method

.method public isBracketRight()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mBracketRight:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mBracketLeft:Z

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mBracketRight:Z

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mCombine:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIndex1:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIsLast1:Z

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIndex2:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIsLast2:Z

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mOperation:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mDataType:I

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIntValue:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mLongValue:J

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mFloatValue:F

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mConditionType:I

    .line 166
    return-void

    :cond_0
    move v0, v2

    .line 153
    goto :goto_0

    :cond_1
    move v0, v2

    .line 154
    goto :goto_1

    :cond_2
    move v0, v2

    .line 157
    goto :goto_2

    :cond_3
    move v1, v2

    .line 159
    goto :goto_3
.end method

.method public setBracketLeft()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mBracketLeft:Z

    .line 104
    return-void
.end method

.method public setBracketRight()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mBracketRight:Z

    .line 112
    return-void
.end method

.method public setCombine(I)V
    .locals 0
    .param p1, "combineType"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/mediatek/sensorhub/ConditionItem;->mCombine:I

    .line 100
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConditionItem [mBracketLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/sensorhub/ConditionItem;->mBracketLeft:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBracketRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/sensorhub/ConditionItem;->mBracketRight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCombine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/sensorhub/ConditionItem;->mCombine:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIndex1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIndex1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsLast1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIsLast1:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIndex2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIndex2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsLast2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIsLast2:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOperation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/sensorhub/ConditionItem;->mOperation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDataType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/sensorhub/ConditionItem;->mDataType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIntValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIntValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLongValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mediatek/sensorhub/ConditionItem;->mLongValue:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFloatValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/sensorhub/ConditionItem;->mFloatValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConditionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/sensorhub/ConditionItem;->mConditionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 170
    iget-boolean v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mBracketLeft:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-boolean v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mBracketRight:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mCombine:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIndex1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget-boolean v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIsLast1:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIndex2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-boolean v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIsLast2:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mOperation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mDataType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mIntValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-wide v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mLongValue:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 181
    iget v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mFloatValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 182
    iget v0, p0, Lcom/mediatek/sensorhub/ConditionItem;->mConditionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    return-void

    :cond_0
    move v0, v2

    .line 170
    goto :goto_0

    :cond_1
    move v0, v2

    .line 171
    goto :goto_1

    :cond_2
    move v0, v2

    .line 174
    goto :goto_2

    :cond_3
    move v1, v2

    .line 176
    goto :goto_3
.end method
