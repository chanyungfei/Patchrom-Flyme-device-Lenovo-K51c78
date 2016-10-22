.class public final enum Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;
.super Ljava/lang/Enum;
.source "CameraEffectHalException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mmsdk/CameraEffectHalException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EffectHalError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

.field public static final enum EFFECT_HAL_CLIENT_ERROR:Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

.field public static final enum EFFECT_HAL_ERROR:Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

.field public static final enum EFFECT_HAL_FACTORY_ERROR:Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

.field public static final enum EFFECT_HAL_FEATUREMANAGER_ERROR:Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

.field public static final enum EFFECT_HAL_IN_USE:Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

.field public static final enum EFFECT_HAL_LISTENER_ERROR:Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

.field public static final enum EFFECT_HAL_SERVICE_ERROR:Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

    const-string v1, "EFFECT_HAL_SERVICE_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;->EFFECT_HAL_SERVICE_ERROR:Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

    new-instance v0, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

    const-string v1, "EFFECT_HAL_FEATUREMANAGER_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;->EFFECT_HAL_FEATUREMANAGER_ERROR:Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

    new-instance v0, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

    const-string v1, "EFFECT_HAL_FACTORY_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;->EFFECT_HAL_FACTORY_ERROR:Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

    new-instance v0, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

    const-string v1, "EFFECT_HAL_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;->EFFECT_HAL_ERROR:Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

    new-instance v0, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

    const-string v1, "EFFECT_HAL_CLIENT_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;->EFFECT_HAL_CLIENT_ERROR:Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

    new-instance v0, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

    const-string v1, "EFFECT_HAL_LISTENER_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;->EFFECT_HAL_LISTENER_ERROR:Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

    new-instance v0, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

    const-string v1, "EFFECT_HAL_IN_USE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;->EFFECT_HAL_IN_USE:Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

    .line 20
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

    sget-object v1, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;->EFFECT_HAL_SERVICE_ERROR:Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;->EFFECT_HAL_FEATUREMANAGER_ERROR:Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;->EFFECT_HAL_FACTORY_ERROR:Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;->EFFECT_HAL_ERROR:Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;->EFFECT_HAL_CLIENT_ERROR:Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;->EFFECT_HAL_LISTENER_ERROR:Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;->EFFECT_HAL_IN_USE:Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;->$VALUES:[Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;->$VALUES:[Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

    invoke-virtual {v0}, [Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/mmsdk/CameraEffectHalException$EffectHalError;

    return-object v0
.end method
