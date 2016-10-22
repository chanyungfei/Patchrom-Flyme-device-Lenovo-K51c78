.class public final enum Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;
.super Ljava/lang/Enum;
.source "CameraEffectStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mmsdk/CameraEffectStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraEffectHalStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

.field public static final enum STATUS_CONFINGURED:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

.field public static final enum STATUS_INITIALIZED:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

.field public static final enum STATUS_RUNNING:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

.field public static final enum STATUS_UNINITIALIZED:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    const-string v1, "STATUS_UNINITIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;->STATUS_UNINITIALIZED:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    new-instance v0, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    const-string v1, "STATUS_INITIALIZED"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;->STATUS_INITIALIZED:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    new-instance v0, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    const-string v1, "STATUS_CONFINGURED"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;->STATUS_CONFINGURED:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    new-instance v0, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    const-string v1, "STATUS_RUNNING"

    invoke-direct {v0, v1, v5}, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;->STATUS_RUNNING:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    sget-object v1, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;->STATUS_UNINITIALIZED:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;->STATUS_INITIALIZED:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;->STATUS_CONFINGURED:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;->STATUS_RUNNING:Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;->$VALUES:[Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;->$VALUES:[Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    invoke-virtual {v0}, [Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/mmsdk/CameraEffectStatus$CameraEffectHalStatus;

    return-object v0
.end method
