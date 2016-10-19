.class public Landroid/hardware/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/Camera$1;,
        Landroid/hardware/Camera$Parameters;,
        Landroid/hardware/Camera$Area;,
        Landroid/hardware/Camera$Size;,
        Landroid/hardware/Camera$ContinuousShotCallback;,
        Landroid/hardware/Camera$PreviewRawDumpCallback;,
        Landroid/hardware/Camera$ZSDPreviewDone;,
        Landroid/hardware/Camera$ObjectTrackingListener;,
        Landroid/hardware/Camera$FbOriginalCallback;,
        Landroid/hardware/Camera$StereoCameraMaskCallback;,
        Landroid/hardware/Camera$DistanceInfoCallback;,
        Landroid/hardware/Camera$StereoCameraWarningCallback;,
        Landroid/hardware/Camera$StereoCameraJpsCallback;,
        Landroid/hardware/Camera$HdrOriginalCallback;,
        Landroid/hardware/Camera$MetadataCallback;,
        Landroid/hardware/Camera$MotionTrackCallback;,
        Landroid/hardware/Camera$AutoRamaMoveCallback;,
        Landroid/hardware/Camera$AutoRamaCallback;,
        Landroid/hardware/Camera$AFDataCallback;,
        Landroid/hardware/Camera$AsdCallback;,
        Landroid/hardware/Camera$MavCallback;,
        Landroid/hardware/Camera$GestureCallback;,
        Landroid/hardware/Camera$SmileCallback;,
        Landroid/hardware/Camera$ErrorCallback;,
        Landroid/hardware/Camera$Face;,
        Landroid/hardware/Camera$FaceDetectionListener;,
        Landroid/hardware/Camera$OnZoomChangeListener;,
        Landroid/hardware/Camera$PictureCallback;,
        Landroid/hardware/Camera$ShutterCallback;,
        Landroid/hardware/Camera$AutoFocusMoveCallback;,
        Landroid/hardware/Camera$AutoFocusCallback;,
        Landroid/hardware/Camera$EventHandler;,
        Landroid/hardware/Camera$PreviewCallback;,
        Landroid/hardware/Camera$CameraInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTION_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"

.field public static final ACTION_NEW_VIDEO:Ljava/lang/String; = "android.hardware.action.NEW_VIDEO"

.field public static final CAMERA_ERROR_NO_MEMORY:I = 0x3e8

.field public static final CAMERA_ERROR_RESET:I = 0x3e9

.field public static final CAMERA_ERROR_SERVER_DIED:I = 0x64

.field public static final CAMERA_ERROR_UNKNOWN:I = 0x1

.field private static final CAMERA_FACE_DETECTION_HW:I = 0x0

.field private static final CAMERA_FACE_DETECTION_SW:I = 0x1

.field public static final CAMERA_HAL_API_VERSION_1_0:I = 0x100

.field private static final CAMERA_HAL_API_VERSION_NORMAL_CONNECT:I = -0x2

.field private static final CAMERA_HAL_API_VERSION_UNSPECIFIED:I = -0x1

.field private static final CAMERA_MSG_COMPRESSED_IMAGE:I = 0x100

.field private static final CAMERA_MSG_ERROR:I = 0x1

.field private static final CAMERA_MSG_FOCUS:I = 0x4

.field private static final CAMERA_MSG_FOCUS_MOVE:I = 0x800

.field private static final CAMERA_MSG_POSTVIEW_FRAME:I = 0x40

.field private static final CAMERA_MSG_PREVIEW_FRAME:I = 0x10

.field private static final CAMERA_MSG_PREVIEW_METADATA:I = 0x400

.field private static final CAMERA_MSG_RAW_IMAGE:I = 0x80

.field private static final CAMERA_MSG_RAW_IMAGE_NOTIFY:I = 0x200

.field private static final CAMERA_MSG_SHUTTER:I = 0x2

.field private static final CAMERA_MSG_VIDEO_FRAME:I = 0x20

.field private static final CAMERA_MSG_ZOOM:I = 0x8

.field private static final EACCESS:I = -0xd

.field private static final EBUSY:I = -0x10

.field private static final EINVAL:I = -0x16

.field private static final ENODEV:I = -0x13

.field private static final ENOSYS:I = -0x26

.field private static final EOPNOTSUPP:I = -0x5f

.field private static final EUSERS:I = -0x57

.field private static final MTK_CAMERA_MSG_EXT_DATA:I = -0x80000000

.field private static final MTK_CAMERA_MSG_EXT_DATA_AF:I = 0x2

.field private static final MTK_CAMERA_MSG_EXT_DATA_AUTORAMA:I = 0x1

.field private static final MTK_CAMERA_MSG_EXT_DATA_BURST_SHOT:I = 0x3

.field private static final MTK_CAMERA_MSG_EXT_DATA_FACEBEAUTY:I = 0x6

.field private static final MTK_CAMERA_MSG_EXT_DATA_HDR:I = 0x8

.field private static final MTK_CAMERA_MSG_EXT_DATA_JPS:I = 0x11

.field private static final MTK_CAMERA_MSG_EXT_DATA_MAV:I = 0x7

.field private static final MTK_CAMERA_MSG_EXT_DATA_MOTIONTRACK:I = 0x9

.field private static final MTK_CAMERA_MSG_EXT_DATA_OT:I = 0x5

.field private static final MTK_CAMERA_MSG_EXT_DATA_RAW16:I = 0x13

.field private static final MTK_CAMERA_MSG_EXT_DATA_STEREO_DBG:I = 0x12

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY:I = 0x40000000

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_ASD:I = 0x2

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_BURST_SHUTTER:I = 0x4

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_CONTINUOUS_END:I = 0x6

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_GESTURE_DETECT:I = 0x13

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_MAV:I = 0x3

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_METADATA_DONE:I = 0x16

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_RAW_DUMP_STOPPED:I = 0x12

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_SMILE_DETECT:I = 0x1

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_STEREO_DISTANCE:I = 0x15

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_STEREO_WARNING:I = 0x14

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_ZSD_PREVIEW_DONE:I = 0x7

.field private static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraFramework"


# instance fields
.field private mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;

.field private mAsdCallback:Landroid/hardware/Camera$AsdCallback;

.field private mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private final mAutoFocusCallbackLock:Ljava/lang/Object;

.field private mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

.field private mAutoRamaCallback:Landroid/hardware/Camera$AutoRamaCallback;

.field private mAutoRamaMoveCallback:Landroid/hardware/Camera$AutoRamaMoveCallback;

.field private mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotCallback;

.field private mDistanceInfoCallback:Landroid/hardware/Camera$DistanceInfoCallback;

.field private mEnableRaw16:Z

.field private mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private mEventHandler:Landroid/hardware/Camera$EventHandler;

.field private mFaceDetectionRunning:Z

.field private mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

.field private mFbOriginalCallback:Landroid/hardware/Camera$FbOriginalCallback;

.field private mGestureCallback:Landroid/hardware/Camera$GestureCallback;

.field private mHdrOriginalCallback:Landroid/hardware/Camera$HdrOriginalCallback;

.field private mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private mMavCallback:Landroid/hardware/Camera$MavCallback;

.field private mMetadataCallbacks:Landroid/hardware/Camera$MetadataCallback;

.field private mMotionTrackCallback:Landroid/hardware/Camera$MotionTrackCallback;

.field private mNativeContext:J

.field private final mObjectCallbackLock:Ljava/lang/Object;

.field private mObjectFace:Landroid/hardware/Camera$Face;

.field private mObjectListener:Landroid/hardware/Camera$ObjectTrackingListener;

.field private mObjectRect:Landroid/graphics/Rect;

.field private mOneShot:Z

.field private mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewDoneCallback:Landroid/hardware/Camera$ZSDPreviewDone;

.field private mPreviewRawDumpCallback:Landroid/hardware/Camera$PreviewRawDumpCallback;

.field private mRaw16Callbacks:Landroid/hardware/Camera$PictureCallback;

.field private mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

.field private mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mSmileCallback:Landroid/hardware/Camera$SmileCallback;

.field private mStereo3DModeForCamera:Z

.field private mStereoCameraJpsCallback:Landroid/hardware/Camera$StereoCameraJpsCallback;

.field private mStereoCameraMaskCallback:Landroid/hardware/Camera$StereoCameraMaskCallback;

.field private mStereoCameraWarningCallback:Landroid/hardware/Camera$StereoCameraWarningCallback;

.field private mUsingPreviewAllocation:Z

.field private mWithBuffer:Z

.field private mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-boolean v0, p0, Landroid/hardware/Camera;->mStereo3DModeForCamera:Z

    .line 314
    iput-boolean v0, p0, Landroid/hardware/Camera;->mEnableRaw16:Z

    .line 319
    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 321
    new-instance v0, Landroid/hardware/Camera$Face;

    invoke-direct {v0}, Landroid/hardware/Camera$Face;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mObjectFace:Landroid/hardware/Camera$Face;

    .line 322
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;

    .line 323
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 324
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mObjectCallbackLock:Ljava/lang/Object;

    .line 692
    return-void
.end method

.method constructor <init>(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    const/4 v1, 0x0

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-boolean v1, p0, Landroid/hardware/Camera;->mStereo3DModeForCamera:Z

    .line 314
    iput-boolean v1, p0, Landroid/hardware/Camera;->mEnableRaw16:Z

    .line 319
    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 321
    new-instance v1, Landroid/hardware/Camera$Face;

    invoke-direct {v1}, Landroid/hardware/Camera$Face;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mObjectFace:Landroid/hardware/Camera$Face;

    .line 322
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;

    .line 323
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 324
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mObjectCallbackLock:Ljava/lang/Object;

    .line 659
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->cameraInitNormal(I)I

    move-result v0

    .line 660
    .local v0, "err":I
    invoke-static {v0}, Landroid/hardware/Camera;->checkInitErrors(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    sparse-switch v0, :sswitch_data_0

    .line 668
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown camera error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 663
    :sswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to connect to camera service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 665
    :sswitch_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 671
    :cond_0
    return-void

    .line 661
    :sswitch_data_0
    .sparse-switch
        -0x13 -> :sswitch_1
        -0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private constructor <init>(II)V
    .locals 3
    .param p1, "cameraId"    # I
    .param p2, "halVersion"    # I

    .prologue
    const/4 v1, 0x0

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-boolean v1, p0, Landroid/hardware/Camera;->mStereo3DModeForCamera:Z

    .line 314
    iput-boolean v1, p0, Landroid/hardware/Camera;->mEnableRaw16:Z

    .line 319
    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 321
    new-instance v1, Landroid/hardware/Camera$Face;

    invoke-direct {v1}, Landroid/hardware/Camera$Face;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mObjectFace:Landroid/hardware/Camera$Face;

    .line 322
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;

    .line 323
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 324
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mObjectCallbackLock:Ljava/lang/Object;

    .line 582
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    move-result v0

    .line 583
    .local v0, "err":I
    invoke-static {v0}, Landroid/hardware/Camera;->checkInitErrors(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    sparse-switch v0, :sswitch_data_0

    .line 606
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown camera error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 586
    :sswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to connect to camera service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 588
    :sswitch_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 590
    :sswitch_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because some methods are not implemented"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 593
    :sswitch_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the hal version is not supported by this device"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 596
    :sswitch_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the input arugments are invalid"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 599
    :sswitch_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the camera device was already opened"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 602
    :sswitch_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the max number of camera devices were already opened"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 609
    :cond_0
    return-void

    .line 584
    :sswitch_data_0
    .sparse-switch
        -0x5f -> :sswitch_3
        -0x57 -> :sswitch_6
        -0x26 -> :sswitch_2
        -0x16 -> :sswitch_4
        -0x13 -> :sswitch_1
        -0x10 -> :sswitch_5
        -0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private final native _addCallbackBuffer([BI)V
.end method

.method private final native _enableShutterSound(Z)Z
.end method

.method private static native _getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
.end method

.method private final native _startFaceDetection(I)V
.end method

.method private final native _stopFaceDetection()V
.end method

.method private final native _stopPreview()V
.end method

.method static synthetic access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/hardware/Camera;)Landroid/hardware/Camera$SmileCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mSmileCallback:Landroid/hardware/Camera$SmileCallback;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$GestureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mGestureCallback:Landroid/hardware/Camera$GestureCallback;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$AsdCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mAsdCallback:Landroid/hardware/Camera$AsdCallback;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$MavCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mMavCallback:Landroid/hardware/Camera$MavCallback;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/hardware/Camera;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-boolean v0, p0, Landroid/hardware/Camera;->mEnableRaw16:Z

    return v0
.end method

.method static synthetic access$1900(Landroid/hardware/Camera;)Landroid/hardware/Camera$MetadataCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mMetadataCallbacks:Landroid/hardware/Camera$MetadataCallback;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ContinuousShotCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotCallback;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$ZSDPreviewDone;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mPreviewDoneCallback:Landroid/hardware/Camera$ZSDPreviewDone;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraWarningCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mStereoCameraWarningCallback:Landroid/hardware/Camera$StereoCameraWarningCallback;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/hardware/Camera;)Landroid/hardware/Camera$DistanceInfoCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mDistanceInfoCallback:Landroid/hardware/Camera$DistanceInfoCallback;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewRawDumpCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mPreviewRawDumpCallback:Landroid/hardware/Camera$PreviewRawDumpCallback;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaMoveCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoRamaMoveCallback:Landroid/hardware/Camera$AutoRamaMoveCallback;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoRamaCallback:Landroid/hardware/Camera$AutoRamaCallback;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/hardware/Camera;)Landroid/hardware/Camera$MotionTrackCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mMotionTrackCallback:Landroid/hardware/Camera$MotionTrackCallback;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/hardware/Camera;)Landroid/hardware/Camera$AFDataCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/hardware/Camera;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mObjectCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ObjectTrackingListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mObjectListener:Landroid/hardware/Camera$ObjectTrackingListener;

    return-object v0
.end method

.method static synthetic access$302(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 164
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object p1
.end method

.method static synthetic access$3100(Landroid/hardware/Camera;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/hardware/Camera;)Landroid/hardware/Camera$Face;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mObjectFace:Landroid/hardware/Camera$Face;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/hardware/Camera;)Landroid/hardware/Camera$HdrOriginalCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mHdrOriginalCallback:Landroid/hardware/Camera$HdrOriginalCallback;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/hardware/Camera;)Landroid/hardware/Camera$FbOriginalCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mFbOriginalCallback:Landroid/hardware/Camera$FbOriginalCallback;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraJpsCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mStereoCameraJpsCallback:Landroid/hardware/Camera$StereoCameraJpsCallback;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraMaskCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mStereoCameraMaskCallback:Landroid/hardware/Camera$StereoCameraMaskCallback;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mRaw16Callbacks:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/Camera;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    return v0
.end method

.method static synthetic access$500(Landroid/hardware/Camera;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-boolean v0, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    return v0
.end method

.method static synthetic access$600(Landroid/hardware/Camera;ZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    return-void
.end method

.method static synthetic access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$800(Landroid/hardware/Camera;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    return-object v0
.end method

.method private final addCallbackBuffer([BI)V
    .locals 3
    .param p1, "callbackBuffer"    # [B
    .param p2, "msgType"    # I

    .prologue
    .line 1094
    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    .line 1096
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1100
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 1101
    return-void
.end method

.method private cameraInitNormal(I)I
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 636
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    move-result v0

    return v0
.end method

.method private cameraInitVersion(II)I
    .locals 4
    .param p1, "cameraId"    # I
    .param p2, "halVersion"    # I

    .prologue
    const/4 v3, 0x0

    .line 612
    iput-object v3, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 613
    iput-object v3, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 614
    iput-object v3, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 615
    iput-object v3, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 616
    iput-object v3, p0, Landroid/hardware/Camera;->mPreviewRawDumpCallback:Landroid/hardware/Camera$PreviewRawDumpCallback;

    .line 617
    iput-object v3, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 618
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 619
    iput-object v3, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 622
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 623
    new-instance v2, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v2, p0, p0, v0}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    .line 630
    :goto_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v2, p1, p2, v1}, Landroid/hardware/Camera;->native_setup(Ljava/lang/Object;IILjava/lang/String;)I

    move-result v2

    return v2

    .line 624
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 625
    new-instance v2, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v2, p0, p0, v0}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0

    .line 627
    :cond_1
    iput-object v3, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0
.end method

.method private native cancelGDPreview()V
.end method

.method private final native cancelMainFace()V
.end method

.method private native cancelSDPreview()V
.end method

.method public static checkInitErrors(I)Z
    .locals 1
    .param p0, "err"    # I

    .prologue
    .line 678
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native enableFocusMoveCallback(I)V
.end method

.method public static getCameraBusyState(I)I
    .locals 1
    .param p0, "cameraId"    # I

    .prologue
    .line 407
    invoke-static {p0}, Landroid/hardware/Camera;->isCameraInUse(I)I

    move-result v0

    return v0
.end method

.method public static getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    .locals 5
    .param p0, "cameraId"    # I
    .param p1, "cameraInfo"    # Landroid/hardware/Camera$CameraInfo;

    .prologue
    .line 387
    invoke-static {p0, p1}, Landroid/hardware/Camera;->_getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 388
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 389
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 391
    .local v0, "audioService":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 394
    const/4 v3, 0x0

    iput-boolean v3, p1, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 396
    :catch_0
    move-exception v2

    .line 397
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CameraFramework"

    const-string v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getEmptyParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    .prologue
    .line 3264
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    .line 3265
    .local v0, "camera":Landroid/hardware/Camera;
    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    return-object v1
.end method

.method public static native getNumberOfCameras()I
.end method

.method public static getParametersCopy(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 4
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 3278
    if-nez p0, :cond_0

    .line 3279
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "parameters must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3282
    :cond_0
    # invokes: Landroid/hardware/Camera$Parameters;->getOuter()Landroid/hardware/Camera;
    invoke-static {p0}, Landroid/hardware/Camera$Parameters;->access$3900(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera;

    move-result-object v0

    .line 3283
    .local v0, "camera":Landroid/hardware/Camera;
    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    .line 3284
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1, p0}, Landroid/hardware/Camera$Parameters;->copyFrom(Landroid/hardware/Camera$Parameters;)V

    .line 3286
    return-object v1
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 2397
    invoke-static {p0, p1}, Landroid/hardware/Camera;->native_getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenSize()Ljava/lang/String;
    .locals 11

    .prologue
    .line 3167
    const-string v3, "1184x720"

    .line 3168
    .local v3, "mHD720NOPK":Ljava/lang/String;
    const-string v5, "800x480"

    .line 3169
    .local v5, "mWVGAScreenSize":Ljava/lang/String;
    const-string v4, "960x540"

    .line 3170
    .local v4, "mQhdScreenSize":Ljava/lang/String;
    const-string v2, "1280x720"

    .line 3172
    .local v2, "m720P":Ljava/lang/String;
    const-string v6, "800x480"

    .line 3175
    .local v6, "screenSize":Ljava/lang/String;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 3176
    .local v1, "dmGlobal":Landroid/hardware/display/DisplayManagerGlobal;
    const/4 v8, 0x0

    sget-object v9, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    invoke-virtual {v1, v8, v9}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .line 3178
    .local v0, "dispaly":Landroid/view/Display;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 3179
    .local v7, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3182
    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v9, v7, Landroid/graphics/Point;->y:I

    if-le v8, v9, :cond_1

    .line 3183
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3189
    :goto_0
    const-string v8, "1184x720"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3190
    const-string v6, "800x480"

    .line 3197
    :cond_0
    :goto_1
    const-string v8, "CameraFramework"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Screen size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    return-object v6

    .line 3185
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 3191
    :cond_2
    const-string v8, "960x540"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3192
    const-string v6, "800x480"

    goto :goto_1

    .line 3193
    :cond_3
    const-string v8, "1280x720"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3194
    const-string v6, "800x480"

    goto :goto_1
.end method

.method private static native isCameraInUse(I)I
.end method

.method private static isPermissionGranted()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    .line 2780
    const-string v6, "1"

    const-string/jumbo v7, "ro.mtk_mobile_management"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2781
    const-string/jumbo v6, "mobile"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2782
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v2

    .line 2783
    .local v2, "moms":Lcom/mediatek/common/mom/IMobileManagerService;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2784
    .local v4, "uid":I
    const-string/jumbo v3, "sub-permission.OPEN_CAMERA"

    .line 2786
    .local v3, "permission":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2787
    :try_start_0
    invoke-interface {v2, v3, v4}, Lcom/mediatek/common/mom/IMobileManagerService;->checkPermission(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    .line 2788
    const-string v6, "CameraFramework"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "open: user denied permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2789
    const/4 v5, 0x0

    .line 2797
    :cond_0
    :goto_0
    return v5

    .line 2792
    :catch_0
    move-exception v1

    .line 2793
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "CameraFramework"

    const-string v7, "CheckPermission failed in open with RemoteException, continues open."

    invoke-static {v6, v7, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isRestricted(I)Z
    .locals 10
    .param p0, "pid"    # I

    .prologue
    .line 3132
    const/4 v7, 0x0

    .line 3133
    .local v7, "ret":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/proc/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/cmdline"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3135
    .local v3, "f":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3137
    .local v4, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v4    # "in":Ljava/io/FileInputStream;
    .local v5, "in":Ljava/io/FileInputStream;
    move-object v4, v5

    .line 3142
    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :goto_0
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 3143
    .local v6, "inReader":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3144
    .local v1, "buffer":Ljava/lang/StringBuilder;
    const/4 v8, 0x1

    new-array v0, v8, [C

    .line 3146
    .local v0, "buf":[C
    :goto_1
    :try_start_1
    invoke-virtual {v6, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 3147
    const/4 v8, 0x0

    aget-char v8, v0, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3150
    :catch_0
    move-exception v2

    .line 3151
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 3154
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.google.android.apps.unveil"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3155
    const/4 v7, 0x1

    .line 3157
    :cond_0
    return v7

    .line 3138
    .end local v0    # "buf":[C
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .end local v6    # "inReader":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v2

    .line 3139
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3149
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "buf":[C
    .restart local v1    # "buffer":Ljava/lang/StringBuilder;
    .restart local v6    # "inReader":Ljava/io/InputStreamReader;
    :cond_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private final native native_autoFocus()V
.end method

.method private final native native_cancelAutoFocus()V
.end method

.method private final native native_getParameters()Ljava/lang/String;
.end method

.method private static native native_getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private final native native_release()V
.end method

.method private final native native_setParameters(Ljava/lang/String;)V
.end method

.method private static native native_setProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private final native native_setup(Ljava/lang/Object;IILjava/lang/String;)I
.end method

.method private final native native_takePicture(I)V
.end method

.method public static open()Landroid/hardware/Camera;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 514
    invoke-static {}, Landroid/hardware/Camera;->isPermissionGranted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 525
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    .local v1, "i":I
    .local v2, "numberOfCameras":I
    :cond_0
    :goto_0
    return-object v3

    .line 517
    .end local v0    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    .end local v1    # "i":I
    .end local v2    # "numberOfCameras":I
    :cond_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 518
    .restart local v2    # "numberOfCameras":I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 519
    .restart local v0    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 520
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 521
    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v4, :cond_2

    .line 522
    new-instance v3, Landroid/hardware/Camera;

    invoke-direct {v3, v1}, Landroid/hardware/Camera;-><init>(I)V

    goto :goto_0

    .line 519
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static open(I)Landroid/hardware/Camera;
    .locals 1
    .param p0, "cameraId"    # I

    .prologue
    .line 501
    invoke-static {}, Landroid/hardware/Camera;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    const/4 v0, 0x0

    .line 504
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0, p0}, Landroid/hardware/Camera;-><init>(I)V

    goto :goto_0
.end method

.method public static openLegacy(II)Landroid/hardware/Camera;
    .locals 3
    .param p0, "cameraId"    # I
    .param p1, "halVersion"    # I

    .prologue
    .line 567
    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    .line 568
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid HAL version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_0
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0, p0, p1}, Landroid/hardware/Camera;-><init>(II)V

    return-object v0
.end method

.method public static openUninitialized()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 685
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "camera_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1605
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "camera_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    .line 1606
    .local v0, "c":Landroid/hardware/Camera;
    if-nez v0, :cond_1

    .line 1613
    :cond_0
    :goto_0
    return-void

    .line 1609
    :cond_1
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    if-eqz v2, :cond_0

    .line 1610
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/hardware/Camera$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1611
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private final native setHasPreviewCallback(ZZ)V
.end method

.method private final native setMainFace(II)V
.end method

.method private final native setPreviewCallbackSurface(Landroid/view/Surface;)V
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 2407
    invoke-static {p0, p1}, Landroid/hardware/Camera;->native_setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2408
    return-void
.end method

.method private final native startAUTORAMA(I)V
.end method

.method private native startGDPreview()V
.end method

.method private final native startMAV(I)V
.end method

.method private final native startOT(II)V
.end method

.method private native startSDPreview()V
.end method

.method private native stopAUTORAMA(I)V
.end method

.method private native stopMAV(I)V
.end method

.method private final native stopOT()V
.end method


# virtual methods
.method public final addCallbackBuffer([B)V
    .locals 1
    .param p1, "callbackBuffer"    # [B

    .prologue
    .line 1045
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 1046
    return-void
.end method

.method public final addRawImageCallbackBuffer([B)V
    .locals 1
    .param p1, "callbackBuffer"    # [B

    .prologue
    .line 1088
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([BI)V

    .line 1089
    return-void
.end method

.method public final autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusCallback;

    .prologue
    .line 1694
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1695
    :try_start_0
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1696
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1697
    invoke-direct {p0}, Landroid/hardware/Camera;->native_autoFocus()V

    .line 1698
    return-void

    .line 1696
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public cameraInitUnspecified(I)I
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 654
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    move-result v0

    return v0
.end method

.method public final cancelAutoFocus()V
    .locals 2

    .prologue
    .line 1711
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1712
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1713
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1714
    invoke-direct {p0}, Landroid/hardware/Camera;->native_cancelAutoFocus()V

    .line 1730
    iget-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$EventHandler;->removeMessages(I)V

    .line 1731
    return-void

    .line 1713
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public native cancelContinuousShot()V
.end method

.method public final cancelMainFaceInfo()V
    .locals 0

    .prologue
    .line 2965
    invoke-direct {p0}, Landroid/hardware/Camera;->cancelMainFace()V

    .line 2966
    return-void
.end method

.method public native cancelPanorama()V
.end method

.method public final createPreviewAllocation(Landroid/renderscript/RenderScript;I)Landroid/renderscript/Allocation;
    .locals 6
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "usage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/renderscript/RSIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1133
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1134
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 1135
    .local v2, "previewSize":Landroid/hardware/Camera$Size;
    new-instance v3, Landroid/renderscript/Type$Builder;

    sget-object v4, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v5, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    invoke-static {p1, v4, v5}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 1141
    .local v3, "yuvBuilder":Landroid/renderscript/Type$Builder;
    const v4, 0x32315659

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setYuvFormat(I)Landroid/renderscript/Type$Builder;

    .line 1142
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 1143
    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 1145
    invoke-virtual {v3}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    or-int/lit8 v5, p2, 0x20

    invoke-static {p1, v4, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 1148
    .local v0, "a":Landroid/renderscript/Allocation;
    return-object v0
.end method

.method public final disableShutterSound()Z
    .locals 1

    .prologue
    .line 2053
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v0

    return v0
.end method

.method public final native doPanorama(I)V
.end method

.method public final enableRaw16(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 1896
    const-string v0, "CameraFramework"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableRaw16 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    iput-boolean p1, p0, Landroid/hardware/Camera;->mEnableRaw16:Z

    .line 1898
    iget-boolean v0, p0, Landroid/hardware/Camera;->mEnableRaw16:Z

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->enableRaw16Callback(Z)V

    .line 1899
    return-void
.end method

.method public final native enableRaw16Callback(Z)V
.end method

.method public final enableShutterSound(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 2024
    if-nez p1, :cond_0

    .line 2025
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2026
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 2028
    .local v0, "audioService":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 2033
    .end local v0    # "audioService":Landroid/media/IAudioService;
    .end local v1    # "b":Landroid/os/IBinder;
    :goto_0
    return v3

    .line 2029
    .restart local v0    # "audioService":Landroid/media/IAudioService;
    .restart local v1    # "b":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 2030
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CameraFramework"

    const-string v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    .end local v0    # "audioService":Landroid/media/IAudioService;
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v3

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 696
    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    .line 697
    return-void
.end method

.method public final native getMetadata(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;)V
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3223
    new-instance v0, Landroid/hardware/Camera$Parameters;

    invoke-direct {v0, p0, v6}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    .line 3224
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    .line 3225
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 3227
    const-string v3, "CameraFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera framework getParameters ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3228
    iget-boolean v3, p0, Landroid/hardware/Camera;->mStereo3DModeForCamera:Z

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setStereo3DMode(Z)V

    .line 3229
    const-string v3, "1"

    const-string/jumbo v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3233
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v3}, Landroid/hardware/Camera;->isRestricted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3234
    const-string/jumbo v3, "tablet"

    const-string/jumbo v4, "ro.build.characteristics"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3236
    const-string v2, "760x480"

    .line 3237
    .local v2, "size":Ljava/lang/String;
    const-string v3, "CameraFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change preview size to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3239
    const-string/jumbo v3, "preview-size-values"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3240
    const-string/jumbo v3, "preview-size"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3253
    .end local v2    # "size":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public final native lock()V
.end method

.method public final native previewEnabled()Z
.end method

.method public final native reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 711
    invoke-direct {p0}, Landroid/hardware/Camera;->native_release()V

    .line 712
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 713
    return-void
.end method

.method public final setAFDataCallback(Landroid/hardware/Camera$AFDataCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$AFDataCallback;

    .prologue
    .line 2631
    iput-object p1, p0, Landroid/hardware/Camera;->mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;

    .line 2632
    return-void
.end method

.method public final setAsdCallback(Landroid/hardware/Camera$AsdCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$AsdCallback;

    .prologue
    .line 2610
    iput-object p1, p0, Landroid/hardware/Camera;->mAsdCallback:Landroid/hardware/Camera$AsdCallback;

    .line 2611
    return-void
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusMoveCallback;

    .prologue
    .line 1763
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 1764
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->enableFocusMoveCallback(I)V

    .line 1765
    return-void

    .line 1764
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setAutoRamaCallback(Landroid/hardware/Camera$AutoRamaCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$AutoRamaCallback;

    .prologue
    .line 2775
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoRamaCallback:Landroid/hardware/Camera$AutoRamaCallback;

    .line 2776
    return-void
.end method

.method public final setAutoRamaMoveCallback(Landroid/hardware/Camera$AutoRamaMoveCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$AutoRamaMoveCallback;

    .prologue
    .line 2809
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoRamaMoveCallback:Landroid/hardware/Camera$AutoRamaMoveCallback;

    .line 2810
    return-void
.end method

.method public setContinuousShotCallback(Landroid/hardware/Camera$ContinuousShotCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/hardware/Camera$ContinuousShotCallback;

    .prologue
    .line 3094
    iput-object p1, p0, Landroid/hardware/Camera;->mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotCallback;

    .line 3095
    return-void
.end method

.method public native setContinuousShotSpeed(I)V
.end method

.method public final native setDisplayOrientation(I)V
.end method

.method public final setDistanceInfoCallback(Landroid/hardware/Camera$DistanceInfoCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$DistanceInfoCallback;

    .prologue
    .line 2864
    iput-object p1, p0, Landroid/hardware/Camera;->mDistanceInfoCallback:Landroid/hardware/Camera$DistanceInfoCallback;

    .line 2865
    return-void
.end method

.method public final setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$ErrorCallback;

    .prologue
    .line 2383
    iput-object p1, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 2384
    return-void
.end method

.method public final setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/Camera$FaceDetectionListener;

    .prologue
    .line 2121
    iput-object p1, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    .line 2122
    return-void
.end method

.method public final setFbOriginalCallback(Landroid/hardware/Camera$FbOriginalCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$FbOriginalCallback;

    .prologue
    .line 2886
    iput-object p1, p0, Landroid/hardware/Camera;->mFbOriginalCallback:Landroid/hardware/Camera$FbOriginalCallback;

    .line 2887
    return-void
.end method

.method public final setGestureCallback(Landroid/hardware/Camera$GestureCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$GestureCallback;

    .prologue
    .line 2458
    iput-object p1, p0, Landroid/hardware/Camera;->mGestureCallback:Landroid/hardware/Camera$GestureCallback;

    .line 2459
    return-void
.end method

.method public final setHdrOriginalCallback(Landroid/hardware/Camera$HdrOriginalCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$HdrOriginalCallback;

    .prologue
    .line 2831
    iput-object p1, p0, Landroid/hardware/Camera;->mHdrOriginalCallback:Landroid/hardware/Camera$HdrOriginalCallback;

    .line 2832
    return-void
.end method

.method public final setMainFaceCoordinate(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2956
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->setMainFace(II)V

    .line 2957
    return-void
.end method

.method public final setMavCallback(Landroid/hardware/Camera$MavCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$MavCallback;

    .prologue
    .line 2584
    iput-object p1, p0, Landroid/hardware/Camera;->mMavCallback:Landroid/hardware/Camera$MavCallback;

    .line 2585
    return-void
.end method

.method public final setMotionTrackCallback(Landroid/hardware/Camera$MotionTrackCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$MotionTrackCallback;

    .prologue
    .line 2820
    iput-object p1, p0, Landroid/hardware/Camera;->mMotionTrackCallback:Landroid/hardware/Camera$MotionTrackCallback;

    .line 2821
    return-void
.end method

.method public final setObjectTrackingListener(Landroid/hardware/Camera$ObjectTrackingListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/Camera$ObjectTrackingListener;

    .prologue
    .line 3023
    iget-object v1, p0, Landroid/hardware/Camera;->mObjectCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3024
    :try_start_0
    iput-object p1, p0, Landroid/hardware/Camera;->mObjectListener:Landroid/hardware/Camera$ObjectTrackingListener;

    .line 3025
    monitor-exit v1

    .line 3026
    return-void

    .line 3025
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 963
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 964
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 965
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 966
    if-eqz p1, :cond_0

    .line 967
    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 969
    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 970
    return-void

    :cond_1
    move v0, v1

    .line 969
    goto :goto_0
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 3110
    iget-boolean v2, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    if-eqz v2, :cond_1

    .line 3111
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 3112
    .local v1, "newPreviewSize":Landroid/hardware/Camera$Size;
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 3113
    .local v0, "currentPreviewSize":Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    if-eq v2, v3, :cond_1

    .line 3115
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot change preview size while a preview allocation is configured."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3120
    .end local v0    # "currentPreviewSize":Landroid/hardware/Camera$Size;
    .end local v1    # "newPreviewSize":Landroid/hardware/Camera$Size;
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/hardware/Camera;->native_setParameters(Ljava/lang/String;)V

    .line 3121
    return-void
.end method

.method public final setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    const/4 v1, 0x0

    .line 937
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 938
    iput-boolean v1, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 939
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 940
    if-eqz p1, :cond_0

    .line 941
    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 945
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 946
    return-void

    :cond_1
    move v0, v1

    .line 945
    goto :goto_0
.end method

.method public final setPreviewCallbackAllocation(Landroid/renderscript/Allocation;)V
    .locals 6
    .param p1, "previewAllocation"    # Landroid/renderscript/Allocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1199
    const/4 v2, 0x0

    .line 1200
    .local v2, "previewSurface":Landroid/view/Surface;
    if-eqz p1, :cond_4

    .line 1201
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1202
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1203
    .local v1, "previewSize":Landroid/hardware/Camera$Size;
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1205
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Allocation dimensions don\'t match preview dimensions: Allocation is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getX()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getY()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Preview is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1214
    :cond_1
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getUsage()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_2

    .line 1216
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Allocation usage does not include USAGE_IO_INPUT"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1219
    :cond_2
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getDataKind()Landroid/renderscript/Element$DataKind;

    move-result-object v3

    sget-object v4, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    if-eq v3, v4, :cond_3

    .line 1221
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Allocation is not of a YUV type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1224
    :cond_3
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .line 1225
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 1229
    .end local v0    # "p":Landroid/hardware/Camera$Parameters;
    .end local v1    # "previewSize":Landroid/hardware/Camera$Size;
    :goto_0
    invoke-direct {p0, v2}, Landroid/hardware/Camera;->setPreviewCallbackSurface(Landroid/view/Surface;)V

    .line 1230
    return-void

    .line 1227
    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    goto :goto_0
.end method

.method public final setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1001
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 1002
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 1003
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 1004
    if-eqz p1, :cond_0

    .line 1005
    iput-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 1007
    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 1008
    return-void
.end method

.method public final setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 796
    if-eqz p1, :cond_0

    .line 797
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    .line 801
    :goto_0
    return-void

    .line 799
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public setPreviewDoneCallback(Landroid/hardware/Camera$ZSDPreviewDone;)V
    .locals 0
    .param p1, "callback"    # Landroid/hardware/Camera$ZSDPreviewDone;

    .prologue
    .line 3073
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewDoneCallback:Landroid/hardware/Camera$ZSDPreviewDone;

    .line 3074
    return-void
.end method

.method public setPreviewRawDumpCallback(Landroid/hardware/Camera$PreviewRawDumpCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/hardware/Camera$PreviewRawDumpCallback;

    .prologue
    .line 3064
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewRawDumpCallback:Landroid/hardware/Camera$PreviewRawDumpCallback;

    .line 3065
    return-void
.end method

.method public final native setPreviewSurface(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final native setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final setRaw16Callback(Landroid/hardware/Camera$MetadataCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 2
    .param p1, "meta"    # Landroid/hardware/Camera$MetadataCallback;
    .param p2, "raw16"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    .line 1884
    const-string v0, "CameraFramework"

    const-string/jumbo v1, "setRaw16Callback"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    iput-object p1, p0, Landroid/hardware/Camera;->mMetadataCallbacks:Landroid/hardware/Camera$MetadataCallback;

    .line 1886
    iput-object p2, p0, Landroid/hardware/Camera;->mRaw16Callbacks:Landroid/hardware/Camera$PictureCallback;

    .line 1887
    return-void
.end method

.method public final setSmileCallback(Landroid/hardware/Camera$SmileCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$SmileCallback;

    .prologue
    .line 2447
    iput-object p1, p0, Landroid/hardware/Camera;->mSmileCallback:Landroid/hardware/Camera$SmileCallback;

    .line 2448
    return-void
.end method

.method public setStereo3DModeForCamera(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 3212
    iput-boolean p1, p0, Landroid/hardware/Camera;->mStereo3DModeForCamera:Z

    .line 3213
    return-void
.end method

.method public final setStereoCameraJpsCallback(Landroid/hardware/Camera$StereoCameraJpsCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$StereoCameraJpsCallback;

    .prologue
    .line 2842
    iput-object p1, p0, Landroid/hardware/Camera;->mStereoCameraJpsCallback:Landroid/hardware/Camera$StereoCameraJpsCallback;

    .line 2843
    return-void
.end method

.method public final setStereoCameraMaskCallback(Landroid/hardware/Camera$StereoCameraMaskCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$StereoCameraMaskCallback;

    .prologue
    .line 2875
    iput-object p1, p0, Landroid/hardware/Camera;->mStereoCameraMaskCallback:Landroid/hardware/Camera$StereoCameraMaskCallback;

    .line 2876
    return-void
.end method

.method public final setStereoCameraWarningCallback(Landroid/hardware/Camera$StereoCameraWarningCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$StereoCameraWarningCallback;

    .prologue
    .line 2853
    iput-object p1, p0, Landroid/hardware/Camera;->mStereoCameraWarningCallback:Landroid/hardware/Camera$StereoCameraWarningCallback;

    .line 2854
    return-void
.end method

.method public final setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/Camera$OnZoomChangeListener;

    .prologue
    .line 2091
    iput-object p1, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 2092
    return-void
.end method

.method public final native start3DSHOT(I)V
.end method

.method public final startAutoRama(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 2897
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->startAUTORAMA(I)V

    .line 2898
    return-void
.end method

.method public final startFaceDetection()V
    .locals 2

    .prologue
    .line 2157
    iget-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    if-eqz v0, :cond_0

    .line 2158
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2160
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_startFaceDetection(I)V

    .line 2161
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 2162
    return-void
.end method

.method public startGestureDetection()V
    .locals 0

    .prologue
    .line 2539
    invoke-direct {p0}, Landroid/hardware/Camera;->startGDPreview()V

    .line 2540
    return-void
.end method

.method public final startMav(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 2935
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->startMAV(I)V

    .line 2936
    return-void
.end method

.method public native startMotionTrack(I)V
.end method

.method public final startObjectTracking(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2975
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->startOT(II)V

    .line 2976
    return-void
.end method

.method public final native startPreview()V
.end method

.method public startSmileDetection()V
    .locals 0

    .prologue
    .line 2497
    invoke-direct {p0}, Landroid/hardware/Camera;->startSDPreview()V

    .line 2498
    return-void
.end method

.method public final native startSmoothZoom(I)V
.end method

.method public native stop3DSHOT(I)V
.end method

.method public stopAutoRama(I)V
    .locals 0
    .param p1, "isMerge"    # I

    .prologue
    .line 2910
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->stopAUTORAMA(I)V

    .line 2911
    return-void
.end method

.method public final stopFaceDetection()V
    .locals 1

    .prologue
    .line 2170
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopFaceDetection()V

    .line 2171
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 2172
    return-void
.end method

.method public stopGestureDetection()V
    .locals 0

    .prologue
    .line 2556
    invoke-direct {p0}, Landroid/hardware/Camera;->cancelGDPreview()V

    .line 2557
    return-void
.end method

.method public stopMav(I)V
    .locals 0
    .param p1, "isMerge"    # I

    .prologue
    .line 2946
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->stopMAV(I)V

    .line 2947
    return-void
.end method

.method public native stopMotionTrack()V
.end method

.method public final stopObjectTracking()V
    .locals 0

    .prologue
    .line 2985
    invoke-direct {p0}, Landroid/hardware/Camera;->stopOT()V

    .line 2986
    return-void
.end method

.method public final stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 898
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopPreview()V

    .line 899
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 901
    iput-object v2, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 902
    iput-object v2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 903
    iput-object v2, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 904
    iput-object v2, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 905
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 906
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 907
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    iput-object v2, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 909
    return-void

    .line 907
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stopSmileDetection()V
    .locals 0

    .prologue
    .line 2515
    invoke-direct {p0}, Landroid/hardware/Camera;->cancelSDPreview()V

    .line 2516
    return-void
.end method

.method public final native stopSmoothZoom()V
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 1
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    .line 1818
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1819
    return-void
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 2
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "postview"    # Landroid/hardware/Camera$PictureCallback;
    .param p4, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    .line 1853
    iput-object p1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 1854
    iput-object p2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1855
    iput-object p3, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1856
    iput-object p4, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1859
    const/4 v0, 0x0

    .line 1860
    .local v0, "msgType":I
    iget-object v1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    if-eqz v1, :cond_0

    .line 1861
    or-int/lit8 v0, v0, 0x2

    .line 1863
    :cond_0
    iget-object v1, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_1

    .line 1864
    or-int/lit16 v0, v0, 0x80

    .line 1866
    :cond_1
    iget-object v1, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_2

    .line 1867
    or-int/lit8 v0, v0, 0x40

    .line 1869
    :cond_2
    iget-object v1, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_3

    .line 1870
    or-int/lit16 v0, v0, 0x100

    .line 1873
    :cond_3
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_takePicture(I)V

    .line 1874
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1875
    return-void
.end method

.method public final native unlock()V
.end method
