.class public Landroid/view/SurfaceControl;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControl$PhysicalDisplayInfoEx;,
        Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    }
.end annotation


# static fields
.field public static final BUILT_IN_DISPLAY_ID_HDMI:I = 0x1

.field public static final BUILT_IN_DISPLAY_ID_MAIN:I = 0x0

.field public static final CURSOR_WINDOW:I = 0x2000

.field public static final FX_SURFACE_DIM:I = 0x20000

.field public static final FX_SURFACE_MASK:I = 0xf0000

.field public static final FX_SURFACE_NORMAL:I = 0x0

.field public static final HIDDEN:I = 0x4

.field public static final LENOVO_DYNAMIC_BLUR_BACKGROUND:I = 0x2000000

.field public static final LENOVO_STATIC_BLUR_BACKGROUND:I = 0x1000000

.field public static final NON_PREMULTIPLIED:I = 0x100

.field public static final OPAQUE:I = 0x400

.field public static final POWER_MODE_DOZE:I = 0x1

.field public static final POWER_MODE_DOZE_SUSPEND:I = 0x3

.field public static final POWER_MODE_NORMAL:I = 0x2

.field public static final POWER_MODE_OFF:I = 0x0

.field public static final PROTECTED_APP:I = 0x800

.field private static final SCREEN_HEIGHT:I = 0x780

.field private static final SCREEN_WIDTH:I = 0x438

.field public static final SECURE:I = 0x80

.field private static final SURFACE_HIDDEN:I = 0x1

.field private static final SURFACE_OPAQUE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SurfaceControl"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mName:Ljava/lang/String;

.field mNativeObject:J


# direct methods
.method public constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    .locals 4
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "format"    # I
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 304
    if-nez p1, :cond_0

    .line 305
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "session must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    if-nez p2, :cond_1

    .line 308
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_1
    and-int/lit8 v0, p6, 0x4

    if-nez v0, :cond_2

    .line 312
    const-string v0, "SurfaceControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surfaces should always be created with the HIDDEN flag set to ensure that they are not made visible prematurely before all of the surface\'s properties have been configured.  Set the other properties and make the surface visible within a transaction.  New surface name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    :cond_2
    iput-object p2, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    .line 321
    invoke-static/range {p1 .. p6}, Landroid/view/SurfaceControl;->nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 322
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 323
    new-instance v0, Landroid/view/Surface$OutOfResourcesException;

    const-string v1, "Couldn\'t allocate SurfaceControl native object"

    invoke-direct {v0, v1}, Landroid/view/Surface$OutOfResourcesException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_3
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method private checkNotReleased()V
    .locals 4

    .prologue
    .line 376
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mNativeObject is null. Have you called release() already?"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_0
    return-void
.end method

.method public static clearAnimationFrameStats()Z
    .locals 1

    .prologue
    .line 459
    invoke-static {}, Landroid/view/SurfaceControl;->nativeClearAnimationFrameStats()Z

    move-result v0

    return v0
.end method

.method public static closeTransaction()V
    .locals 0

    .prologue
    .line 392
    invoke-static {}, Landroid/view/SurfaceControl;->nativeCloseTransaction()V

    .line 393
    return-void
.end method

.method public static createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "secure"    # Z

    .prologue
    .line 708
    if-nez p0, :cond_0

    .line 709
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 711
    :cond_0
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeCreateDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static destroyDisplay(Landroid/os/IBinder;)V
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .prologue
    .line 715
    if-nez p0, :cond_0

    .line 716
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_0
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeDestroyDisplay(Landroid/os/IBinder;)V

    .line 719
    return-void
.end method

.method public static getActiveConfig(Landroid/os/IBinder;)I
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .prologue
    .line 635
    if-nez p0, :cond_0

    .line 636
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 638
    :cond_0
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetActiveConfig(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public static getAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
    .locals 1
    .param p0, "outStats"    # Landroid/view/WindowAnimationFrameStats;

    .prologue
    .line 463
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z

    move-result v0

    return v0
.end method

.method public static getBuiltInDisplay(I)Landroid/os/IBinder;
    .locals 1
    .param p0, "builtInDisplayId"    # I

    .prologue
    .line 722
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;

    .prologue
    .line 628
    if-nez p0, :cond_0

    .line 629
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :cond_0
    invoke-static {p0}, Landroid/view/SurfaceControl;->nativeGetDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayInfoEx(Landroid/os/IBinder;Landroid/view/SurfaceControl$PhysicalDisplayInfoEx;)Z
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "outInfo"    # Landroid/view/SurfaceControl$PhysicalDisplayInfoEx;

    .prologue
    .line 650
    if-nez p0, :cond_0

    .line 651
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_0
    if-nez p1, :cond_1

    .line 654
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outInfo must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :cond_1
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeGetDisplayInfoEx(Landroid/os/IBinder;Landroid/view/SurfaceControl$PhysicalDisplayInfoEx;)Z

    move-result v0

    return v0
.end method

.method private static native nativeClearAnimationFrameStats()Z
.end method

.method private static native nativeClearContentFrameStats(J)Z
.end method

.method private static native nativeCloseTransaction()V
.end method

.method private static native nativeCreate(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native nativeCreateDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeDestroyDisplay(Landroid/os/IBinder;)V
.end method

.method private static native nativeGetActiveConfig(Landroid/os/IBinder;)I
.end method

.method private static native nativeGetAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
.end method

.method private static native nativeGetBuiltInDisplay(I)Landroid/os/IBinder;
.end method

.method private static native nativeGetContentFrameStats(JLandroid/view/WindowContentFrameStats;)Z
.end method

.method private static native nativeGetDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$PhysicalDisplayInfo;
.end method

.method private static native nativeGetDisplayInfoEx(Landroid/os/IBinder;Landroid/view/SurfaceControl$PhysicalDisplayInfoEx;)Z
.end method

.method private static native nativeOpenTransaction()V
.end method

.method private static native nativeRelease(J)V
.end method

.method private static native nativeScreenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/Bitmap;
.end method

.method private static native nativeScreenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V
.end method

.method private static native nativeSetActiveConfig(Landroid/os/IBinder;I)Z
.end method

.method private static native nativeSetAlpha(JF)V
.end method

.method private static native nativeSetAnimationTransaction()V
.end method

.method private static native nativeSetDisplayLayerStack(Landroid/os/IBinder;I)V
.end method

.method private static native nativeSetDisplayPowerMode(Landroid/os/IBinder;I)V
.end method

.method private static native nativeSetDisplayProjection(Landroid/os/IBinder;IIIIIIIII)V
.end method

.method private static native nativeSetDisplaySize(Landroid/os/IBinder;II)V
.end method

.method private static native nativeSetDisplaySurface(Landroid/os/IBinder;J)V
.end method

.method private static native nativeSetFlags(JII)V
.end method

.method private static native nativeSetFlagsEx(JII)V
.end method

.method private static native nativeSetLayer(JI)V
.end method

.method private static native nativeSetLayerBlurBackgroundAlpha_lenovo(JI)V
.end method

.method private static native nativeSetLayerBlurBackgroundFlag_lenovo(JI)V
.end method

.method private static native nativeSetLayerStack(JI)V
.end method

.method private static native nativeSetMatrix(JFFFF)V
.end method

.method private static native nativeSetPosition(JFF)V
.end method

.method private static native nativeSetSize(JII)V
.end method

.method private static native nativeSetTransparentRegionHint(JLandroid/graphics/Region;)V
.end method

.method private static native nativeSetWindowCrop(JIIII)V
.end method

.method public static openTransaction()V
    .locals 0

    .prologue
    .line 387
    invoke-static {}, Landroid/view/SurfaceControl;->nativeOpenTransaction()V

    .line 388
    return-void
.end method

.method public static screenshot(II)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 870
    invoke-static {v4}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    .line 877
    .local v0, "displayToken":Landroid/os/IBinder;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v2}, Landroid/view/SurfaceControl;->switchToSinlehandRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 878
    .local v1, "rect":Landroid/graphics/Rect;
    const/4 v6, 0x1

    move v2, p0

    move v3, p1

    move v5, v4

    move v7, v4

    move v8, v4

    invoke-static/range {v0 .. v8}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static screenshot(III)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "builtInDisplayId"    # I

    .prologue
    const/4 v4, 0x0

    .line 899
    invoke-static {p2}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    .line 900
    .local v0, "displayToken":Landroid/os/IBinder;
    const-string v2, "SurfaceControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screenshot, builtInDisplayId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v2}, Landroid/view/SurfaceControl;->switchToSinlehandRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 907
    .local v1, "rect":Landroid/graphics/Rect;
    const/4 v6, 0x1

    move v2, p0

    move v3, p1

    move v5, v4

    move v7, v4

    move v8, v4

    invoke-static/range {v0 .. v8}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "sourceCrop"    # Landroid/graphics/Rect;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "minLayer"    # I
    .param p4, "maxLayer"    # I
    .param p5, "useIdentityTransform"    # Z
    .param p6, "rotation"    # I

    .prologue
    const/4 v6, 0x0

    .line 843
    invoke-static {v6}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    .line 850
    .local v0, "displayToken":Landroid/os/IBinder;
    invoke-static {p0}, Landroid/view/SurfaceControl;->switchToSinlehandRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .local v1, "rect":Landroid/graphics/Rect;
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v7, p5

    move v8, p6

    .line 851
    invoke-static/range {v0 .. v8}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IIIIZZI)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V
    .locals 9
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "consumer"    # Landroid/view/Surface;

    .prologue
    const/4 v3, 0x0

    .line 771
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    move v6, v3

    move v8, v3

    invoke-static/range {v0 .. v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V

    .line 772
    return-void
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;II)V
    .locals 9
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "consumer"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 761
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v6, v5

    move v8, v5

    invoke-static/range {v0 .. v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V

    .line 762
    return-void
.end method

.method public static screenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V
    .locals 9
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "consumer"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "minLayer"    # I
    .param p5, "maxLayer"    # I
    .param p6, "useIdentityTransform"    # Z

    .prologue
    .line 745
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V

    .line 747
    return-void
.end method

.method private static screenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V
    .locals 2
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "consumer"    # Landroid/view/Surface;
    .param p2, "sourceCrop"    # Landroid/graphics/Rect;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "minLayer"    # I
    .param p6, "maxLayer"    # I
    .param p7, "allLayers"    # Z
    .param p8, "useIdentityTransform"    # Z

    .prologue
    .line 915
    if-nez p0, :cond_0

    .line 916
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 918
    :cond_0
    if-nez p1, :cond_1

    .line 919
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "consumer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 921
    :cond_1
    invoke-static/range {p0 .. p8}, Landroid/view/SurfaceControl;->nativeScreenshot(Landroid/os/IBinder;Landroid/view/Surface;Landroid/graphics/Rect;IIIIZZ)V

    .line 923
    return-void
.end method

.method public static setActiveConfig(Landroid/os/IBinder;I)Z
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "id"    # I

    .prologue
    .line 642
    if-nez p0, :cond_0

    .line 643
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_0
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetActiveConfig(Landroid/os/IBinder;I)Z

    move-result v0

    return v0
.end method

.method public static setAnimationTransaction()V
    .locals 0

    .prologue
    .line 397
    invoke-static {}, Landroid/view/SurfaceControl;->nativeSetAnimationTransaction()V

    .line 398
    return-void
.end method

.method public static setDisplayLayerStack(Landroid/os/IBinder;I)V
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "layerStack"    # I

    .prologue
    .line 676
    if-nez p0, :cond_0

    .line 677
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_0
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetDisplayLayerStack(Landroid/os/IBinder;I)V

    .line 680
    return-void
.end method

.method public static setDisplayPowerMode(Landroid/os/IBinder;I)V
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "mode"    # I

    .prologue
    .line 621
    if-nez p0, :cond_0

    .line 622
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_0
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->nativeSetDisplayPowerMode(Landroid/os/IBinder;I)V

    .line 625
    return-void
.end method

.method public static setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 10
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "orientation"    # I
    .param p2, "layerStackRect"    # Landroid/graphics/Rect;
    .param p3, "displayRect"    # Landroid/graphics/Rect;

    .prologue
    .line 661
    if-nez p0, :cond_0

    .line 662
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_0
    if-nez p2, :cond_1

    .line 665
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "layerStackRect must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    :cond_1
    if-nez p3, :cond_2

    .line 668
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayRect must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 670
    :cond_2
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    iget v6, p3, Landroid/graphics/Rect;->left:I

    iget v7, p3, Landroid/graphics/Rect;->top:I

    iget v8, p3, Landroid/graphics/Rect;->right:I

    iget v9, p3, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v9}, Landroid/view/SurfaceControl;->nativeSetDisplayProjection(Landroid/os/IBinder;IIIIIIIII)V

    .line 673
    return-void
.end method

.method public static setDisplaySize(Landroid/os/IBinder;II)V
    .locals 2
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 697
    if-nez p0, :cond_0

    .line 698
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_0
    if-lez p1, :cond_1

    if-gtz p2, :cond_2

    .line 701
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width and height must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_2
    invoke-static {p0, p1, p2}, Landroid/view/SurfaceControl;->nativeSetDisplaySize(Landroid/os/IBinder;II)V

    .line 705
    return-void
.end method

.method public static setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)V
    .locals 4
    .param p0, "displayToken"    # Landroid/os/IBinder;
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 683
    if-nez p0, :cond_0

    .line 684
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :cond_0
    if-eqz p1, :cond_1

    .line 688
    iget-object v1, p1, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 689
    :try_start_0
    iget-wide v2, p1, Landroid/view/Surface;->mNativeObject:J

    invoke-static {p0, v2, v3}, Landroid/view/SurfaceControl;->nativeSetDisplaySurface(Landroid/os/IBinder;J)V

    .line 690
    monitor-exit v1

    .line 694
    :goto_0
    return-void

    .line 690
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 692
    :cond_1
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/SurfaceControl;->nativeSetDisplaySurface(Landroid/os/IBinder;J)V

    goto :goto_0
.end method

.method private static switchToSinlehandRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .param p0, "sourceCrop"    # Landroid/graphics/Rect;

    .prologue
    .line 779
    const-string v5, "sys.globalsinglehand.enable"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 780
    .local v0, "enable":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 781
    if-eqz p0, :cond_0

    iget v5, p0, Landroid/graphics/Rect;->left:I

    if-nez v5, :cond_0

    iget v5, p0, Landroid/graphics/Rect;->top:I

    if-nez v5, :cond_0

    iget v5, p0, Landroid/graphics/Rect;->right:I

    if-nez v5, :cond_0

    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    if-nez v5, :cond_0

    .line 783
    const/16 v5, 0x438

    iput v5, p0, Landroid/graphics/Rect;->right:I

    .line 784
    const/16 v5, 0x780

    iput v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 787
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 788
    .local v1, "mAm":Landroid/app/IActivityManager;
    invoke-interface {v1}, Landroid/app/IActivityManager;->getGlobalTransform()Landroid/view/animation/Transformation;

    move-result-object v2

    .line 789
    .local v2, "mTransformation":Landroid/view/animation/Transformation;
    if-eqz v2, :cond_1

    .line 790
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 791
    .local v4, "rectF":Landroid/graphics/RectF;
    invoke-virtual {v4, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 792
    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 793
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 794
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    move-object p0, v3

    .line 804
    .end local v1    # "mAm":Landroid/app/IActivityManager;
    .end local v2    # "mTransformation":Landroid/view/animation/Transformation;
    .end local v3    # "rect":Landroid/graphics/Rect;
    .end local v4    # "rectF":Landroid/graphics/RectF;
    :cond_1
    :goto_0
    const-string v5, "SurfaceControl"

    invoke-virtual {p0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    return-object p0

    .line 801
    :catch_0
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method public clearContentFrameStats()Z
    .locals 2

    .prologue
    .line 449
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 450
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeClearContentFrameStats(J)Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 368
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 369
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeDestroy(J)V

    .line 370
    iput-wide v2, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 372
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 373
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 333
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 336
    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 337
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeRelease(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 342
    return-void

    .line 340
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getContentFrameStats(Landroid/view/WindowContentFrameStats;)Z
    .locals 2
    .param p1, "outStats"    # Landroid/view/WindowContentFrameStats;

    .prologue
    .line 454
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 455
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeGetContentFrameStats(JLandroid/view/WindowContentFrameStats;)Z

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 434
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 435
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v2, v2}, Landroid/view/SurfaceControl;->nativeSetFlags(JII)V

    .line 436
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 355
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 356
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->nativeRelease(J)V

    .line 357
    iput-wide v2, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    .line 359
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceControl;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 360
    return-void
.end method

.method public setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 471
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 472
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeSetAlpha(JF)V

    .line 473
    return-void
.end method

.method public setFlagsEx(II)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 482
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 483
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->nativeSetFlagsEx(JII)V

    .line 484
    return-void
.end method

.method public setLayer(I)V
    .locals 2
    .param p1, "zorder"    # I

    .prologue
    .line 401
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 402
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeSetLayer(JI)V

    .line 403
    return-void
.end method

.method public setLayerBlurBackgroundAlpha_lenovo(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 418
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 419
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeSetLayerBlurBackgroundAlpha_lenovo(JI)V

    .line 420
    return-void
.end method

.method public setLayerBlurBackgroundFlag_lenovo(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 410
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 411
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeSetLayerBlurBackgroundFlag_lenovo(JI)V

    .line 412
    return-void
.end method

.method public setLayerStack(I)V
    .locals 2
    .param p1, "layerStack"    # I

    .prologue
    .line 497
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 498
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeSetLayerStack(JI)V

    .line 499
    return-void
.end method

.method public setMatrix(FFFF)V
    .locals 6
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dsdy"    # F
    .param p4, "dtdy"    # F

    .prologue
    .line 476
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 477
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->nativeSetMatrix(JFFFF)V

    .line 478
    return-void
.end method

.method public setOpaque(Z)V
    .locals 4
    .param p1, "isOpaque"    # Z

    .prologue
    const/4 v3, 0x2

    .line 506
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 507
    if-eqz p1, :cond_0

    .line 508
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, v3, v3}, Landroid/view/SurfaceControl;->nativeSetFlags(JII)V

    .line 512
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->nativeSetFlags(JII)V

    goto :goto_0
.end method

.method public setPosition(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 424
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 425
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->nativeSetPosition(JFF)V

    .line 426
    return-void
.end method

.method public setSize(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 429
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 430
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->nativeSetSize(JII)V

    .line 431
    return-void
.end method

.method public setTransparentRegionHint(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 444
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 445
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->nativeSetTransparentRegionHint(JLandroid/graphics/Region;)V

    .line 446
    return-void
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 487
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 488
    if-eqz p1, :cond_0

    .line 489
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->nativeSetWindowCrop(JIIII)V

    .line 494
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->nativeSetWindowCrop(JIIII)V

    goto :goto_0
.end method

.method public show()V
    .locals 4

    .prologue
    .line 439
    invoke-direct {p0}, Landroid/view/SurfaceControl;->checkNotReleased()V

    .line 440
    iget-wide v0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->nativeSetFlags(JII)V

    .line 441
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/SurfaceControl;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
