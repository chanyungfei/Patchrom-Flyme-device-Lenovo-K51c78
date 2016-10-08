.class public Lcom/alipay/android/fingerprint/FPCFingerprintManager;
.super Ljava/lang/Object;
.source "FPCFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;,
        Lcom/alipay/android/fingerprint/FPCFingerprintManager$IdentifyCallback;,
        Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;,
        Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;,
        Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRejectReasons;,
        Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedResult;,
        Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedMaskList;,
        Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedData;,
        Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedDataCallback;,
        Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;
    }
.end annotation


# static fields
.field static final ARG_IDENTIFY_UPDATED:I = 0x1

.field public static final CAPTURE_FAILED_TOO_FAST:I = 0x1

.field static final FPC_GUIDE_DATA_INVALID:I = -0x80000000

.field static final FPC_GUIDE_DIRECTION_E:I = 0x7

.field static final FPC_GUIDE_DIRECTION_N:I = 0x5

.field static final FPC_GUIDE_DIRECTION_NA:I = 0x0

.field static final FPC_GUIDE_DIRECTION_NE:I = 0x6

.field static final FPC_GUIDE_DIRECTION_NW:I = 0x4

.field static final FPC_GUIDE_DIRECTION_S:I = 0x2

.field static final FPC_GUIDE_DIRECTION_SE:I = 0x3

.field static final FPC_GUIDE_DIRECTION_SW:I = 0x1

.field static final FPC_GUIDE_DIRECTION_W:I = 0x8

.field static final MSG_CAPTURE_FAILED:I = 0x13

.field static final MSG_ENROLMENT_DATA_IMAGE_QUALITY:I = 0xe

.field static final MSG_ENROLMENT_DATA_IMAGE_STITCHED:I = 0x12

.field static final MSG_ENROLMENT_DATA_IMMOBILE:I = 0xf

.field static final MSG_ENROLMENT_DATA_NEXT_DIRECTION:I = 0x10

.field static final MSG_ENROLMENT_DATA_PROGRESS:I = 0x11

.field static final MSG_ENROLMENT_DONE:I = 0x5

.field static final MSG_ENROLMENT_FAILED:I = 0x8

.field static final MSG_ENROLMENT_LAST_TOUCH:I = 0xb

.field static final MSG_ENROLMENT_MASK_LIST:I = 0xd

.field static final MSG_ENROLMENT_NEXT_TOUCH:I = 0xc

.field static final MSG_ENROLMENT_SEND_GUIDE_DATA:I = 0xa

.field static final MSG_ENROLMENT_TOUCHES_QUALITY:I = 0x9

.field static final MSG_ENROL_PROGRESS:I = 0x4

.field static final MSG_FINGER_PRESENT:I = 0x2

.field static final MSG_FINGER_UP:I = 0x3

.field static final MSG_IDENTIFY_MATCH:I = 0x6

.field static final MSG_IDENTIFY_NO_MATCH:I = 0x7

.field static final MSG_WAITING_FINGER:I = 0x1

.field private static mBundle:Landroid/os/Bundle;

.field private static mGuidedDataBundle:Landroid/os/Bundle;

.field private static mRomte:Landroid/os/IBinder;


# instance fields
.field private mCaptureCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;

.field private mClient:Lcom/fingerprints/service/IFingerprintClient;

.field private mEnrolCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;

.field private mEventhHandler:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;

.field private mEventhLooper:Landroid/os/Looper;

.field private mGuidedDataCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedDataCallback;

.field private mIdentifyCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$IdentifyCallback;

.field private mService:Lcom/fingerprints/service/IFingerprintService;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;Landroid/os/Looper;)V
    .locals 2
    .param p1, "service"    # Landroid/os/IBinder;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEventhLooper:Landroid/os/Looper;

    .line 567
    const-string v0, "LenovoFingeprint_FPCFingerprintManager"

    const-string v1, "FPCFingerprintManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-static {p1}, Lcom/fingerprints/service/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fingerprints/service/IFingerprintService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    .line 573
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mBundle:Landroid/os/Bundle;

    .line 574
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    .line 576
    new-instance v0, Lcom/alipay/android/fingerprint/FPCFingerprintManager$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/fingerprint/FPCFingerprintManager$2;-><init>(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)V

    iput-object v0, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    .line 618
    iget-object v0, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v0, v1}, Lcom/fingerprints/service/IFingerprintService;->open(Lcom/fingerprints/service/IFingerprintClient;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 622
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->runAsyncThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 623
    invoke-virtual {p0}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->release()V

    .line 624
    const-string v0, "FPCFingerprintManager"

    const-string v1, "runAsyncThread failed!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 629
    :cond_1
    return-void
.end method

.method private PackGuidedData()V
    .locals 50

    .prologue
    .line 218
    sget-object v5, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "progress"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v30

    .line 219
    .local v30, "mGuidedProgress":I
    sget-object v5, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "next_direction"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v31

    .line 220
    .local v31, "mGuidedNextDirection":I
    sget-object v5, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "acceptance"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 221
    .local v6, "mGuidedAcceptance":I
    sget-object v5, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "stitched"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    const/4 v7, 0x0

    .line 222
    .local v7, "mGuidedStitched":Z
    :goto_0
    sget-object v5, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "immobile"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    const/4 v8, 0x0

    .line 223
    .local v8, "mGuidedImmobile":Z
    :goto_1
    sget-object v5, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "reject_reason"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v45

    .line 224
    .local v45, "reason":I
    sget-object v5, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskNumber"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v44

    .line 225
    .local v44, "mGuidedNumberOfMask":I
    const/16 v42, 0x0

    .line 226
    .local v42, "mGuidedLowCoverage":Z
    const/16 v43, 0x0

    .line 227
    .local v43, "mGuidedLowQuality":Z
    sparse-switch v45, :sswitch_data_0

    .line 239
    :goto_2
    new-instance v9, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRejectReasons;

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-direct {v9, v0, v1, v2}, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRejectReasons;-><init>(Lcom/alipay/android/fingerprint/FPCFingerprintManager;ZZ)V

    .line 240
    .local v9, "mGuidedRejectReasons":Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRejectReasons;
    new-instance v4, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedResult;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedResult;-><init>(Lcom/alipay/android/fingerprint/FPCFingerprintManager;IZZLcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRejectReasons;)V

    .line 241
    .local v4, "mGuidedResult":Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedResult;
    new-instance v12, Landroid/graphics/Point;

    sget-object v5, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "lastTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x0

    aget v5, v5, v11

    sget-object v11, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "lastTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x1

    aget v11, v11, v17

    invoke-direct {v12, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 242
    .local v12, "lastTouch_bottom_left":Landroid/graphics/Point;
    new-instance v13, Landroid/graphics/Point;

    sget-object v5, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "lastTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x2

    aget v5, v5, v11

    sget-object v11, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "lastTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x3

    aget v11, v11, v17

    invoke-direct {v13, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 243
    .local v13, "lastTouch_bottom_right":Landroid/graphics/Point;
    new-instance v14, Landroid/graphics/Point;

    sget-object v5, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "lastTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x4

    aget v5, v5, v11

    sget-object v11, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "lastTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x5

    aget v11, v11, v17

    invoke-direct {v14, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 244
    .local v14, "lastTouch_top_left":Landroid/graphics/Point;
    new-instance v15, Landroid/graphics/Point;

    sget-object v5, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "lastTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x6

    aget v5, v5, v11

    sget-object v11, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "lastTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x7

    aget v11, v11, v17

    invoke-direct {v15, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 245
    .local v15, "lastTouch_top_right":Landroid/graphics/Point;
    new-instance v18, Landroid/graphics/Point;

    sget-object v5, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "nextTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x0

    aget v5, v5, v11

    sget-object v11, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "nextTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x1

    aget v11, v11, v17

    move-object/from16 v0, v18

    invoke-direct {v0, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 246
    .local v18, "nextTouch_bottom_left":Landroid/graphics/Point;
    new-instance v19, Landroid/graphics/Point;

    sget-object v5, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "nextTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x2

    aget v5, v5, v11

    sget-object v11, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "nextTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x3

    aget v11, v11, v17

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 247
    .local v19, "nextTouch_bottom_right":Landroid/graphics/Point;
    new-instance v20, Landroid/graphics/Point;

    sget-object v5, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "nextTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x4

    aget v5, v5, v11

    sget-object v11, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "nextTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x5

    aget v11, v11, v17

    move-object/from16 v0, v20

    invoke-direct {v0, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 248
    .local v20, "nextTouch_top_left":Landroid/graphics/Point;
    new-instance v21, Landroid/graphics/Point;

    sget-object v5, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "nextTouch"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v11, 0x6

    aget v5, v5, v11

    sget-object v11, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v17, "nextTouch"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    const/16 v17, 0x7

    aget v11, v11, v17

    move-object/from16 v0, v21

    invoke-direct {v0, v5, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 249
    .local v21, "nextTouch_top_right":Landroid/graphics/Point;
    new-instance v10, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;-><init>(Lcom/alipay/android/fingerprint/FPCFingerprintManager;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 250
    .local v10, "mGuidedLastTouch":Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;
    new-instance v16, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v21}, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;-><init>(Lcom/alipay/android/fingerprint/FPCFingerprintManager;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 252
    .local v16, "mGuidedNextTouch":Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v40, "guidedMaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;>;"
    const/16 v41, 0x0

    .local v41, "i":I
    :goto_3
    move/from16 v0, v41

    move/from16 v1, v44

    if-ge v0, v1, :cond_2

    .line 264
    sget-object v5, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x0

    aget v36, v5, v11

    .line 265
    .local v36, "bottomLeftX":I
    sget-object v5, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x1

    aget v37, v5, v11

    .line 266
    .local v37, "bottomLeftY":I
    sget-object v5, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x2

    aget v38, v5, v11

    .line 267
    .local v38, "bottomRightX":I
    sget-object v5, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x3

    aget v39, v5, v11

    .line 268
    .local v39, "bottomRightY":I
    sget-object v5, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x4

    aget v46, v5, v11

    .line 269
    .local v46, "topLeftX":I
    sget-object v5, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x5

    aget v47, v5, v11

    .line 270
    .local v47, "topLeftY":I
    sget-object v5, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x6

    aget v48, v5, v11

    .line 271
    .local v48, "topRightX":I
    sget-object v5, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    const-string v11, "maskList"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    mul-int/lit8 v11, v41, 0x8

    add-int/lit8 v11, v11, 0x7

    aget v49, v5, v11

    .line 272
    .local v49, "topRightY":I
    new-instance v26, Landroid/graphics/Point;

    move-object/from16 v0, v26

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 273
    .local v26, "pointTopLeft":Landroid/graphics/Point;
    new-instance v27, Landroid/graphics/Point;

    move-object/from16 v0, v27

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 274
    .local v27, "pointTopRight":Landroid/graphics/Point;
    new-instance v24, Landroid/graphics/Point;

    move-object/from16 v0, v24

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 275
    .local v24, "pointBottomLeft":Landroid/graphics/Point;
    new-instance v25, Landroid/graphics/Point;

    move-object/from16 v0, v25

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 276
    .local v25, "pointBottomRight":Landroid/graphics/Point;
    new-instance v22, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;

    move-object/from16 v23, p0

    invoke-direct/range {v22 .. v27}, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;-><init>(Lcom/alipay/android/fingerprint/FPCFingerprintManager;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 277
    .local v22, "mask":Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;
    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_3

    .line 221
    .end local v4    # "mGuidedResult":Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedResult;
    .end local v7    # "mGuidedStitched":Z
    .end local v8    # "mGuidedImmobile":Z
    .end local v9    # "mGuidedRejectReasons":Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRejectReasons;
    .end local v10    # "mGuidedLastTouch":Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;
    .end local v12    # "lastTouch_bottom_left":Landroid/graphics/Point;
    .end local v13    # "lastTouch_bottom_right":Landroid/graphics/Point;
    .end local v14    # "lastTouch_top_left":Landroid/graphics/Point;
    .end local v15    # "lastTouch_top_right":Landroid/graphics/Point;
    .end local v16    # "mGuidedNextTouch":Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;
    .end local v18    # "nextTouch_bottom_left":Landroid/graphics/Point;
    .end local v19    # "nextTouch_bottom_right":Landroid/graphics/Point;
    .end local v20    # "nextTouch_top_left":Landroid/graphics/Point;
    .end local v21    # "nextTouch_top_right":Landroid/graphics/Point;
    .end local v22    # "mask":Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;
    .end local v24    # "pointBottomLeft":Landroid/graphics/Point;
    .end local v25    # "pointBottomRight":Landroid/graphics/Point;
    .end local v26    # "pointTopLeft":Landroid/graphics/Point;
    .end local v27    # "pointTopRight":Landroid/graphics/Point;
    .end local v36    # "bottomLeftX":I
    .end local v37    # "bottomLeftY":I
    .end local v38    # "bottomRightX":I
    .end local v39    # "bottomRightY":I
    .end local v40    # "guidedMaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;>;"
    .end local v41    # "i":I
    .end local v42    # "mGuidedLowCoverage":Z
    .end local v43    # "mGuidedLowQuality":Z
    .end local v44    # "mGuidedNumberOfMask":I
    .end local v45    # "reason":I
    .end local v46    # "topLeftX":I
    .end local v47    # "topLeftY":I
    .end local v48    # "topRightX":I
    .end local v49    # "topRightY":I
    :cond_0
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 222
    .restart local v7    # "mGuidedStitched":Z
    :cond_1
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 230
    .restart local v8    # "mGuidedImmobile":Z
    .restart local v42    # "mGuidedLowCoverage":Z
    .restart local v43    # "mGuidedLowQuality":Z
    .restart local v44    # "mGuidedNumberOfMask":I
    .restart local v45    # "reason":I
    :sswitch_0
    const/16 v43, 0x1

    .line 231
    goto/16 :goto_2

    .line 233
    :sswitch_1
    const/16 v42, 0x1

    .line 234
    goto/16 :goto_2

    .line 279
    .restart local v4    # "mGuidedResult":Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedResult;
    .restart local v9    # "mGuidedRejectReasons":Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRejectReasons;
    .restart local v10    # "mGuidedLastTouch":Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;
    .restart local v12    # "lastTouch_bottom_left":Landroid/graphics/Point;
    .restart local v13    # "lastTouch_bottom_right":Landroid/graphics/Point;
    .restart local v14    # "lastTouch_top_left":Landroid/graphics/Point;
    .restart local v15    # "lastTouch_top_right":Landroid/graphics/Point;
    .restart local v16    # "mGuidedNextTouch":Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;
    .restart local v18    # "nextTouch_bottom_left":Landroid/graphics/Point;
    .restart local v19    # "nextTouch_bottom_right":Landroid/graphics/Point;
    .restart local v20    # "nextTouch_top_left":Landroid/graphics/Point;
    .restart local v21    # "nextTouch_top_right":Landroid/graphics/Point;
    .restart local v40    # "guidedMaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;>;"
    .restart local v41    # "i":I
    :cond_2
    new-instance v35, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedMaskList;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v40

    move/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedMaskList;-><init>(Lcom/alipay/android/fingerprint/FPCFingerprintManager;Ljava/util/ArrayList;I)V

    .line 281
    .local v35, "mGuidedMaskList":Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedMaskList;
    new-instance v28, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedData;

    move-object/from16 v29, p0

    move-object/from16 v32, v4

    move-object/from16 v33, v10

    move-object/from16 v34, v16

    invoke-direct/range {v28 .. v35}, Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedData;-><init>(Lcom/alipay/android/fingerprint/FPCFingerprintManager;IILcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedResult;Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedRect;Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedMaskList;)V

    .line 282
    .local v28, "mGuidedData":Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedData;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEnrolCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;

    move-object/from16 v0, v28

    invoke-interface {v5, v0}, Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;->onProgress(Lcom/alipay/android/fingerprint/FPCFingerprintManager$GuidedData;)V

    .line 283
    return-void

    .line 227
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic access$000(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mCaptureCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$IdentifyCallback;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mIdentifyCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$IdentifyCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEnrolCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->PackGuidedData()V

    return-void
.end method

.method static synthetic access$400()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$502(Lcom/alipay/android/fingerprint/FPCFingerprintManager;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/fingerprint/FPCFingerprintManager;
    .param p1, "x1"    # Landroid/os/Looper;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEventhLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$600(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEventhHandler:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;

    return-object v0
.end method

.method static synthetic access$602(Lcom/alipay/android/fingerprint/FPCFingerprintManager;Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;)Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/android/fingerprint/FPCFingerprintManager;
    .param p1, "x1"    # Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEventhHandler:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;

    return-object p1
.end method

.method static synthetic access$700()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public static open()Lcom/alipay/android/fingerprint/FPCFingerprintManager;
    .locals 7

    .prologue
    .line 459
    const-string v4, "LenovoFingeprint_FPCFingerprintManager"

    const-string v5, "open"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v2, 0x0

    .line 466
    .local v2, "service":Landroid/os/IBinder;
    const/4 v3, 0x0

    .line 469
    .local v3, "timeout":I
    :goto_0
    :try_start_0
    const-string v4, "fingerprints_service"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 470
    if-eqz v2, :cond_0

    .line 471
    const-string v4, "FPCFingerprintManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getservice:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :goto_1
    sput-object v2, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mRomte:Landroid/os/IBinder;

    .line 490
    new-instance v4, Lcom/alipay/android/fingerprint/FPCFingerprintManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;-><init>(Landroid/os/IBinder;Landroid/os/Looper;)V

    .line 493
    :goto_2
    return-object v4

    .line 474
    :cond_0
    const/16 v4, 0x1388

    if-lt v3, v4, :cond_1

    .line 475
    const-string v4, "FPCFingerprintManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getservice is over:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 493
    const/4 v4, 0x0

    goto :goto_2

    .line 479
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-wide/16 v4, 0x1f4

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 480
    add-int/lit16 v3, v3, 0x1f4

    goto :goto_0

    .line 481
    :catch_1
    move-exception v1

    .line 482
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private runAsyncThread()Z
    .locals 6

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->stopAsyncThread()V

    .line 520
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/alipay/android/fingerprint/FPCFingerprintManager$1;

    invoke-direct {v4, p0}, Lcom/alipay/android/fingerprint/FPCFingerprintManager$1;-><init>(Lcom/alipay/android/fingerprint/FPCFingerprintManager;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mThread:Ljava/lang/Thread;

    .line 534
    iget-object v3, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 536
    monitor-enter p0

    .line 537
    const/16 v0, 0xa

    .local v0, "attempts":I
    move v1, v0

    .line 538
    .end local v0    # "attempts":I
    .local v1, "attempts":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEventhHandler:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    add-int/lit8 v0, v1, -0x1

    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    if-lez v1, :cond_1

    .line 541
    const-wide/16 v4, 0x64

    :try_start_1
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v1, v0

    .line 544
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_0

    .line 542
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    :catch_0
    move-exception v2

    .line 543
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "FPCFingerprintManager"

    const-string v4, "Interrupted while waiting on mEventhHandler."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 544
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_0

    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_0
    move v0, v1

    .line 546
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 548
    iget-object v3, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEventhHandler:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EventHandler;

    if-nez v3, :cond_2

    .line 549
    invoke-virtual {p0}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->stopAsyncThread()V

    .line 550
    const/4 v3, 0x0

    .line 553
    :goto_1
    return v3

    .line 546
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    :catchall_0
    move-exception v3

    move v0, v1

    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 553
    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    .line 546
    :catchall_1
    move-exception v3

    goto :goto_2
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 729
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2}, Lcom/fingerprints/service/IFingerprintService;->cancel(Lcom/fingerprints/service/IFingerprintClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    :goto_0
    return-void

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public deadPixelTest()I
    .locals 3

    .prologue
    .line 657
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2}, Lcom/fingerprints/service/IFingerprintService;->deadPixelTest(Lcom/fingerprints/service/IFingerprintClient;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 662
    :goto_0
    return v1

    .line 658
    :catch_0
    move-exception v0

    .line 659
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 662
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public deleteFingerData(I)V
    .locals 3
    .param p1, "fingerId"    # I

    .prologue
    .line 741
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2, p1}, Lcom/fingerprints/service/IFingerprintService;->removeData(Lcom/fingerprints/service/IFingerprintClient;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    :goto_0
    return-void

    .line 742
    :catch_0
    move-exception v0

    .line 743
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIds()[I
    .locals 3

    .prologue
    .line 693
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2}, Lcom/fingerprints/service/IFingerprintService;->getIds(Lcom/fingerprints/service/IFingerprintClient;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 697
    :goto_0
    return-object v1

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 697
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->stopAsyncThread()V

    .line 648
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2}, Lcom/fingerprints/service/IFingerprintService;->release(Lcom/fingerprints/service/IFingerprintClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    :goto_0
    return-void

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCaptureCallback(Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;)V
    .locals 0
    .param p1, "captureCallback"    # Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;

    .prologue
    .line 636
    iput-object p1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mCaptureCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$CaptureCallback;

    .line 637
    return-void
.end method

.method public startEnrol(Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;I)V
    .locals 3
    .param p1, "enrolCallback"    # Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;
    .param p2, "fingerId"    # I

    .prologue
    .line 677
    if-nez p1, :cond_0

    .line 678
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 680
    :cond_0
    iput-object p1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEnrolCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$EnrolCallback;

    .line 682
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2, p2}, Lcom/fingerprints/service/IFingerprintService;->startGuidedEnrol(Lcom/fingerprints/service/IFingerprintClient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    :goto_0
    return-void

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startIdentify(Lcom/alipay/android/fingerprint/FPCFingerprintManager$IdentifyCallback;[IZ)V
    .locals 3
    .param p1, "identifyCallback"    # Lcom/alipay/android/fingerprint/FPCFingerprintManager$IdentifyCallback;
    .param p2, "ids"    # [I
    .param p3, "checkLost"    # Z

    .prologue
    .line 711
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 712
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 714
    :cond_1
    iput-object p1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mIdentifyCallback:Lcom/alipay/android/fingerprint/FPCFingerprintManager$IdentifyCallback;

    .line 716
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mService:Lcom/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mClient:Lcom/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2, p2, p3}, Lcom/fingerprints/service/IFingerprintService;->startIdentify(Lcom/fingerprints/service/IFingerprintClient;[IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    :goto_0
    return-void

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopAsyncThread()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 558
    iget-object v0, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEventhLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEventhLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 560
    iput-object v1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mEventhLooper:Landroid/os/Looper;

    .line 562
    :cond_0
    iput-object v1, p0, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mThread:Ljava/lang/Thread;

    .line 563
    return-void
.end method

.method public update(Ljava/lang/String;)Z
    .locals 8
    .param p1, "taPath"    # Ljava/lang/String;

    .prologue
    .line 748
    const/4 v3, 0x0

    .line 749
    .local v3, "result":Z
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 750
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 752
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v5, "com.fingerprints.service.IFingerprintService"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 753
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 755
    sget-object v5, Lcom/alipay/android/fingerprint/FPCFingerprintManager;->mRomte:Landroid/os/IBinder;

    const/16 v6, 0x11

    const/4 v7, 0x0

    invoke-interface {v5, v6, v0, v2, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 756
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 758
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 759
    const/4 v3, 0x1

    .line 766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 767
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    move v4, v3

    .line 770
    .end local v3    # "result":Z
    .local v4, "result":I
    :goto_0
    return v4

    .line 766
    .end local v4    # "result":I
    .restart local v3    # "result":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 767
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :goto_1
    move v4, v3

    .line 770
    .restart local v4    # "result":I
    goto :goto_0

    .line 762
    .end local v4    # "result":I
    :catch_0
    move-exception v1

    .line 763
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 767
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 766
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 767
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method
