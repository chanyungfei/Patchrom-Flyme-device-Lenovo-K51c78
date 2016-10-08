.class public final enum Lcom/mediatek/gesture/Gesture$HandPose;
.super Ljava/lang/Enum;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gesture/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandPose"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/gesture/Gesture$HandPose;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/gesture/Gesture$HandPose;

.field public static final enum POSE_OPENPLAM:Lcom/mediatek/gesture/Gesture$HandPose;

.field public static final enum POSE_VICTORY:Lcom/mediatek/gesture/Gesture$HandPose;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 288
    new-instance v0, Lcom/mediatek/gesture/Gesture$HandPose;

    const-string v1, "POSE_OPENPLAM"

    invoke-direct {v0, v1, v2, v2}, Lcom/mediatek/gesture/Gesture$HandPose;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/gesture/Gesture$HandPose;->POSE_OPENPLAM:Lcom/mediatek/gesture/Gesture$HandPose;

    .line 293
    new-instance v0, Lcom/mediatek/gesture/Gesture$HandPose;

    const-string v1, "POSE_VICTORY"

    invoke-direct {v0, v1, v3, v3}, Lcom/mediatek/gesture/Gesture$HandPose;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mediatek/gesture/Gesture$HandPose;->POSE_VICTORY:Lcom/mediatek/gesture/Gesture$HandPose;

    .line 284
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mediatek/gesture/Gesture$HandPose;

    sget-object v1, Lcom/mediatek/gesture/Gesture$HandPose;->POSE_OPENPLAM:Lcom/mediatek/gesture/Gesture$HandPose;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/gesture/Gesture$HandPose;->POSE_VICTORY:Lcom/mediatek/gesture/Gesture$HandPose;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mediatek/gesture/Gesture$HandPose;->$VALUES:[Lcom/mediatek/gesture/Gesture$HandPose;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 296
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 297
    iput p3, p0, Lcom/mediatek/gesture/Gesture$HandPose;->mValue:I

    .line 298
    return-void
.end method

.method private getValue()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/mediatek/gesture/Gesture$HandPose;->mValue:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/gesture/Gesture$HandPose;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 284
    const-class v0, Lcom/mediatek/gesture/Gesture$HandPose;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gesture/Gesture$HandPose;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/gesture/Gesture$HandPose;
    .locals 1

    .prologue
    .line 284
    sget-object v0, Lcom/mediatek/gesture/Gesture$HandPose;->$VALUES:[Lcom/mediatek/gesture/Gesture$HandPose;

    invoke-virtual {v0}, [Lcom/mediatek/gesture/Gesture$HandPose;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/gesture/Gesture$HandPose;

    return-object v0
.end method
