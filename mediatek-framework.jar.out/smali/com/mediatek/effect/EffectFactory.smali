.class public Lcom/mediatek/effect/EffectFactory;
.super Ljava/lang/Object;
.source "EffectFactory.java"


# static fields
.field public static final EFFECTS_FACEBEAUTIFIER:Ljava/lang/String; = "FaceBeautyEffect"

.field private static final TAG:Ljava/lang/String; = "EffectFactory"

.field private static sEffectFactory:Lcom/mediatek/effect/EffectFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const-string v0, "jni_effects"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method public static createEffectFactory()Lcom/mediatek/effect/EffectFactory;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/mediatek/effect/EffectFactory;->sEffectFactory:Lcom/mediatek/effect/EffectFactory;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/mediatek/effect/EffectFactory;

    invoke-direct {v0}, Lcom/mediatek/effect/EffectFactory;-><init>()V

    sput-object v0, Lcom/mediatek/effect/EffectFactory;->sEffectFactory:Lcom/mediatek/effect/EffectFactory;

    .line 95
    :cond_0
    sget-object v0, Lcom/mediatek/effect/EffectFactory;->sEffectFactory:Lcom/mediatek/effect/EffectFactory;

    return-object v0
.end method

.method private native native_isEffectSupporteds(Ljava/lang/String;)Z
.end method


# virtual methods
.method public createEffect(Ljava/lang/String;)Lcom/mediatek/effect/Effect;
    .locals 3
    .param p1, "effectName"    # Ljava/lang/String;

    .prologue
    .line 101
    const-string v0, "EffectFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createEffect(), effectName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v0, "FaceBeautyEffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/mediatek/effect/FaceBeautyEffect;->createEffect()Lcom/mediatek/effect/Effect;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEffectSupported(Ljava/lang/String;)Z
    .locals 3
    .param p1, "effectName"    # Ljava/lang/String;

    .prologue
    .line 112
    const-string v0, "EffectFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEffectSupporteds(), effectName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-direct {p0, p1}, Lcom/mediatek/effect/EffectFactory;->native_isEffectSupporteds(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
