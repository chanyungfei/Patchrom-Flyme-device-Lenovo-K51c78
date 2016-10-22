.class public Lcom/mediatek/sensorhub/Action;
.super Ljava/lang/Object;
.source "Action.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_ID_AP_WAKEUP:I = 0x1

.field public static final ACTION_ID_CONSYS_WAKEUP:I = 0x5

.field public static final ACTION_ID_INVALID:I = 0x0

.field public static final ACTION_ID_TOUCH_ACTIVE:I = 0x3

.field public static final ACTION_ID_TOUCH_DEACTIVE:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/sensorhub/Action;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_INTENT:I = 0x1

.field private static final LOG:Z

.field private static final NO_INTENT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Action"


# instance fields
.field private final mActionId:I

.field private final mIntent:Landroid/app/PendingIntent;

.field private final mOnConditionChanged:Z

.field private final mRepeatable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
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
    sput-boolean v0, Lcom/mediatek/sensorhub/Action;->LOG:Z

    .line 164
    new-instance v0, Lcom/mediatek/sensorhub/Action$1;

    invoke-direct {v0}, Lcom/mediatek/sensorhub/Action$1;-><init>()V

    sput-object v0, Lcom/mediatek/sensorhub/Action;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 17
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(IZZ)V
    .locals 1
    .param p1, "actionId"    # I
    .param p2, "repeatable"    # Z
    .param p3, "onConditionChanged"    # Z

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/mediatek/sensorhub/Action;->mActionId:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/sensorhub/Action;->mIntent:Landroid/app/PendingIntent;

    .line 58
    iput-boolean p2, p0, Lcom/mediatek/sensorhub/Action;->mRepeatable:Z

    .line 59
    iput-boolean p3, p0, Lcom/mediatek/sensorhub/Action;->mOnConditionChanged:Z

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Z)V
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "repeatable"    # Z

    .prologue
    .line 88
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/sensorhub/Action;-><init>(Landroid/app/PendingIntent;ZZ)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;ZZ)V
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "repeatable"    # Z
    .param p3, "onConditionChanged"    # Z

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/sensorhub/Action;->mActionId:I

    .line 74
    iput-object p1, p0, Lcom/mediatek/sensorhub/Action;->mIntent:Landroid/app/PendingIntent;

    .line 75
    iput-boolean p2, p0, Lcom/mediatek/sensorhub/Action;->mRepeatable:Z

    .line 76
    iput-boolean p3, p0, Lcom/mediatek/sensorhub/Action;->mOnConditionChanged:Z

    .line 77
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mediatek/sensorhub/Action;->mActionId:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    .local v0, "hasIntent":I
    if-ne v0, v2, :cond_1

    .line 95
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Lcom/mediatek/sensorhub/Action;->mIntent:Landroid/app/PendingIntent;

    .line 99
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/mediatek/sensorhub/Action;->mRepeatable:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_3

    :goto_2
    iput-boolean v2, p0, Lcom/mediatek/sensorhub/Action;->mOnConditionChanged:Z

    .line 101
    sget-boolean v1, Lcom/mediatek/sensorhub/Action;->LOG:Z

    if-eqz v1, :cond_0

    .line 102
    const-string v1, "Action"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readParcel: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/sensorhub/Action;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    return-void

    .line 97
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/sensorhub/Action;->mIntent:Landroid/app/PendingIntent;

    goto :goto_0

    :cond_2
    move v1, v3

    .line 99
    goto :goto_1

    :cond_3
    move v2, v3

    .line 100
    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mediatek/sensorhub/Action$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/mediatek/sensorhub/Action$1;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/mediatek/sensorhub/Action;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/mediatek/sensorhub/Action;->mActionId:I

    return v0
.end method

.method public getIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mediatek/sensorhub/Action;->mIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public isOnConditionChanged()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/mediatek/sensorhub/Action;->mOnConditionChanged:Z

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/mediatek/sensorhub/Action;->mRepeatable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 149
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "action["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget v1, p0, Lcom/mediatek/sensorhub/Action;->mActionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-boolean v1, p0, Lcom/mediatek/sensorhub/Action;->mRepeatable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-boolean v1, p0, Lcom/mediatek/sensorhub/Action;->mOnConditionChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v1, p0, Lcom/mediatek/sensorhub/Action;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 188
    iget v0, p0, Lcom/mediatek/sensorhub/Action;->mActionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget-object v0, p0, Lcom/mediatek/sensorhub/Action;->mIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    .line 190
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    :goto_0
    iget-boolean v0, p0, Lcom/mediatek/sensorhub/Action;->mRepeatable:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-boolean v0, p0, Lcom/mediatek/sensorhub/Action;->mOnConditionChanged:Z

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    sget-boolean v0, Lcom/mediatek/sensorhub/Action;->LOG:Z

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "Action"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeToParcel: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/sensorhub/Action;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    return-void

    .line 192
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-object v0, p0, Lcom/mediatek/sensorhub/Action;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 195
    goto :goto_1

    :cond_3
    move v1, v2

    .line 196
    goto :goto_2
.end method
