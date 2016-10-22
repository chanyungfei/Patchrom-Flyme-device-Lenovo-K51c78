.class public final Lcom/lenovo/lcd/LenovoLcdEffectInterface;
.super Ljava/lang/Object;
.source "LenovoLcdEffectInterface.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LenovoLcdEffect"

.field private static mCurrentCABCStates:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, -0x1

    sput v0, Lcom/lenovo/lcd/LenovoLcdEffectInterface;->mCurrentCABCStates:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLcdFunctionSupport(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {p0}, Lcom/lenovo/lcd/LenovoLcdEffectInterface;->nativeIsLcdFunctionSupport(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static native nativeIsLcdFunctionSupport(Ljava/lang/String;)Z
.end method

.method public static native nativeSetCABC(I)V
.end method

.method public static native nativeSetGamma(I)V
.end method

.method public static native nativeSetIE(I)V
.end method

.method public static native nativeSetInverseColor(I)V
.end method

.method public static native nativesetCustomMode(II)V
.end method

.method public static reportResumedActivityLocked(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    .line 15
    const-string v1, "persist.cabc.disable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 19
    :cond_1
    if-eqz p0, :cond_0

    .line 20
    const-string v1, "com.lenovo.scg"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.mt.mtxx.mtxx"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.android.gallery3d"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.lenovo.gallery"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 24
    :cond_2
    sget v1, Lcom/lenovo/lcd/LenovoLcdEffectInterface;->mCurrentCABCStates:I

    if-eqz v1, :cond_0

    .line 26
    const-string v1, "display_effect"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DisplayEffectManager;

    .line 29
    .local v0, "displayEffectManager":Landroid/app/DisplayEffectManager;
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/DisplayEffectManager;->setModeOverride(I)I

    .line 32
    const/4 v1, 0x0

    sput v1, Lcom/lenovo/lcd/LenovoLcdEffectInterface;->mCurrentCABCStates:I

    goto :goto_0

    .line 35
    .end local v0    # "displayEffectManager":Landroid/app/DisplayEffectManager;
    :cond_3
    sget v1, Lcom/lenovo/lcd/LenovoLcdEffectInterface;->mCurrentCABCStates:I

    if-eq v1, v4, :cond_0

    .line 37
    sget v1, Lcom/lenovo/lcd/LenovoLcdEffectInterface;->mCurrentCABCStates:I

    if-eq v1, v3, :cond_4

    .line 38
    const-string v1, "display_effect"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DisplayEffectManager;

    .line 41
    .restart local v0    # "displayEffectManager":Landroid/app/DisplayEffectManager;
    invoke-virtual {v0, v3}, Landroid/app/DisplayEffectManager;->setModeOverride(I)I

    .line 45
    .end local v0    # "displayEffectManager":Landroid/app/DisplayEffectManager;
    :cond_4
    sput v4, Lcom/lenovo/lcd/LenovoLcdEffectInterface;->mCurrentCABCStates:I

    goto :goto_0
.end method

.method public static setCABC(I)V
    .locals 3
    .param p0, "mode"    # I

    .prologue
    .line 65
    const-string v0, "LenovoLcdEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCABC mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {p0}, Lcom/lenovo/lcd/LenovoLcdEffectInterface;->nativeSetCABC(I)V

    .line 67
    return-void
.end method

.method public static setCustomMode(II)V
    .locals 0
    .param p0, "a_eindex"    # I
    .param p1, "index"    # I

    .prologue
    .line 90
    invoke-static {p0, p1}, Lcom/lenovo/lcd/LenovoLcdEffectInterface;->nativesetCustomMode(II)V

    .line 91
    return-void
.end method

.method public static setGamma(I)V
    .locals 3
    .param p0, "mode"    # I

    .prologue
    .line 75
    const-string v0, "LenovoLcdEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetGamma mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {p0}, Lcom/lenovo/lcd/LenovoLcdEffectInterface;->nativeSetGamma(I)V

    .line 77
    return-void
.end method

.method public static setIE(I)V
    .locals 3
    .param p0, "mode"    # I

    .prologue
    .line 80
    const-string v0, "LenovoLcdEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetIE mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {p0}, Lcom/lenovo/lcd/LenovoLcdEffectInterface;->nativeSetIE(I)V

    .line 82
    return-void
.end method

.method public static setInverseColor(I)V
    .locals 3
    .param p0, "mode"    # I

    .prologue
    .line 70
    const-string v0, "LenovoLcdEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInverseColor mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {p0}, Lcom/lenovo/lcd/LenovoLcdEffectInterface;->nativeSetInverseColor(I)V

    .line 72
    return-void
.end method
