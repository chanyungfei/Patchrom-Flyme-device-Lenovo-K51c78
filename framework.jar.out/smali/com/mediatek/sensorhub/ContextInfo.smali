.class public Lcom/mediatek/sensorhub/ContextInfo;
.super Ljava/lang/Object;
.source "ContextInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/sensorhub/ContextInfo$Gesture;,
        Lcom/mediatek/sensorhub/ContextInfo$Shake;,
        Lcom/mediatek/sensorhub/ContextInfo$Facing;,
        Lcom/mediatek/sensorhub/ContextInfo$Pickup;,
        Lcom/mediatek/sensorhub/ContextInfo$Carry;,
        Lcom/mediatek/sensorhub/ContextInfo$UserActivity;,
        Lcom/mediatek/sensorhub/ContextInfo$Pedometer;,
        Lcom/mediatek/sensorhub/ContextInfo$Clock;,
        Lcom/mediatek/sensorhub/ContextInfo$Type;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextInfo"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataType(I)I
    .locals 4
    .param p0, "index"    # I

    .prologue
    .line 507
    const/16 v1, 0xc

    if-lt p0, v1, :cond_0

    const/16 v1, 0x2f

    if-le p0, v1, :cond_1

    .line 508
    :cond_0
    const-string v1, "ContextInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataType: invalid index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v0, 0x0

    .line 529
    :goto_0
    return v0

    .line 511
    :cond_1
    const/4 v0, 0x1

    .line 512
    .local v0, "type":I
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 521
    :sswitch_0
    const/4 v0, 0x2

    .line 522
    goto :goto_0

    .line 524
    :sswitch_1
    const/4 v0, 0x3

    .line 525
    goto :goto_0

    .line 512
    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0xf -> :sswitch_1
        0x12 -> :sswitch_0
        0x1d -> :sswitch_0
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2d -> :sswitch_0
    .end sparse-switch
.end method
