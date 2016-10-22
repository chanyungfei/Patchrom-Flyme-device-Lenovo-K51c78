.class public Lcom/alipay/android/fingerprint/LenovoFingerprintManager;
.super Ljava/lang/Object;
.source "LenovoFingerprintManager.java"

# interfaces
.implements Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;
.implements Lcom/alipay/android/fingerprint/FPCFingerprintManager$IdentifyCallback;
.implements Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/fingerprint/LenovoFingerprintManager$WorkThreadHandler;,
        Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;,
        Lcom/alipay/android/fingerprint/LenovoFingerprintManager$EnrolListener;
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

.field public static final FEEDBACK_TOUCH_REJECTED:I = 0x6

.field private static final FP_NAME_FREFIX:Ljava/lang/String; = "lenovofpid"

.field public static final MAX_FINGER:I = 0x3

.field private static final MSG_DELAY_TIMEOUT:I = 0x68

.field private static final MSG_HANDLER_QUIT:I = 0x67

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

.field private static sInstance:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;


# instance fields
.field private mAttempts:I

.field private mContext:Landroid/content/Context;

.field private mEnrolListener:Lcom/alipay/android/fingerprint/LenovoFingerprintManager$EnrolListener;

.field private mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIdentified:Z

.field private mIdentifyListener:Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;

.field private mIds:[I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mUserData:I

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->CMD_RESULT_OK:I

    .line 52
    const/4 v0, -0x1

    sput v0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->CMD_RESULT_FAIL:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mUserData:I

    .line 141
    iput-object p1, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mContext:Landroid/content/Context;

    .line 143
    invoke-direct {p0}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->nativeOpen()V

    .line 146
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mPowerManager:Landroid/os/PowerManager;

    .line 147
    invoke-direct {p0}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->forkWorkThread()V

    .line 150
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string/jumbo v1, "new LenovoFingerprintManager out."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/fingerprint/LenovoFingerprintManager;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/fingerprint/LenovoFingerprintManager;)Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mIdentifyListener:Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/android/fingerprint/LenovoFingerprintManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    .prologue
    .line 19
    iget v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mUserData:I

    return v0
.end method

.method private forkWorkThread()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 223
    :cond_0
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string v1, "create WorkThread."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LenovoFingerprint_FingerprintManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 225
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 226
    new-instance v0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager$WorkThreadHandler;

    iget-object v1, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager$WorkThreadHandler;-><init>(Lcom/alipay/android/fingerprint/LenovoFingerprintManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mWorkHandler:Landroid/os/Handler;

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private getFeedback(Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedResult;)I
    .locals 7
    .param p1, "guidedResult"    # Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedResult;

    .prologue
    const/4 v0, 0x1

    .line 574
    const/4 v5, 0x0

    .line 575
    .local v5, "feedback":I
    iget v6, p1, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedResult;->guidedAcceptance:I

    if-ne v6, v0, :cond_0

    .line 576
    .local v0, "bAcceptance":Z
    :goto_0
    iget-boolean v1, p1, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedResult;->guidedImmobile:Z

    .line 577
    .local v1, "bImmobile":Z
    iget-object v6, p1, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedResult;->guidedRejectReasons:Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRejectReasons;

    iget-boolean v2, v6, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRejectReasons;->guidedLowCoverage:Z

    .line 578
    .local v2, "bLowCoverage":Z
    iget-object v6, p1, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedResult;->guidedRejectReasons:Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRejectReasons;

    iget-boolean v3, v6, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRejectReasons;->guidedLowQuality:Z

    .line 579
    .local v3, "bLowQuality":Z
    iget-boolean v4, p1, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedResult;->guidedStitched:Z

    .line 580
    .local v4, "bStitched":Z
    if-eqz v0, :cond_3

    .line 581
    if-nez v4, :cond_1

    .line 582
    const/4 v5, 0x1

    .line 598
    :goto_1
    return v5

    .line 575
    .end local v0    # "bAcceptance":Z
    .end local v1    # "bImmobile":Z
    .end local v2    # "bLowCoverage":Z
    .end local v3    # "bLowQuality":Z
    .end local v4    # "bStitched":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 583
    .restart local v0    # "bAcceptance":Z
    .restart local v1    # "bImmobile":Z
    .restart local v2    # "bLowCoverage":Z
    .restart local v3    # "bLowQuality":Z
    .restart local v4    # "bStitched":Z
    :cond_1
    if-nez v1, :cond_2

    .line 584
    const/4 v5, 0x2

    goto :goto_1

    .line 586
    :cond_2
    const/4 v5, 0x3

    goto :goto_1

    .line 589
    :cond_3
    if-eqz v3, :cond_4

    .line 590
    const/4 v5, 0x4

    goto :goto_1

    .line 591
    :cond_4
    if-eqz v2, :cond_5

    .line 592
    const/4 v5, 0x5

    goto :goto_1

    .line 594
    :cond_5
    const/4 v5, 0x6

    goto :goto_1
.end method

.method private getNextFingerIndexToEnroll()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 290
    invoke-virtual {p0}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->getFpIDs()[I

    move-result-object v6

    .line 291
    .local v6, "nativeIds":[I
    if-nez v6, :cond_1

    move v2, v7

    .line 312
    :cond_0
    :goto_0
    return v2

    .line 297
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v6

    if-ge v2, v8, :cond_2

    .line 298
    const-string v8, "LenovoFingerprint_FingerprintManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "nativeIds["

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

    .line 297
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 302
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 303
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

    .line 304
    .local v4, "id":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 303
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 307
    .end local v4    # "id":I
    :cond_3
    const/4 v2, 0x0

    :goto_3
    const/4 v8, 0x3

    if-ge v2, v8, :cond_4

    .line 308
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 307
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    move v2, v7

    .line 312
    goto :goto_0
.end method

.method private nativeOpen()V
    .locals 4

    .prologue
    .line 157
    :try_start_0
    invoke-static {}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->open()Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
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

    .line 161
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    goto :goto_0
.end method

.method public static open(Landroid/content/Context;)Lcom/alipay/android/fingerprint/LenovoFingerprintManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string v1, "*******open******"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    invoke-direct {v0, p0}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->sInstance:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    .line 133
    sget-object v0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->sInstance:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    iget-object v0, v0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->sInstance:Lcom/alipay/android/fingerprint/LenovoFingerprintManager;

    goto :goto_0
.end method

.method private quitWorkThread()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 236
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()I
    .locals 4

    .prologue
    .line 205
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 206
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string v1, "*******cancel******"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    invoke-virtual {v0}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->release()V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    .line 214
    iget-boolean v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mIdentified:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mAttempts:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mIdentifyListener:Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mIdentifyListener:Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;

    const/16 v1, 0x66

    const/4 v2, 0x0

    iget v3, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mUserData:I

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;->onResult(III)V

    .line 218
    :cond_0
    sget v0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->CMD_RESULT_OK:I

    return v0
.end method

.method public deleteFP(I)I
    .locals 3
    .param p1, "fingerprintId"    # I

    .prologue
    .line 377
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    invoke-virtual {v0, p1}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->deleteFingerData(I)V

    .line 379
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mContext:Landroid/content/Context;

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

    .line 382
    sget v0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->CMD_RESULT_OK:I

    .line 385
    :goto_0
    return v0

    .line 384
    :cond_0
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string v1, "FingerprintManager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    sget v0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->CMD_RESULT_FAIL:I

    goto :goto_0
.end method

.method public getFpIDs()[I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 321
    const-string v2, "LenovoFingerprint_FingerprintManager"

    const-string v3, "getFpIDs"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v2, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    if-nez v2, :cond_0

    .line 324
    const-string v2, "LenovoFingerprint_FingerprintManager"

    const-string v3, "FingerprintManager didn\'t open yet! try again."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-direct {p0}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->nativeOpen()V

    .line 326
    iget-object v2, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    if-nez v2, :cond_0

    .line 327
    const-string v2, "LenovoFingerprint_FingerprintManager"

    const-string/jumbo v3, "open failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 343
    :goto_0
    return-object v0

    .line 331
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    if-eqz v2, :cond_3

    .line 332
    iget-object v2, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    invoke-virtual {v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->getIds()[I

    move-result-object v0

    .line 333
    .local v0, "ids":[I
    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_2

    .line 334
    :cond_1
    const-string v2, "LenovoFingerprint_FingerprintManager"

    const-string v3, "getIds return NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 337
    goto :goto_0

    .line 339
    :cond_2
    iput-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mIds:[I

    goto :goto_0

    .end local v0    # "ids":[I
    :cond_3
    move-object v0, v1

    .line 343
    goto :goto_0
.end method

.method public getFpName(I)Ljava/lang/String;
    .locals 3
    .param p1, "fingerprintId"    # I

    .prologue
    .line 351
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mContext:Landroid/content/Context;

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

    .line 353
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mContext:Landroid/content/Context;

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

    .line 358
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

    const-string/jumbo v1, "onCaptureCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mIdentifyListener:Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mIdentifyListener:Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;

    const/4 v1, 0x3

    iget v2, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mUserData:I

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;->onStatus(II)V

    .line 523
    :cond_0
    return-void
.end method

.method public onCaptureFailed(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 529
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string/jumbo v1, "onCaptureFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void
.end method

.method public onEnrolled(I)V
    .locals 3
    .param p1, "who"    # I

    .prologue
    .line 556
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mEnrolListener:Lcom/alipay/android/fingerprint/LenovoFingerprintManager$EnrolListener;

    const/16 v1, 0x64

    iget v2, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mUserData:I

    invoke-interface {v0, v1, p1, v2}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager$EnrolListener;->onResult(III)V

    .line 557
    return-void
.end method

.method public onEnrollmentFailed()V
    .locals 4

    .prologue
    .line 561
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mEnrolListener:Lcom/alipay/android/fingerprint/LenovoFingerprintManager$EnrolListener;

    const/16 v1, 0x65

    const/4 v2, 0x0

    iget v3, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mUserData:I

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager$EnrolListener;->onResult(III)V

    .line 562
    return-void
.end method

.method public onIdentified(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "updated"    # Z

    .prologue
    .line 479
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 482
    const-string v0, "LenovoFingerprint_FingerprintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onIdentified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mIdentified:Z

    .line 487
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mIdentifyListener:Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;

    const/16 v1, 0x64

    iget v2, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mUserData:I

    invoke-interface {v0, v1, p1, v2}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;->onResult(III)V

    .line 488
    return-void
.end method

.method public onInput()V
    .locals 3

    .prologue
    .line 536
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string/jumbo v1, "onInput"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mIdentifyListener:Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mIdentifyListener:Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;

    const/4 v1, 0x2

    iget v2, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mUserData:I

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;->onStatus(II)V

    .line 541
    :cond_0
    return-void
.end method

.method public onNoMatch()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 495
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string/jumbo v1, "onNoMatch"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mAttempts:I

    .line 498
    iget v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mAttempts:I

    if-ge v0, v4, :cond_1

    .line 499
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mIdentifyListener:Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;

    const/4 v1, 0x2

    iget v2, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mUserData:I

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;->onStatus(II)V

    .line 500
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    iget-object v1, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mIds:[I

    invoke-virtual {v0, p0, v1, v4}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->startIdentify(Lcom/alipay/android/fingerprint/FPCFingerprintManager$IdentifyCallback;[IZ)V

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mIdentifyListener:Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;

    const/16 v1, 0x67

    const/4 v2, 0x0

    iget v3, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mUserData:I

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;->onResult(III)V

    .line 507
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    iget-object v1, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mIds:[I

    invoke-virtual {v0, p0, v1, v4}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->startIdentify(Lcom/alipay/android/fingerprint/FPCFingerprintManager$IdentifyCallback;[IZ)V

    goto :goto_0
.end method

.method public onProgress(Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedData;)V
    .locals 5
    .param p1, "guidedData"    # Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedData;

    .prologue
    const/4 v0, 0x1

    .line 566
    iget-object v1, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mEnrolListener:Lcom/alipay/android/fingerprint/LenovoFingerprintManager$EnrolListener;

    iget v2, p1, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedData;->guidedProgress:I

    iget v3, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mUserData:I

    iget-object v4, p1, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedData;->guidedResult:Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedResult;

    iget v4, v4, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedResult;->guidedAcceptance:I

    if-ne v4, v0, :cond_0

    :goto_0
    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager$EnrolListener;->onProgress(IIZ)V

    .line 569
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mEnrolListener:Lcom/alipay/android/fingerprint/LenovoFingerprintManager$EnrolListener;

    const/4 v1, 0x2

    iget v2, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mUserData:I

    iget-object v3, p1, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedData;->guidedResult:Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedResult;

    invoke-direct {p0, v3}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->getFeedback(Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedResult;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager$EnrolListener;->onStatus(III)V

    .line 571
    return-void

    .line 566
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWaitingForInput()V
    .locals 3

    .prologue
    .line 547
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string/jumbo v1, "onWaitingForInput"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mIdentifyListener:Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mIdentifyListener:Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;

    const/4 v1, 0x1

    iget v2, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mUserData:I

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;->onStatus(II)V

    .line 552
    :cond_0
    return-void
.end method

.method public release()I
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 186
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string v1, "*******release******"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    invoke-virtual {v0}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->release()V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    .line 195
    :goto_0
    invoke-direct {p0}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->quitWorkThread()V

    .line 196
    sget v0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->CMD_RESULT_OK:I

    return v0

    .line 193
    :cond_0
    const-string v0, "LenovoFingerprint_FingerprintManager"

    const-string v1, "FingerprintManager already null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startEnrol(Lcom/alipay/android/fingerprint/LenovoFingerprintManager$EnrolListener;Ljava/lang/String;JI)I
    .locals 3
    .param p1, "enrolListener"    # Lcom/alipay/android/fingerprint/LenovoFingerprintManager$EnrolListener;
    .param p2, "fingerprintName"    # Ljava/lang/String;
    .param p3, "timeout"    # J
    .param p5, "userData"    # I

    .prologue
    .line 256
    const-string v1, "LenovoFingerprint_FingerprintManager"

    const-string/jumbo v2, "startEnrol"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iput-object p1, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mEnrolListener:Lcom/alipay/android/fingerprint/LenovoFingerprintManager$EnrolListener;

    .line 259
    iget-object v1, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mEnrolListener:Lcom/alipay/android/fingerprint/LenovoFingerprintManager$EnrolListener;

    if-nez v1, :cond_0

    .line 260
    const-string v1, "LenovoFingerprint_FingerprintManager"

    const-string v2, "EnrolListener is NULL!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    sget v1, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->CMD_RESULT_FAIL:I

    .line 279
    :goto_0
    return v1

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    if-nez v1, :cond_1

    .line 265
    const-string v1, "LenovoFingerprint_FingerprintManager"

    const-string v2, "FingerprintManager didn\'t open yet! try again."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-direct {p0}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->nativeOpen()V

    .line 267
    iget-object v1, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    if-nez v1, :cond_1

    .line 268
    const-string v1, "LenovoFingerprint_FingerprintManager"

    const-string/jumbo v2, "open failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget v1, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->CMD_RESULT_FAIL:I

    goto :goto_0

    .line 273
    :cond_1
    iput p5, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mUserData:I

    .line 274
    invoke-direct {p0}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->getNextFingerIndexToEnroll()I

    move-result v0

    .line 276
    .local v0, "enrollId":I
    iget-object v1, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    invoke-virtual {v1, p0}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->setCaptureCallback(Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;)V

    .line 277
    iget-object v1, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    invoke-virtual {v1, p0, v0}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->startEnrol(Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;I)V

    .line 279
    sget v1, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->CMD_RESULT_OK:I

    goto :goto_0
.end method

.method public startFpManager(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 467
    const-string v1, "LenovoFingerprint_FingerprintManager"

    const-string/jumbo v2, "starFpManager"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 470
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.lenovo.lenovofingerprintsettings"

    const-string v2, "com.lenovo.lenovofingerprintsettings.FingerprintManagerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 473
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 474
    sget v1, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->CMD_RESULT_OK:I

    return v1
.end method

.method public startIdentify(Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;J[II)I
    .locals 10
    .param p1, "identifyListener"    # Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;
    .param p2, "timeout"    # J
    .param p4, "ids"    # [I
    .param p5, "userData"    # I

    .prologue
    const/16 v9, 0x68

    const/4 v8, 0x0

    .line 404
    const-string v4, "LenovoFingerprint_FingerprintManager"

    const-string/jumbo v5, "startFpIdentify"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iput-object p1, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mIdentifyListener:Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;

    .line 407
    iget-object v4, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mIdentifyListener:Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;

    if-nez v4, :cond_0

    .line 408
    const-string v4, "LenovoFingerprint_FingerprintManager"

    const-string v5, "IdentifyListener is NULL!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    sget v4, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->CMD_RESULT_FAIL:I

    .line 458
    :goto_0
    return v4

    .line 412
    :cond_0
    if-nez p4, :cond_1

    .line 413
    const-string v4, "LenovoFingerprint_FingerprintManager"

    const-string v5, "ids is NULL!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v4, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mIdentifyListener:Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;

    const/16 v5, 0x70

    iget v6, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mUserData:I

    invoke-interface {v4, v5, v8, v6}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;->onResult(III)V

    .line 416
    sget v4, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->CMD_RESULT_FAIL:I

    goto :goto_0

    .line 419
    :cond_1
    iput p5, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mUserData:I

    .line 420
    iput v8, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mAttempts:I

    .line 422
    :try_start_0
    const-string v4, "android.os.ServiceManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 424
    .local v3, "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getService"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 426
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

    .line 428
    .local v2, "ib":Landroid/os/IBinder;
    if-nez v2, :cond_2

    .line 429
    const-string v4, "LenovoFingerprint_FingerprintManager"

    const-string/jumbo v5, "test fingerprints_service error NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v4, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mWorkHandler:Landroid/os/Handler;

    const/16 v5, 0x68

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 431
    iget-object v4, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mIdentifyListener:Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;

    const/16 v5, 0x73

    const/4 v6, 0x0

    iget v7, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mUserData:I

    invoke-interface {v4, v5, v6, v7}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager$IdentifyListener;->onResult(III)V

    .line 433
    sget v4, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->CMD_RESULT_FAIL:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    .end local v1    # "getService":Ljava/lang/reflect/Method;
    .end local v2    # "ib":Landroid/os/IBinder;
    .end local v3    # "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 437
    const-string v4, "LenovoFingerprint_FingerprintManager"

    const-string/jumbo v5, "test fingerprints_service error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v4, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    if-nez v4, :cond_3

    .line 441
    const-string v4, "LenovoFingerprint_FingerprintManager"

    const-string v5, "FingerprintManager didn\'t open yet! try again."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-direct {p0}, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->nativeOpen()V

    .line 443
    iget-object v4, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    if-nez v4, :cond_3

    .line 444
    const-string v4, "LenovoFingerprint_FingerprintManager"

    const-string/jumbo v5, "open failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    sget v4, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->CMD_RESULT_FAIL:I

    goto/16 :goto_0

    .line 449
    :cond_3
    iget-object v4, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    invoke-virtual {v4, p0}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->setCaptureCallback(Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;)V

    .line 450
    iget-object v4, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    invoke-virtual {v4, p0, p4, v8}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->startIdentify(Lcom/alipay/android/fingerprint/FPCFingerprintManager$IdentifyCallback;[IZ)V

    .line 453
    iget-object v4, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 454
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mWorkHandler:Landroid/os/Handler;

    if-eqz v4, :cond_4

    .line 455
    iget-object v4, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 458
    :cond_4
    sget v4, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->CMD_RESULT_OK:I

    goto/16 :goto_0
.end method

.method public updateFpName(ILjava/lang/String;)I
    .locals 3
    .param p1, "fingerprintId"    # I
    .param p2, "fingerprintName"    # Ljava/lang/String;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mContext:Landroid/content/Context;

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

    .line 370
    sget v0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->CMD_RESULT_OK:I

    return v0
.end method

.method public updateTA(Ljava/lang/String;)Z
    .locals 2
    .param p1, "taPath"    # Ljava/lang/String;

    .prologue
    .line 640
    iget-object v1, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    if-eqz v1, :cond_0

    .line 641
    iget-object v1, p0, Lcom/alipay/android/fingerprint/LenovoFingerprintManager;->mFingerprintManager:Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    invoke-virtual {v1, p1}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->update(Ljava/lang/String;)Z

    move-result v0

    .line 645
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
