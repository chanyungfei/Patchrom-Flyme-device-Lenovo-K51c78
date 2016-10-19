.class public abstract Lcom/mediatek/effect/Effect;
.super Ljava/lang/Object;
.source "Effect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/effect/Effect$EffectUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Effect"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public abstract apply(Landroid/media/Image;Landroid/media/Image;)V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected native native_setUpdateListener(Lcom/mediatek/effect/Effect$EffectUpdateListener;)V
.end method

.method public abstract release()V
.end method

.method public abstract setParameter(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public setUpdateListener(Lcom/mediatek/effect/Effect$EffectUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/effect/Effect$EffectUpdateListener;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/mediatek/effect/Effect;->native_setUpdateListener(Lcom/mediatek/effect/Effect$EffectUpdateListener;)V

    .line 60
    return-void
.end method
