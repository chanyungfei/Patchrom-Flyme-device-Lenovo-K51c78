.class public Lcom/mediatek/matrixeffect/MatrixEffect;
.super Ljava/lang/Object;
.source "MatrixEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/matrixeffect/MatrixEffect$EventHandler;,
        Lcom/mediatek/matrixeffect/MatrixEffect$EffectsCallback;
    }
.end annotation


# static fields
.field private static final MSG_EFFECT_DONE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MatrixEffect_Framework"

.field private static sMatrixEffect:Lcom/mediatek/matrixeffect/MatrixEffect;


# instance fields
.field private mEffectsListener:Lcom/mediatek/matrixeffect/MatrixEffect$EffectsCallback;

.field private mEventHandler:Lcom/mediatek/matrixeffect/MatrixEffect$EventHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 180
    const-string v0, "jni_lomoeffect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 74
    new-instance v1, Lcom/mediatek/matrixeffect/MatrixEffect$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/matrixeffect/MatrixEffect$EventHandler;-><init>(Lcom/mediatek/matrixeffect/MatrixEffect;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/matrixeffect/MatrixEffect;->mEventHandler:Lcom/mediatek/matrixeffect/MatrixEffect$EventHandler;

    .line 78
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/mediatek/matrixeffect/MatrixEffect;->native_setup(Ljava/lang/Object;)V

    .line 79
    return-void

    .line 76
    :cond_0
    new-instance v1, Lcom/mediatek/matrixeffect/MatrixEffect$EventHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/mediatek/matrixeffect/MatrixEffect$EventHandler;-><init>(Lcom/mediatek/matrixeffect/MatrixEffect;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/matrixeffect/MatrixEffect;->mEventHandler:Lcom/mediatek/matrixeffect/MatrixEffect$EventHandler;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mediatek/matrixeffect/MatrixEffect;)Lcom/mediatek/matrixeffect/MatrixEffect$EffectsCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/matrixeffect/MatrixEffect;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/matrixeffect/MatrixEffect;->mEffectsListener:Lcom/mediatek/matrixeffect/MatrixEffect$EffectsCallback;

    return-object v0
.end method

.method public static getInstance()Lcom/mediatek/matrixeffect/MatrixEffect;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/mediatek/matrixeffect/MatrixEffect;->sMatrixEffect:Lcom/mediatek/matrixeffect/MatrixEffect;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/mediatek/matrixeffect/MatrixEffect;

    invoke-direct {v0}, Lcom/mediatek/matrixeffect/MatrixEffect;-><init>()V

    sput-object v0, Lcom/mediatek/matrixeffect/MatrixEffect;->sMatrixEffect:Lcom/mediatek/matrixeffect/MatrixEffect;

    .line 89
    :cond_0
    sget-object v0, Lcom/mediatek/matrixeffect/MatrixEffect;->sMatrixEffect:Lcom/mediatek/matrixeffect/MatrixEffect;

    return-object v0
.end method

.method private native native_displayEffect([BI)V
.end method

.method private native native_initializeEffect(IIII)V
.end method

.method private native native_processEffect([B[I)V
.end method

.method private native native_registerEffectBuffers(II[[B)V
.end method

.method private native native_releaseEffect()V
.end method

.method private native native_setSurfaceToNative(Landroid/view/Surface;I)V
.end method

.method private native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;I)V
    .locals 2
    .param p0, "matrixeffect_pref"    # Ljava/lang/Object;
    .param p1, "what"    # I

    .prologue
    .line 175
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "matrixeffect_pref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/matrixeffect/MatrixEffect;

    .line 176
    .local v0, "le":Lcom/mediatek/matrixeffect/MatrixEffect;
    iget-object v1, v0, Lcom/mediatek/matrixeffect/MatrixEffect;->mEventHandler:Lcom/mediatek/matrixeffect/MatrixEffect$EventHandler;

    invoke-virtual {v1, p1}, Lcom/mediatek/matrixeffect/MatrixEffect$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 177
    return-void
.end method


# virtual methods
.method public initialize(IIII)V
    .locals 0
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I
    .param p3, "effectNumOfPage"    # I
    .param p4, "format"    # I

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/matrixeffect/MatrixEffect;->native_initializeEffect(IIII)V

    .line 127
    return-void
.end method

.method public process([B[I)V
    .locals 0
    .param p1, "previewData"    # [B
    .param p2, "effectId"    # [I

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/mediatek/matrixeffect/MatrixEffect;->native_processEffect([B[I)V

    .line 146
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/mediatek/matrixeffect/MatrixEffect;->native_releaseEffect()V

    .line 153
    return-void
.end method

.method public setBuffers(II[[B)V
    .locals 0
    .param p1, "bufferWidth"    # I
    .param p2, "bufferHeight"    # I
    .param p3, "buffers"    # [[B

    .prologue
    .line 136
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/matrixeffect/MatrixEffect;->native_registerEffectBuffers(II[[B)V

    .line 137
    return-void
.end method

.method public setCallback(Lcom/mediatek/matrixeffect/MatrixEffect$EffectsCallback;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/matrixeffect/MatrixEffect$EffectsCallback;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mediatek/matrixeffect/MatrixEffect;->mEffectsListener:Lcom/mediatek/matrixeffect/MatrixEffect$EffectsCallback;

    .line 106
    return-void
.end method

.method public setSurface(Landroid/view/Surface;I)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "surfaceNumber"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/mediatek/matrixeffect/MatrixEffect;->native_setSurfaceToNative(Landroid/view/Surface;I)V

    .line 115
    return-void
.end method
