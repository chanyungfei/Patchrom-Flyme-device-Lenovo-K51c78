.class final enum Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;
.super Ljava/lang/Enum;
.source "DisplayEffectNativeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/effect/DisplayEffectNativeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EFFECT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

.field public static final enum INVALID:Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

.field public static final enum ce:Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

.field public static final enum cta:Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

.field public static final enum shp:Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    const-string v1, "cta"

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->cta:Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    new-instance v0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    const-string v1, "ce"

    invoke-direct {v0, v1, v3}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->ce:Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    new-instance v0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    const-string v1, "shp"

    invoke-direct {v0, v1, v4}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->shp:Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    new-instance v0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v5}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->INVALID:Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    sget-object v1, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->cta:Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->ce:Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->shp:Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->INVALID:Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->$VALUES:[Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->$VALUES:[Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/effect/DisplayEffectNativeAdapter$EFFECT_TYPE;

    return-object v0
.end method
