.class public Lcom/lenovo/fingerprint/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
.implements Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
.implements Lcom/fingerprints/service/FingerprintManager$EnrolCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;,
        Lcom/lenovo/fingerprint/FingerprintManager$EnrolListener;
    }
.end annotation


# static fields
.field public static CMD_RESULT_FAIL:I = 0x0

.field public static CMD_RESULT_OK:I = 0x0

.field private static final DEBUG:Z = true

.field public static final FEEDBACK_GOOD:I = 0x2

.field public static final FEEDBACK_LOW_SENSOR:I = 0x5

.field public static final FEEDBACK_OUTSIDE:I = 0x1

.field public static final FEEDBACK_POOR_IMAGE:I = 0x4

.field public static final FEEDBACK_SIMILAR:I = 0x3

.field public static final FEEDBACK_TOUCH_DUPLICATE:I = 0x7

.field public static final FEEDBACK_TOUCH_REJECTED:I = 0x6

.field private static final FP_NAME_FREFIX:Ljava/lang/String; = "lenovofpid"

.field public static final MAX_FINGER:I = 0x5

.field public static final RESULT_CANCELED:I = 0x66

.field public static final RESULT_ENROLL_DUPLICATE:I = 0x76

.field public static final RESULT_ENROL_IMAGE_POOR:I = 0x75

.field public static final RESULT_FAILURE:I = 0x65

.field public static final RESULT_NOT_ENABLED:I = 0x73

.field public static final RESULT_NOT_REGISTERED_FINGERPRINT:I = 0x70

.field public static final RESULT_NOT_SUPPORT:I = 0x6f

.field public static final RESULT_NO_MATCH:I = 0x67

.field public static final RESULT_SENSOR_ERROR:I = 0x74

.field public static final RESULT_SUCCESS:I = 0x64

.field public static final RESULT_TIMEOUT:I = 0x71

.field public static final STATUS_FINGER_DOWN:I = 0x4

.field public static final STATUS_FINGER_UP:I = 0x5

.field public static final STATUS_INPUTTING:I = 0x2

.field public static final STATUS_INPUT_COMPLETED:I = 0x3

.field public static final STATUS_WAITING_INPUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LenovoFingerprint_FingerprintManager"

.field public static final UNLOCK_MAX_ATTEMPTS:I = 0x1

.field public static final USER_ID:I = 0x0

.field public static final USER_NAME:Ljava/lang/String; = "lenovo"

.field private static sInstance:Lcom/lenovo/fingerprint/FingerprintManager;


# instance fields
.field private mAttempts:I

.field private mContext:Landroid/content/Context;

.field private mEnrolListener:Lcom/lenovo/fingerprint/FingerprintManager$EnrolListener;

.field private mEnrollingIndex:I

.field private mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

.field private mIdentified:Z

.field private mIdentifyListener:Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;

.field private mIds:[I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mUserData:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/fingerprint/FingerprintManager;->CMD_RESULT_OK:I

    .line 37
    const/4 v0, -0x1

    sput v0, Lcom/lenovo/fingerprint/FingerprintManager;->CMD_RESULT_FAIL:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mUserData:I

    .line 33
    iput v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mEnrollingIndex:I

    .line 126
    iput-object p1, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 128
    invoke-direct {p0}, Lcom/lenovo/fingerprint/FingerprintManager;->nativeOpen()V

    .line 130
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mPowerManager:Landroid/os/PowerManager;

    .line 132
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string v1, "new FingerprintManager out."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method private getFeedback(Lcom/fingerprints/service/FingerprintManager$GuidedResult;)I
    .locals 7
    .param p1, "guidedResult"    # Lcom/fingerprints/service/FingerprintManager$GuidedResult;

    .prologue
    const/4 v0, 0x1

    .line 596
    const/4 v5, 0x0

    .line 597
    .local v5, "feedback":I
    iget v6, p1, Lcom/fingerprints/service/FingerprintManager$GuidedResult;->guidedAcceptance:I

    if-ne v6, v0, :cond_0

    .line 598
    .local v0, "bAcceptance":Z
    :goto_0
    iget-boolean v1, p1, Lcom/fingerprints/service/FingerprintManager$GuidedResult;->guidedImmobile:Z

    .line 599
    .local v1, "bImmobile":Z
    iget-object v6, p1, Lcom/fingerprints/service/FingerprintManager$GuidedResult;->guidedRejectReasons:Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;

    iget-boolean v2, v6, Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;->guidedLowCoverage:Z

    .line 600
    .local v2, "bLowCoverage":Z
    iget-object v6, p1, Lcom/fingerprints/service/FingerprintManager$GuidedResult;->guidedRejectReasons:Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;

    iget-boolean v3, v6, Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;->guidedLowQuality:Z

    .line 601
    .local v3, "bLowQuality":Z
    iget-boolean v4, p1, Lcom/fingerprints/service/FingerprintManager$GuidedResult;->guidedStitched:Z

    .line 607
    .local v4, "bStitched":Z
    if-eqz v0, :cond_1

    .line 608
    const/4 v5, 0x2

    .line 621
    :goto_1
    return v5

    .line 597
    .end local v0    # "bAcceptance":Z
    .end local v1    # "bImmobile":Z
    .end local v2    # "bLowCoverage":Z
    .end local v3    # "bLowQuality":Z
    .end local v4    # "bStitched":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 610
    .restart local v0    # "bAcceptance":Z
    .restart local v1    # "bImmobile":Z
    .restart local v2    # "bLowCoverage":Z
    .restart local v3    # "bLowQuality":Z
    .restart local v4    # "bStitched":Z
    :cond_1
    if-eqz v3, :cond_2

    .line 611
    const/4 v5, 0x4

    goto :goto_1

    .line 612
    :cond_2
    if-eqz v2, :cond_3

    .line 613
    const/4 v5, 0x5

    goto :goto_1

    .line 614
    :cond_3
    if-eqz v1, :cond_4

    .line 615
    const/4 v5, 0x3

    goto :goto_1

    .line 617
    :cond_4
    const/4 v5, 0x6

    goto :goto_1
.end method

.method private getNextFingerIndexToEnroll()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 246
    invoke-virtual {p0}, Lcom/lenovo/fingerprint/FingerprintManager;->getFpIndexs()[I

    move-result-object v6

    .line 247
    .local v6, "nativeIds":[I
    if-nez v6, :cond_1

    move v2, v7

    .line 268
    :cond_0
    :goto_0
    return v2

    .line 253
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v6

    if-ge v2, v8, :cond_2

    .line 254
    const-string v8, "LenovoFingerprint_FingerprintManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nativeIds["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v6, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 258
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 259
    .local v1, "fingerIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    move-object v0, v6

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v5, :cond_3

    aget v4, v0, v3

    .line 260
    .local v4, "id":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 263
    .end local v4    # "id":I
    :cond_3
    const/4 v2, 0x0

    :goto_3
    const/4 v8, 0x5

    if-ge v2, v8, :cond_4

    .line 264
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 263
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    move v2, v7

    .line 268
    goto :goto_0
.end method

.method private nativeOpen()V
    .locals 4

    .prologue
    .line 139
    :try_start_0
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->open()Lcom/fingerprints/service/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LenovoFingerprint_FingerprintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FingerprintManager init exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    goto :goto_0
.end method

.method public static open(Landroid/content/Context;)Lcom/lenovo/fingerprint/FingerprintManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string v1, "*******open******"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v0, Lcom/lenovo/fingerprint/FingerprintManager;->sInstance:Lcom/lenovo/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string v1, "lastTime have not realese"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-object v0, Lcom/lenovo/fingerprint/FingerprintManager;->sInstance:Lcom/lenovo/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/lenovo/fingerprint/FingerprintManager;->release()I

    .line 116
    :cond_0
    new-instance v0, Lcom/lenovo/fingerprint/FingerprintManager;

    invoke-direct {v0, p0}, Lcom/lenovo/fingerprint/FingerprintManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/fingerprint/FingerprintManager;->sInstance:Lcom/lenovo/fingerprint/FingerprintManager;

    .line 117
    sget-object v0, Lcom/lenovo/fingerprint/FingerprintManager;->sInstance:Lcom/lenovo/fingerprint/FingerprintManager;

    iget-object v0, v0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-nez v0, :cond_1

    .line 118
    const/4 v0, 0x0

    .line 122
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/lenovo/fingerprint/FingerprintManager;->sInstance:Lcom/lenovo/fingerprint/FingerprintManager;

    goto :goto_0
.end method


# virtual methods
.method public cancel()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 183
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string v1, "*******cancel******"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/fingerprints/service/FingerprintManager;->release()V

    .line 187
    iput-object v2, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    .line 188
    sput-object v2, Lcom/lenovo/fingerprint/FingerprintManager;->sInstance:Lcom/lenovo/fingerprint/FingerprintManager;

    .line 190
    iget-boolean v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mIdentified:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mAttempts:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;

    const/16 v1, 0x66

    const/4 v2, 0x0

    iget v3, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mUserData:I

    invoke-interface {v0, v1, v2, v3}, Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;->onResult(III)V

    .line 194
    :cond_0
    sget v0, Lcom/lenovo/fingerprint/FingerprintManager;->CMD_RESULT_OK:I

    return v0
.end method

.method public deleteFP(I)I
    .locals 3
    .param p1, "fingerprintId"    # I

    .prologue
    .line 388
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v0, p1}, Lcom/fingerprints/service/FingerprintManager;->deleteFingerData(I)V

    .line 390
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lenovofpid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 393
    sget v0, Lcom/lenovo/fingerprint/FingerprintManager;->CMD_RESULT_OK:I

    .line 396
    :goto_0
    return v0

    .line 395
    :cond_0
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string v1, "FingerprintManager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    sget v0, Lcom/lenovo/fingerprint/FingerprintManager;->CMD_RESULT_FAIL:I

    goto :goto_0
.end method

.method public getFpIDs()[I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 304
    const-string v2, "LenovoFingerprint_FingerprintManager"

    const-string v3, "getFpIDs"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v2, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-nez v2, :cond_0

    .line 307
    const-string v2, "LenovoFingerprint_FingerprintManager"

    const-string v3, "FingerprintManager didn\'t open yet! try again."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-direct {p0}, Lcom/lenovo/fingerprint/FingerprintManager;->nativeOpen()V

    .line 309
    iget-object v2, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-nez v2, :cond_0

    .line 310
    const-string v2, "LenovoFingerprint_FingerprintManager"

    const-string v3, "open failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 327
    :goto_0
    return-object v0

    .line 314
    :cond_0
    iget-object v2, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-eqz v2, :cond_3

    .line 316
    iget-object v2, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v2}, Lcom/fingerprints/service/FingerprintManager;->getNativeIds()[I

    move-result-object v0

    .line 317
    .local v0, "ids":[I
    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_2

    .line 318
    :cond_1
    const-string v2, "LenovoFingerprint_FingerprintManager"

    const-string v3, "getIds return NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 321
    goto :goto_0

    .line 323
    :cond_2
    iput-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mIds:[I

    goto :goto_0

    .end local v0    # "ids":[I
    :cond_3
    move-object v0, v1

    .line 327
    goto :goto_0
.end method

.method public getFpIndexs()[I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 332
    const-string v2, "LenovoFingerprint_FingerprintManager"

    const-string v3, "getFpIndexs"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v2, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-nez v2, :cond_0

    .line 335
    const-string v2, "LenovoFingerprint_FingerprintManager"

    const-string v3, "FingerprintManager didn\'t open yet! try again."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-direct {p0}, Lcom/lenovo/fingerprint/FingerprintManager;->nativeOpen()V

    .line 337
    iget-object v2, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-nez v2, :cond_0

    .line 338
    const-string v2, "LenovoFingerprint_FingerprintManager"

    const-string v3, "open failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 354
    :goto_0
    return-object v0

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-eqz v2, :cond_3

    .line 343
    iget-object v2, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v2}, Lcom/fingerprints/service/FingerprintManager;->getIds()[I

    move-result-object v0

    .line 344
    .local v0, "ids":[I
    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_2

    .line 345
    :cond_1
    const-string v2, "LenovoFingerprint_FingerprintManager"

    const-string v3, "getIds return NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 348
    goto :goto_0

    .line 350
    :cond_2
    iput-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mIds:[I

    goto :goto_0

    .end local v0    # "ids":[I
    :cond_3
    move-object v0, v1

    .line 354
    goto :goto_0
.end method

.method public getFpName(I)Ljava/lang/String;
    .locals 3
    .param p1, "fingerprintId"    # I

    .prologue
    .line 362
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lenovofpid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lenovofpid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCaptureCompleted()V
    .locals 3

    .prologue
    .line 518
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string v1, "onCaptureCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;

    const/4 v1, 0x3

    iget v2, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mUserData:I

    invoke-interface {v0, v1, v2}, Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;->onStatus(II)V

    .line 523
    :cond_0
    return-void
.end method

.method public onCaptureFailed(I)V
    .locals 5
    .param p1, "arg0"    # I

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 529
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string v1, "onCaptureFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mEnrolListener:Lcom/lenovo/fingerprint/FingerprintManager$EnrolListener;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mEnrolListener:Lcom/lenovo/fingerprint/FingerprintManager$EnrolListener;

    iget v1, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mUserData:I

    invoke-interface {v0, v2, v1, v2}, Lcom/lenovo/fingerprint/FingerprintManager$EnrolListener;->onProgress(IIZ)V

    .line 534
    if-ne p1, v4, :cond_1

    .line 535
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mEnrolListener:Lcom/lenovo/fingerprint/FingerprintManager$EnrolListener;

    iget v1, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mUserData:I

    invoke-interface {v0, v3, v1, v4}, Lcom/lenovo/fingerprint/FingerprintManager$EnrolListener;->onStatus(III)V

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mEnrolListener:Lcom/lenovo/fingerprint/FingerprintManager$EnrolListener;

    iget v1, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mUserData:I

    const/4 v2, 0x4

    invoke-interface {v0, v3, v1, v2}, Lcom/lenovo/fingerprint/FingerprintManager$EnrolListener;->onStatus(III)V

    goto :goto_0
.end method

.method public onEnrolled(I)V
    .locals 3
    .param p1, "who"    # I

    .prologue
    .line 579
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mEnrolListener:Lcom/lenovo/fingerprint/FingerprintManager$EnrolListener;

    const/16 v1, 0x64

    iget v2, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mUserData:I

    invoke-interface {v0, v1, p1, v2}, Lcom/lenovo/fingerprint/FingerprintManager$EnrolListener;->onResult(III)V

    .line 580
    return-void
.end method

.method public onEnrollmentFailed()V
    .locals 4

    .prologue
    .line 584
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mEnrolListener:Lcom/lenovo/fingerprint/FingerprintManager$EnrolListener;

    const/16 v1, 0x65

    iget v2, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mEnrollingIndex:I

    iget v3, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mUserData:I

    invoke-interface {v0, v1, v2, v3}, Lcom/lenovo/fingerprint/FingerprintManager$EnrolListener;->onResult(III)V

    .line 585
    return-void
.end method

.method public onIdentified(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "updated"    # Z

    .prologue
    .line 484
    const-string v0, "LenovoFingerprint_FingerprintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIdentified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mIdentified:Z

    .line 489
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;

    const/16 v1, 0x64

    iget v2, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mUserData:I

    invoke-interface {v0, v1, p1, v2}, Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;->onResult(III)V

    .line 490
    return-void
.end method

.method public onInput()V
    .locals 4

    .prologue
    .line 547
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string v1, "onInput"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;

    const/4 v1, 0x2

    iget v2, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mUserData:I

    invoke-interface {v0, v1, v2}, Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;->onStatus(II)V

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mEnrolListener:Lcom/lenovo/fingerprint/FingerprintManager$EnrolListener;

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mEnrolListener:Lcom/lenovo/fingerprint/FingerprintManager$EnrolListener;

    const/4 v1, 0x4

    iget v2, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mUserData:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/lenovo/fingerprint/FingerprintManager$EnrolListener;->onStatus(III)V

    .line 558
    :cond_1
    return-void
.end method

.method public onNoMatch()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 496
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string v1, "onNoMatch"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mAttempts:I

    .line 499
    iget v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mAttempts:I

    if-ge v0, v4, :cond_1

    .line 500
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;

    const/4 v1, 0x2

    iget v2, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mUserData:I

    invoke-interface {v0, v1, v2}, Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;->onStatus(II)V

    .line 501
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    iget-object v1, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mIds:[I

    invoke-virtual {v0, p0, v1, v4}, Lcom/fingerprints/service/FingerprintManager;->startIdentify(Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;[IZ)V

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;

    const/16 v1, 0x67

    const/4 v2, 0x0

    iget v3, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mUserData:I

    invoke-interface {v0, v1, v2, v3}, Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;->onResult(III)V

    .line 508
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    iget-object v1, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mIds:[I

    invoke-virtual {v0, p0, v1, v4}, Lcom/fingerprints/service/FingerprintManager;->startIdentify(Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;[IZ)V

    goto :goto_0
.end method

.method public onProgress(Lcom/fingerprints/service/FingerprintManager$GuidedData;)V
    .locals 5
    .param p1, "guidedData"    # Lcom/fingerprints/service/FingerprintManager$GuidedData;

    .prologue
    const/4 v0, 0x1

    .line 590
    iget-object v1, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mEnrolListener:Lcom/lenovo/fingerprint/FingerprintManager$EnrolListener;

    iget v2, p1, Lcom/fingerprints/service/FingerprintManager$GuidedData;->guidedProgress:I

    iget v3, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mUserData:I

    iget-object v4, p1, Lcom/fingerprints/service/FingerprintManager$GuidedData;->guidedResult:Lcom/fingerprints/service/FingerprintManager$GuidedResult;

    iget v4, v4, Lcom/fingerprints/service/FingerprintManager$GuidedResult;->guidedAcceptance:I

    if-ne v4, v0, :cond_0

    :goto_0
    invoke-interface {v1, v2, v3, v0}, Lcom/lenovo/fingerprint/FingerprintManager$EnrolListener;->onProgress(IIZ)V

    .line 592
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mEnrolListener:Lcom/lenovo/fingerprint/FingerprintManager$EnrolListener;

    const/4 v1, 0x2

    iget v2, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mUserData:I

    iget-object v3, p1, Lcom/fingerprints/service/FingerprintManager$GuidedData;->guidedResult:Lcom/fingerprints/service/FingerprintManager$GuidedResult;

    invoke-direct {p0, v3}, Lcom/lenovo/fingerprint/FingerprintManager;->getFeedback(Lcom/fingerprints/service/FingerprintManager$GuidedResult;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/lenovo/fingerprint/FingerprintManager$EnrolListener;->onStatus(III)V

    .line 593
    return-void

    .line 590
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWaitingForInput()V
    .locals 4

    .prologue
    .line 564
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string v1, "onWaitingForInput"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;

    const/4 v1, 0x1

    iget v2, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mUserData:I

    invoke-interface {v0, v1, v2}, Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;->onStatus(II)V

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mEnrolListener:Lcom/lenovo/fingerprint/FingerprintManager$EnrolListener;

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mEnrolListener:Lcom/lenovo/fingerprint/FingerprintManager$EnrolListener;

    const/4 v1, 0x5

    iget v2, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mUserData:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/lenovo/fingerprint/FingerprintManager$EnrolListener;->onStatus(III)V

    .line 575
    :cond_1
    return-void
.end method

.method public release()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 166
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string v1, "*******release******"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/fingerprints/service/FingerprintManager;->release()V

    .line 170
    sput-object v2, Lcom/lenovo/fingerprint/FingerprintManager;->sInstance:Lcom/lenovo/fingerprint/FingerprintManager;

    .line 171
    iput-object v2, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    .line 175
    :goto_0
    sget v0, Lcom/lenovo/fingerprint/FingerprintManager;->CMD_RESULT_OK:I

    return v0

    .line 173
    :cond_0
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string v1, "FingerprintManager already null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startEnrol(Lcom/lenovo/fingerprint/FingerprintManager$EnrolListener;Ljava/lang/String;JI)I
    .locals 2
    .param p1, "enrolListener"    # Lcom/lenovo/fingerprint/FingerprintManager$EnrolListener;
    .param p2, "fingerprintName"    # Ljava/lang/String;
    .param p3, "timeout"    # J
    .param p5, "userData"    # I

    .prologue
    .line 211
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string v1, "startEnrol"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iput-object p1, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mEnrolListener:Lcom/lenovo/fingerprint/FingerprintManager$EnrolListener;

    .line 214
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mEnrolListener:Lcom/lenovo/fingerprint/FingerprintManager$EnrolListener;

    if-nez v0, :cond_0

    .line 215
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string v1, "EnrolListener is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sget v0, Lcom/lenovo/fingerprint/FingerprintManager;->CMD_RESULT_FAIL:I

    .line 233
    :goto_0
    return v0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-nez v0, :cond_1

    .line 220
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string v1, "FingerprintManager didn\'t open yet! try again."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-direct {p0}, Lcom/lenovo/fingerprint/FingerprintManager;->nativeOpen()V

    .line 222
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-nez v0, :cond_1

    .line 223
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string v1, "open failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    sget v0, Lcom/lenovo/fingerprint/FingerprintManager;->CMD_RESULT_FAIL:I

    goto :goto_0

    .line 228
    :cond_1
    iput p5, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mUserData:I

    .line 229
    invoke-direct {p0}, Lcom/lenovo/fingerprint/FingerprintManager;->getNextFingerIndexToEnroll()I

    move-result v0

    iput v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mEnrollingIndex:I

    .line 230
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v0, p0}, Lcom/fingerprints/service/FingerprintManager;->setCaptureCallback(Lcom/fingerprints/service/FingerprintManager$CaptureCallback;)V

    .line 231
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    iget v1, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mEnrollingIndex:I

    invoke-virtual {v0, p0, v1}, Lcom/fingerprints/service/FingerprintManager;->startEnrol(Lcom/fingerprints/service/FingerprintManager$EnrolCallback;I)V

    .line 233
    sget v0, Lcom/lenovo/fingerprint/FingerprintManager;->CMD_RESULT_OK:I

    goto :goto_0
.end method

.method public startFpManager(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 470
    const-string v1, "LenovoFingerprint_FingerprintManager"

    const-string v2, "starFpManager"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 473
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.lenovo.lenovofingerprintsettings"

    const-string v2, "com.lenovo.lenovofingerprintsettings.FingerprintManagerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 476
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 477
    sget v1, Lcom/lenovo/fingerprint/FingerprintManager;->CMD_RESULT_OK:I

    return v1
.end method

.method public startIdentify(Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;J[II)I
    .locals 9
    .param p1, "identifyListener"    # Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;
    .param p2, "timeout"    # J
    .param p4, "ids"    # [I
    .param p5, "userData"    # I

    .prologue
    const/4 v8, 0x0

    .line 415
    const-string v4, "LenovoFingerprint_FingerprintManager"

    const-string v5, "startFpIdentify"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iput-object p1, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;

    .line 418
    iget-object v4, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;

    if-nez v4, :cond_0

    .line 419
    const-string v4, "LenovoFingerprint_FingerprintManager"

    const-string v5, "IdentifyListener is NULL!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    sget v4, Lcom/lenovo/fingerprint/FingerprintManager;->CMD_RESULT_FAIL:I

    .line 461
    :goto_0
    return v4

    .line 423
    :cond_0
    if-nez p4, :cond_1

    .line 424
    const-string v4, "LenovoFingerprint_FingerprintManager"

    const-string v5, "ids is NULL!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v4, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;

    const/16 v5, 0x70

    iget v6, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mUserData:I

    invoke-interface {v4, v5, v8, v6}, Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;->onResult(III)V

    .line 427
    sget v4, Lcom/lenovo/fingerprint/FingerprintManager;->CMD_RESULT_FAIL:I

    goto :goto_0

    .line 430
    :cond_1
    iput p5, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mUserData:I

    .line 431
    iput v8, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mAttempts:I

    .line 433
    :try_start_0
    const-string v4, "android.os.ServiceManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 435
    .local v3, "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getService"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 437
    .local v1, "getService":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "fingerprints_service"

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 439
    .local v2, "ib":Landroid/os/IBinder;
    if-nez v2, :cond_2

    .line 440
    const-string v4, "LenovoFingerprint_FingerprintManager"

    const-string v5, "test fingerprints_service error NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v4, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;

    const/16 v5, 0x73

    const/4 v6, 0x0

    iget v7, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mUserData:I

    invoke-interface {v4, v5, v6, v7}, Lcom/lenovo/fingerprint/FingerprintManager$IdentifyListener;->onResult(III)V

    .line 443
    sget v4, Lcom/lenovo/fingerprint/FingerprintManager;->CMD_RESULT_FAIL:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 445
    .end local v1    # "getService":Ljava/lang/reflect/Method;
    .end local v2    # "ib":Landroid/os/IBinder;
    .end local v3    # "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 447
    const-string v4, "LenovoFingerprint_FingerprintManager"

    const-string v5, "test fingerprints_service error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v4, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-nez v4, :cond_3

    .line 451
    const-string v4, "LenovoFingerprint_FingerprintManager"

    const-string v5, "FingerprintManager didn\'t open yet! try again."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-direct {p0}, Lcom/lenovo/fingerprint/FingerprintManager;->nativeOpen()V

    .line 453
    iget-object v4, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    if-nez v4, :cond_3

    .line 454
    const-string v4, "LenovoFingerprint_FingerprintManager"

    const-string v5, "open failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    sget v4, Lcom/lenovo/fingerprint/FingerprintManager;->CMD_RESULT_FAIL:I

    goto :goto_0

    .line 459
    :cond_3
    iget-object v4, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v4, p0}, Lcom/fingerprints/service/FingerprintManager;->setCaptureCallback(Lcom/fingerprints/service/FingerprintManager$CaptureCallback;)V

    .line 460
    iget-object v4, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mFingerprintManager:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v4, p0, p4, v8}, Lcom/fingerprints/service/FingerprintManager;->startIdentify(Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;[IZ)V

    .line 461
    sget v4, Lcom/lenovo/fingerprint/FingerprintManager;->CMD_RESULT_OK:I

    goto/16 :goto_0
.end method

.method public updateFpName(ILjava/lang/String;)I
    .locals 3
    .param p1, "fingerprintId"    # I
    .param p2, "fingerprintName"    # Ljava/lang/String;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/lenovo/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lenovofpid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 381
    sget v0, Lcom/lenovo/fingerprint/FingerprintManager;->CMD_RESULT_OK:I

    return v0
.end method
