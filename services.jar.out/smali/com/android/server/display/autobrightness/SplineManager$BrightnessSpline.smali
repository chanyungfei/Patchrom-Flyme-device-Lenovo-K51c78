.class Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;
.super Ljava/lang/Object;
.source "SplineManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/autobrightness/SplineManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessSpline"
.end annotation


# instance fields
.field private mScreenAutoBrightnessSpline:Landroid/util/Spline;

.field private mSplineType:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

.field final synthetic this$0:Lcom/android/server/display/autobrightness/SplineManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/autobrightness/SplineManager;Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;[I[I)V
    .locals 1
    .param p2, "splineType"    # Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;
    .param p3, "lux"    # [I
    .param p4, "brightness"    # [I

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;->this$0:Lcom/android/server/display/autobrightness/SplineManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p2, p0, Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;->mSplineType:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    .line 297
    invoke-direct {p0, p3, p4}, Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;->createAutoBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    .line 298
    return-void
.end method

.method private clampAbsoluteBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 364
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private createAutoBrightnessSpline([I[I)Landroid/util/Spline;
    .locals 8
    .param p1, "lux"    # [I
    .param p2, "brightness"    # [I

    .prologue
    .line 335
    :try_start_0
    array-length v2, p2

    .line 336
    .local v2, "n":I
    new-array v4, v2, [F

    .line 337
    .local v4, "x":[F
    new-array v5, v2, [F

    .line 338
    .local v5, "y":[F
    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v7, p2, v7

    invoke-direct {p0, v7}, Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;->normalizeAbsoluteBrightness(I)F

    move-result v7

    aput v7, v5, v6

    .line 339
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 340
    add-int/lit8 v6, v1, -0x1

    aget v6, p1, v6

    int-to-float v6, v6

    aput v6, v4, v1

    .line 341
    aget v6, p2, v1

    invoke-direct {p0, v6}, Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;->normalizeAbsoluteBrightness(I)F

    move-result v6

    aput v6, v5, v1

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    :cond_0
    invoke-static {v4, v5}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 355
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v4    # "x":[F
    .end local v5    # "y":[F
    :goto_1
    return-object v3

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v6, "AutoBrightnessLenovo.SplineManager"

    const-string v7, "Could not create auto-brightness spline."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private normalizeAbsoluteBrightness(I)F
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;->clampAbsoluteBrightness(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getSplineName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;->mSplineType:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    invoke-virtual {v0}, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSplineType()Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;->mSplineType:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    return-object v0
.end method

.method public interpolate(F)F
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;->mSplineType:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    invoke-virtual {v1}, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
