.class final Lcom/android/server/display/DisplayDeviceInfo;
.super Ljava/lang/Object;
.source "DisplayDeviceInfo.java"


# static fields
.field public static final EXTRA_TYPE_HDMI_MHL:I = 0x1

.field public static final EXTRA_TYPE_LCM:I = 0x0

.field public static final EXTRA_TYPE_SMARTBOOK:I = 0x2

.field public static final FLAG_DEFAULT_DISPLAY:I = 0x1

.field public static final FLAG_NEVER_BLANK:I = 0x20

.field public static final FLAG_OWN_CONTENT_ONLY:I = 0x80

.field public static final FLAG_PRESENTATION:I = 0x40

.field public static final FLAG_PRIVATE:I = 0x10

.field public static final FLAG_ROTATES_WITH_CONTENT:I = 0x2

.field public static final FLAG_SECURE:I = 0x4

.field public static final FLAG_SUPPORTS_PROTECTED_BUFFERS:I = 0x8

.field public static final TOUCH_EXTERNAL:I = 0x2

.field public static final TOUCH_INTERNAL:I = 0x1

.field public static final TOUCH_NONE:I


# instance fields
.field public address:Ljava/lang/String;

.field public appVsyncOffsetNanos:J

.field public densityDpi:I

.field public flags:I

.field public height:I

.field public name:Ljava/lang/String;

.field public ownerPackageName:Ljava/lang/String;

.field public ownerUid:I

.field public presentationDeadlineNanos:J

.field public refreshRate:F

.field public rotation:I

.field public state:I

.field public subtype:I

.field public supportedRefreshRates:[F

.field public touch:I

.field public type:I

.field public uniqueId:Ljava/lang/String;

.field public width:I

.field public xDpi:F

.field public yDpi:F


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    sget-object v0, Llibcore/util/EmptyArray;->FLOAT:[F

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedRefreshRates:[F

    .line 204
    iput v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 218
    iput v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->subtype:I

    .line 222
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    return-void
.end method

.method private static flagsToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "flags"    # I

    .prologue
    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .local v0, "msg":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 350
    const-string v1, ", FLAG_DEFAULT_DISPLAY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 353
    const-string v1, ", FLAG_ROTATES_WITH_CONTENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 356
    const-string v1, ", FLAG_SECURE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 359
    const-string v1, ", FLAG_SUPPORTS_PROTECTED_BUFFERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    .line 362
    const-string v1, ", FLAG_PRIVATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_4
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_5

    .line 365
    const-string v1, ", FLAG_NEVER_BLANK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :cond_5
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_6

    .line 368
    const-string v1, ", FLAG_PRESENTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_6
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_7

    .line 371
    const-string v1, ", FLAG_OWN_CONTENT_ONLY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static touchToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "touch"    # I

    .prologue
    .line 335
    packed-switch p0, :pswitch_data_0

    .line 343
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 337
    :pswitch_0
    const-string v0, "NONE"

    goto :goto_0

    .line 339
    :pswitch_1
    const-string v0, "INTERNAL"

    goto :goto_0

    .line 341
    :pswitch_2
    const-string v0, "EXTERNAL"

    goto :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/display/DisplayDeviceInfo;)V
    .locals 2
    .param p1, "other"    # Lcom/android/server/display/DisplayDeviceInfo;

    .prologue
    .line 283
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 284
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 285
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 286
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 287
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    .line 288
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->supportedRefreshRates:[F

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedRefreshRates:[F

    .line 289
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 290
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 291
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 292
    iget-wide v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    .line 293
    iget-wide v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 294
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 295
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 296
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 297
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 298
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    .line 299
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 300
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    .line 301
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public equals(Lcom/android/server/display/DisplayDeviceInfo;)Z
    .locals 4
    .param p1, "other"    # Lcom/android/server/display/DisplayDeviceInfo;

    .prologue
    .line 255
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedRefreshRates:[F

    iget-object v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->supportedRefreshRates:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    iget-wide v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    iget-wide v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    iget v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 251
    instance-of v0, p1, Lcom/android/server/display/DisplayDeviceInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/display/DisplayDeviceInfo;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceInfo;->equals(Lcom/android/server/display/DisplayDeviceInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public setAssumedDensityForExternalDisplay(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 242
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x140

    div-int/lit16 v0, v0, 0x438

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 245
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 246
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 247
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "DisplayDeviceInfo{\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\": uniqueId=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string v1, ", supportedRefreshRates "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->supportedRefreshRates:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v1, ", density "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 314
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dpi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string v1, ", appVsyncOff "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 316
    const-string v1, ", presDeadline "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 317
    const-string v1, ", touch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    invoke-static {v2}, Lcom/android/server/display/DisplayDeviceInfo;->touchToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string v1, ", rotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
    const-string v1, ", type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    invoke-static {v2}, Landroid/view/Display;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 321
    const-string v1, ", address "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_0
    const-string v1, ", state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string v1, ", subtype "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->subtype:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 326
    :cond_1
    const-string v1, ", owner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string v1, " (uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_2
    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    invoke-static {v1}, Lcom/android/server/display/DisplayDeviceInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
