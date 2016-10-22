.class public Lcom/mediatek/sensorhub/Condition;
.super Ljava/lang/Object;
.source "Condition.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/sensorhub/Condition$Builder;
    }
.end annotation


# static fields
.field static final COMBINE_AND:I = 0x1

.field static final COMBINE_INVALID:I = 0x0

.field static final COMBINE_OR:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/sensorhub/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG:Z

.field private static final MAX_SUPPORTED_ITEM:I = 0x4

.field public static final OP_ANY:I = 0xff

.field public static final OP_EQUALS:I = 0x5

.field public static final OP_GREATER_THAN:I = 0x1

.field public static final OP_GREATER_THAN_OR_EQUALS:I = 0x2

.field public static final OP_LESS_THAN:I = 0x3

.field public static final OP_LESS_THAN_OR_EQUALS:I = 0x4

.field public static final OP_MOD:I = 0x7

.field public static final OP_NOT_EQUALS:I = 0x6

.field private static final TAG:Ljava/lang/String; = "Condition"


# instance fields
.field private mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/mediatek/sensorhub/ConditionItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mediatek/sensorhub/Condition;->LOG:Z

    .line 171
    new-instance v0, Lcom/mediatek/sensorhub/Condition$1;

    invoke-direct {v0}, Lcom/mediatek/sensorhub/Condition$1;-><init>()V

    sput-object v0, Lcom/mediatek/sensorhub/Condition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 119
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, p0, Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 158
    .local v2, "size":I
    iget-object v3, p0, Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 160
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/mediatek/sensorhub/ConditionItem;

    .line 161
    .local v1, "item":Lcom/mediatek/sensorhub/ConditionItem;
    iget-object v3, p0, Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    .end local v1    # "item":Lcom/mediatek/sensorhub/ConditionItem;
    :cond_0
    sget-boolean v3, Lcom/mediatek/sensorhub/Condition;->LOG:Z

    if-eqz v3, :cond_1

    .line 164
    const-string v3, "Condition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readParcel: itemSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", parcelSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/sensorhub/Condition;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/sensorhub/Condition;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/mediatek/sensorhub/Condition;->LOG:Z

    return v0
.end method

.method private toArray()[Lcom/mediatek/sensorhub/ConditionItem;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/mediatek/sensorhub/ConditionItem;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/sensorhub/ConditionItem;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method opStr(I)Ljava/lang/String;
    .locals 1
    .param p1, "operation"    # I

    .prologue
    .line 127
    sparse-switch p1, :sswitch_data_0

    .line 145
    const-string v0, "@@"

    :goto_0
    return-object v0

    .line 129
    :sswitch_0
    const-string v0, "any"

    goto :goto_0

    .line 131
    :sswitch_1
    const-string v0, ">"

    goto :goto_0

    .line 133
    :sswitch_2
    const-string v0, ">="

    goto :goto_0

    .line 135
    :sswitch_3
    const-string v0, "<"

    goto :goto_0

    .line 137
    :sswitch_4
    const-string v0, "<="

    goto :goto_0

    .line 139
    :sswitch_5
    const-string v0, "="

    goto :goto_0

    .line 141
    :sswitch_6
    const-string v0, "<>"

    goto :goto_0

    .line 143
    :sswitch_7
    const-string v0, "%"

    goto :goto_0

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 196
    iget-object v2, p0, Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .line 197
    .local v1, "itemSize":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 199
    iget-object v2, p0, Lcom/mediatek/sensorhub/Condition;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    sget-boolean v2, Lcom/mediatek/sensorhub/Condition;->LOG:Z

    if-eqz v2, :cond_1

    .line 202
    const-string v2, "Condition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeToParcel: itemSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",parcelSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_1
    return-void
.end method
