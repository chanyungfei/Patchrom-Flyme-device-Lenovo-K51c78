.class public Lcom/mediatek/effect/FaceBeautyEffect;
.super Lcom/mediatek/effect/Effect;
.source "FaceBeautyEffect.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceBeautyEffect"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/mediatek/effect/Effect;-><init>()V

    .line 18
    invoke-direct {p0, p0}, Lcom/mediatek/effect/FaceBeautyEffect;->native_setup(Lcom/mediatek/effect/FaceBeautyEffect;)V

    .line 19
    return-void
.end method

.method public static createEffect()Lcom/mediatek/effect/Effect;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/mediatek/effect/FaceBeautyEffect;

    invoke-direct {v0}, Lcom/mediatek/effect/FaceBeautyEffect;-><init>()V

    return-object v0
.end method

.method private native native_apply(Landroid/media/Image;Landroid/media/Image;)V
.end method

.method private native native_release()V
.end method

.method private native native_setParameter(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method private native native_setup(Lcom/mediatek/effect/FaceBeautyEffect;)V
.end method


# virtual methods
.method public apply(Landroid/media/Image;Landroid/media/Image;)V
    .locals 3
    .param p1, "srcImage"    # Landroid/media/Image;
    .param p2, "targetImage"    # Landroid/media/Image;

    .prologue
    .line 35
    const-string v0, "FaceBeautyEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apply(), srcImage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", targetImage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/mediatek/effect/FaceBeautyEffect;->native_apply(Landroid/media/Image;Landroid/media/Image;)V

    .line 37
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    const-string v0, "facebeautyeffect"

    .line 46
    .local v0, "effectName":Ljava/lang/String;
    const-string v1, "FaceBeautyEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getName(), effectName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-object v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/mediatek/effect/FaceBeautyEffect;->native_release()V

    .line 73
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "parameterKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 57
    const-string v0, "FaceBeautyEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParameter(), parameterKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/mediatek/effect/FaceBeautyEffect;->native_setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    return-void
.end method
