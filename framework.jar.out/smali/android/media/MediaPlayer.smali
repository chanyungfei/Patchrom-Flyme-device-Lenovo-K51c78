.class public Landroid/media/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/SubtitleController$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$OnDurationUpdateListener;,
        Landroid/media/MediaPlayer$TimeProvider;,
        Landroid/media/MediaPlayer$OnInfoListener;,
        Landroid/media/MediaPlayer$OnErrorListener;,
        Landroid/media/MediaPlayer$OnSubtitleDataListener;,
        Landroid/media/MediaPlayer$OnTimedTextListener;,
        Landroid/media/MediaPlayer$OnVideoSizeChangedListener;,
        Landroid/media/MediaPlayer$OnSeekCompleteListener;,
        Landroid/media/MediaPlayer$OnBufferingUpdateListener;,
        Landroid/media/MediaPlayer$OnCompletionListener;,
        Landroid/media/MediaPlayer$OnPreparedListener;,
        Landroid/media/MediaPlayer$EventHandler;,
        Landroid/media/MediaPlayer$TrackInfo;
    }
.end annotation


# static fields
.field public static final APPLY_METADATA_FILTER:Z = true

.field public static final BYPASS_METADATA_FILTER:Z = false

.field private static final IMEDIA_PLAYER:Ljava/lang/String; = "android.media.IMediaPlayer"

.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE:I = 0x2

.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE_FD:I = 0x3

.field private static final INVOKE_ID_DESELECT_TRACK:I = 0x5

.field private static final INVOKE_ID_GET_SELECTED_TRACK:I = 0x7

.field private static final INVOKE_ID_GET_TRACK_INFO:I = 0x1

.field private static final INVOKE_ID_SELECT_TRACK:I = 0x4

.field private static final INVOKE_ID_SET_VIDEO_SCALE_MODE:I = 0x6

.field private static final KEY_PARAMETER_AUDIO_ATTRIBUTES:I = 0x578

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_DURATION_UPDATE:I = 0x12c

.field private static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_ERROR_IO:I = -0x3ec

.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field private static final MEDIA_INFO:I = 0xc8

.field public static final MEDIA_INFO_AUDIO_NOT_SUPPORTED:I = 0x35e

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_EXTERNAL_METADATA_UPDATE:I = 0x323

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_PAUSE_COMPLETED:I = 0x35a

.field public static final MEDIA_INFO_PLAY_COMPLETED:I = 0x35b

.field public static final MEDIA_INFO_STARTED_AS_NEXT:I = 0x2

.field public static final MEDIA_INFO_SUBTITLE_TIMED_OUT:I = 0x386

.field public static final MEDIA_INFO_TIMED_TEXT_ERROR:I = 0x384

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_UNSUPPORTED_SUBTITLE:I = 0x385

.field public static final MEDIA_INFO_VIDEO_NOT_SUPPORTED:I = 0x35c

.field public static final MEDIA_INFO_VIDEO_RENDERING_START:I = 0x3

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field public static final MEDIA_MIMETYPE_TEXT_CEA_608:Ljava/lang/String; = "text/cea-608"

.field public static final MEDIA_MIMETYPE_TEXT_IDX:Ljava/lang/String; = "application/x-subtitle-idx"

.field public static final MEDIA_MIMETYPE_TEXT_SUB:Ljava/lang/String; = "application/x-subtitle-sub"

.field public static final MEDIA_MIMETYPE_TEXT_SUBASS:Ljava/lang/String; = "application/x-subtitle-ass"

.field public static final MEDIA_MIMETYPE_TEXT_SUBMPL:Ljava/lang/String; = "application/x-subtitle-mpl"

.field public static final MEDIA_MIMETYPE_TEXT_SUBRIP:Ljava/lang/String; = "application/x-subrip"

.field public static final MEDIA_MIMETYPE_TEXT_SUBSMI:Ljava/lang/String; = "application/x-subtitle-smi"

.field public static final MEDIA_MIMETYPE_TEXT_SUBSSA:Ljava/lang/String; = "application/x-subtitle-ssa"

.field public static final MEDIA_MIMETYPE_TEXT_SUBTXT:Ljava/lang/String; = "application/x-subtitle-txt"

.field public static final MEDIA_MIMETYPE_TEXT_VTT:Ljava/lang/String; = "text/vtt"

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PAUSED:I = 0x7

.field private static final MEDIA_PAUSE_COMPLETE:I = 0x258

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PLAY_COMPLETE:I = 0x259

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_SKIPPED:I = 0x9

.field private static final MEDIA_STARTED:I = 0x6

.field private static final MEDIA_STOPPED:I = 0x8

.field private static final MEDIA_SUBTITLE_DATA:I = 0xc9

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field public static final METADATA_ALL:Z = false

.field public static final METADATA_UPDATE_ONLY:Z = true

.field private static final TAG:Ljava/lang/String; = "MediaPlayer"

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2


# instance fields
.field private final mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private mEventHandler:Landroid/media/MediaPlayer$EventHandler;

.field private final mInbandSubtitleLock:Ljava/lang/Object;

.field private mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

.field private mListenerContext:I

.field private mNativeContext:J

.field private mNativeSurfaceTexture:J

.field private mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnDurationUpdateListener:Landroid/media/MediaPlayer$OnDurationUpdateListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

.field private mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

.field private mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mOpenSubtitleSources:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private mOutOfBandSubtitleTracks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOnWhilePlaying:Z

.field private mSelectedSubtitleTrackIndex:I

.field private mStayAwake:Z

.field private mStreamType:I

.field private mSubtitleController:Landroid/media/SubtitleController;

.field private mSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

.field private mUsage:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 597
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 598
    invoke-static {}, Landroid/media/MediaPlayer;->native_init()V

    .line 599
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    iput-object v4, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 616
    const/high16 v2, -0x80000000

    iput v2, p0, Landroid/media/MediaPlayer;->mStreamType:I

    .line 617
    iput v3, p0, Landroid/media/MediaPlayer;->mUsage:I

    .line 2121
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mInbandSubtitleLock:Ljava/lang/Object;

    .line 2123
    iput v3, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 2127
    new-instance v2, Landroid/media/MediaPlayer$1;

    invoke-direct {v2, p0}, Landroid/media/MediaPlayer$1;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    .line 629
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .local v1, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_0

    .line 630
    new-instance v2, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v2, p0, p0, v1}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    .line 637
    :goto_0
    new-instance v2, Landroid/media/MediaPlayer$TimeProvider;

    invoke-direct {v2, p0}, Landroid/media/MediaPlayer$TimeProvider;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    .line 638
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mOutOfBandSubtitleTracks:Ljava/util/Vector;

    .line 639
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    .line 640
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/media/SubtitleTrack;

    iput-object v2, p0, Landroid/media/MediaPlayer;->mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    .line 641
    const-string v2, "appops"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 642
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaPlayer;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 647
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Landroid/media/MediaPlayer;->native_setup(Ljava/lang/Object;)V

    .line 648
    return-void

    .line 631
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 632
    new-instance v2, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v2, p0, p0, v1}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_0

    .line 634
    :cond_1
    iput-object v4, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_0
.end method

.method private native _getAudioStreamType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset()V
.end method

.method private native _setAudioStreamType(I)V
.end method

.method private native _setAuxEffectSendLevel(F)V
.end method

.method private native _setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _setVolume(FF)V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method static synthetic access$000(Landroid/media/MediaPlayer;)[Landroid/media/SubtitleTrack;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 561
    iget-object v0, p0, Landroid/media/MediaPlayer;->mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 561
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 561
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 561
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 561
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 561
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 561
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 561
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 561
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 561
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDurationUpdateListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 561
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnDurationUpdateListener:Landroid/media/MediaPlayer$OnDurationUpdateListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaPlayer;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 561
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MediaPlayer;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 561
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOutOfBandSubtitleTracks:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$EventHandler;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 561
    iget-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/MediaPlayer;)J
    .locals 2
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 561
    iget-wide v0, p0, Landroid/media/MediaPlayer;->mNativeContext:J

    return-wide v0
.end method

.method static synthetic access$600(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 561
    invoke-direct {p0}, Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V

    return-void
.end method

.method static synthetic access$700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 561
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 561
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/MediaPlayer;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 561
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method private static availableMimeTypeForExternalSource(Ljava/lang/String;)Z
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2077
    const-string v2, "application/x-subrip"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2107
    :cond_0
    :goto_0
    return v0

    .line 2082
    :cond_1
    const-string/jumbo v2, "ro.mtk_subtitle_support"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2083
    const-string v2, "application/x-subtitle-ass"

    if-eq p0, v2, :cond_0

    .line 2086
    const-string v2, "application/x-subtitle-ssa"

    if-eq p0, v2, :cond_0

    .line 2089
    const-string v2, "application/x-subtitle-txt"

    if-eq p0, v2, :cond_0

    .line 2092
    const-string v2, "application/x-subtitle-mpl"

    if-eq p0, v2, :cond_0

    .line 2095
    const-string v2, "application/x-subtitle-smi"

    if-eq p0, v2, :cond_0

    .line 2098
    const-string v2, "application/x-subtitle-sub"

    if-eq p0, v2, :cond_0

    .line 2101
    const-string v2, "application/x-subtitle-idx"

    if-eq p0, v2, :cond_0

    :cond_2
    move v0, v1

    .line 2107
    goto :goto_0
.end method

.method public static create(Landroid/content/Context;I)Landroid/media/MediaPlayer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    .line 914
    invoke-static {}, Landroid/media/AudioSystem;->newAudioSessionId()I

    move-result v0

    .line 915
    .local v0, "s":I
    const/4 v1, 0x0

    if-lez v0, :cond_0

    .end local v0    # "s":I
    :goto_0
    invoke-static {p0, p1, v1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;ILandroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;

    move-result-object v1

    return-object v1

    .restart local v0    # "s":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;ILandroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I
    .param p2, "audioAttributes"    # Landroid/media/AudioAttributes;
    .param p3, "audioSessionId"    # I

    .prologue
    const/4 v9, 0x0

    .line 932
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 933
    .local v7, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v7, :cond_0

    move-object v0, v9

    .line 956
    .end local v7    # "afd":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-object v0

    .line 935
    .restart local v7    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 937
    .local v0, "mp":Landroid/media/MediaPlayer;
    if-eqz p2, :cond_1

    move-object v6, p2

    .line 939
    .local v6, "aa":Landroid/media/AudioAttributes;
    :goto_1
    invoke-virtual {v0, v6}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 940
    invoke-virtual {v0, p3}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 942
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 943
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 944
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 946
    .end local v0    # "mp":Landroid/media/MediaPlayer;
    .end local v6    # "aa":Landroid/media/AudioAttributes;
    .end local v7    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v8

    .line 947
    .local v8, "ex":Ljava/io/IOException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v8    # "ex":Ljava/io/IOException;
    :goto_2
    move-object v0, v9

    .line 956
    goto :goto_0

    .line 937
    .restart local v0    # "mp":Landroid/media/MediaPlayer;
    .restart local v7    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_1
    :try_start_1
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    goto :goto_1

    .line 949
    .end local v0    # "mp":Landroid/media/MediaPlayer;
    .end local v7    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v8

    .line 950
    .local v8, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 952
    .end local v8    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v8

    .line 953
    .local v8, "ex":Ljava/lang/SecurityException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 831
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 851
    invoke-static {}, Landroid/media/AudioSystem;->newAudioSessionId()I

    move-result v0

    .line 852
    .local v0, "s":I
    const/4 v1, 0x0

    if-lez v0, :cond_0

    .end local v0    # "s":I
    :goto_0
    invoke-static {p0, p1, p2, v1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;

    move-result-object v1

    return-object v1

    .restart local v0    # "s":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "holder"    # Landroid/view/SurfaceHolder;
    .param p3, "audioAttributes"    # Landroid/media/AudioAttributes;
    .param p4, "audioSessionId"    # I

    .prologue
    .line 870
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 871
    .local v2, "mp":Landroid/media/MediaPlayer;
    if-eqz p3, :cond_1

    move-object v0, p3

    .line 873
    .local v0, "aa":Landroid/media/AudioAttributes;
    :goto_0
    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 874
    invoke-virtual {v2, p4}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 875
    invoke-virtual {v2, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 876
    if-eqz p2, :cond_0

    .line 877
    invoke-virtual {v2, p2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 879
    :cond_0
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 892
    .end local v0    # "aa":Landroid/media/AudioAttributes;
    .end local v2    # "mp":Landroid/media/MediaPlayer;
    :goto_1
    return-object v2

    .line 871
    .restart local v2    # "mp":Landroid/media/MediaPlayer;
    :cond_1
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 881
    .end local v2    # "mp":Landroid/media/MediaPlayer;
    :catch_0
    move-exception v1

    .line 882
    .local v1, "ex":Ljava/io/IOException;
    const-string v3, "MediaPlayer"

    const-string v4, "create failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 892
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 884
    :catch_1
    move-exception v1

    .line 885
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v3, "MediaPlayer"

    const-string v4, "create failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 887
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 888
    .local v1, "ex":Ljava/lang/SecurityException;
    const-string v3, "MediaPlayer"

    const-string v4, "create failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private getAudioStreamType()I
    .locals 2

    .prologue
    .line 1215
    iget v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 1216
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_getAudioStreamType()I

    move-result v0

    iput v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    .line 1218
    :cond_0
    iget v0, p0, Landroid/media/MediaPlayer;->mStreamType:I

    return v0
.end method

.method private getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2008
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2009
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2011
    .local v0, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2012
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2013
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 2014
    sget-object v3, Landroid/media/MediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/MediaPlayer$TrackInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2017
    .local v2, "trackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 2017
    .end local v2    # "trackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method private native getParameter(ILandroid/os/Parcel;)V
.end method

.method private isRestricted()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1204
    :try_start_0
    iget v4, p0, Landroid/media/MediaPlayer;->mUsage:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    iget v2, p0, Landroid/media/MediaPlayer;->mUsage:I

    .line 1206
    .local v2, "usage":I
    :goto_0
    iget-object v4, p0, Landroid/media/MediaPlayer;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const/16 v5, 0x1c

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v2, v6, v7}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v1

    .line 1208
    .local v1, "mode":I
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    .line 1210
    .end local v1    # "mode":I
    .end local v2    # "usage":I
    :cond_0
    :goto_1
    return v3

    .line 1204
    :cond_1
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getAudioStreamType()I

    move-result v4

    invoke-static {v4}, Landroid/media/AudioAttributes;->usageForLegacyStreamType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1209
    :catch_0
    move-exception v0

    .line 1210
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private isVideoScalingModeSupported(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 3365
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getMetadata(ZZLandroid/os/Parcel;)Z
.end method

.method private static final native native_init()V
.end method

.method private final native native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
.end method

.method public static native native_pullBatteryData(Landroid/os/Parcel;)I
.end method

.method private final native native_setMetadataFilter(Landroid/os/Parcel;)I
.end method

.method private final native native_setRetransmitEndpoint(Ljava/lang/String;I)I
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 5
    .param p0, "mediaplayer_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2911
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "mediaplayer_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 2912
    .local v1, "mp":Landroid/media/MediaPlayer;
    if-nez v1, :cond_1

    .line 2913
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "postEventFromNative: Null mp! what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", arg1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", arg2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    :cond_0
    :goto_0
    return-void

    .line 2917
    :cond_1
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 2919
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 2921
    :cond_2
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    if-eqz v2, :cond_0

    .line 2922
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2923
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private scanInternalSubtitleTracks()V
    .locals 7

    .prologue
    .line 2226
    iget-object v4, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v4, :cond_0

    .line 2227
    const-string v4, "MediaPlayer"

    const-string v5, "Should have subtitle controller already set"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    :goto_0
    return-void

    .line 2231
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v3

    .line 2232
    .local v3, "tracks":[Landroid/media/MediaPlayer$TrackInfo;
    iget-object v5, p0, Landroid/media/MediaPlayer;->mInbandSubtitleLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2233
    :try_start_0
    array-length v4, v3

    new-array v1, v4, [Landroid/media/SubtitleTrack;

    .line 2234
    .local v1, "inbandTracks":[Landroid/media/SubtitleTrack;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 2235
    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1

    .line 2236
    iget-object v4, p0, Landroid/media/MediaPlayer;->mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 2237
    iget-object v4, p0, Landroid/media/MediaPlayer;->mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    aget-object v4, v4, v0

    aput-object v4, v1, v0

    .line 2234
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2239
    :cond_2
    iget-object v4, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    aget-object v6, v3, v0

    invoke-virtual {v6}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v2

    .line 2241
    .local v2, "track":Landroid/media/SubtitleTrack;
    aput-object v2, v1, v0

    goto :goto_2

    .line 2246
    .end local v0    # "i":I
    .end local v1    # "inbandTracks":[Landroid/media/SubtitleTrack;
    .end local v2    # "track":Landroid/media/SubtitleTrack;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2245
    .restart local v0    # "i":I
    .restart local v1    # "inbandTracks":[Landroid/media/SubtitleTrack;
    :cond_3
    :try_start_1
    iput-object v1, p0, Landroid/media/MediaPlayer;->mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    .line 2246
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2247
    iget-object v4, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v4}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    goto :goto_0
.end method

.method private selectOrDeselectInbandTrack(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "select"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2637
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2638
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2640
    .local v0, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IMediaPlayer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2641
    if-eqz p2, :cond_0

    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2642
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2643
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2645
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2648
    return-void

    .line 2641
    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    .line 2645
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method private selectOrDeselectTrack(IZ)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "select"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2595
    const/4 v1, 0x0

    .line 2596
    .local v1, "track":Landroid/media/SubtitleTrack;
    iget-object v5, p0, Landroid/media/MediaPlayer;->mInbandSubtitleLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2597
    :try_start_0
    iget-object v4, p0, Landroid/media/MediaPlayer;->mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    array-length v4, v4

    if-nez v4, :cond_1

    .line 2598
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v2

    .line 2599
    .local v2, "tracks":[Landroid/media/MediaPlayer$TrackInfo;
    array-length v4, v2

    new-array v4, v4, [Landroid/media/SubtitleTrack;

    iput-object v4, p0, Landroid/media/MediaPlayer;->mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    .line 2600
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 2601
    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_0

    .line 2602
    iget-object v4, p0, Landroid/media/MediaPlayer;->mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    iget-object v6, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    aget-object v7, v2, v0

    invoke-virtual {v7}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v6

    aput-object v6, v4, v0

    .line 2600
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2606
    .end local v0    # "i":I
    .end local v2    # "tracks":[Landroid/media/MediaPlayer$TrackInfo;
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2608
    iget-object v4, p0, Landroid/media/MediaPlayer;->mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    array-length v4, v4

    if-ge p1, v4, :cond_4

    .line 2609
    iget-object v4, p0, Landroid/media/MediaPlayer;->mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    aget-object v1, v4, p1

    .line 2614
    :cond_2
    :goto_1
    iget-object v4, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v4, :cond_7

    if-eqz v1, :cond_7

    .line 2615
    if-eqz p2, :cond_5

    .line 2616
    invoke-virtual {v1}, Landroid/media/SubtitleTrack;->isTimedText()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2617
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Landroid/media/MediaPlayer;->getSelectedTrack(I)I

    move-result v3

    .line 2618
    .local v3, "ttIndex":I
    if-ltz v3, :cond_3

    iget-object v4, p0, Landroid/media/MediaPlayer;->mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 2620
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V

    .line 2623
    .end local v3    # "ttIndex":I
    :cond_3
    iget-object v4, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v4, v1}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    .line 2633
    :goto_2
    return-void

    .line 2606
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 2610
    :cond_4
    iget-object v4, p0, Landroid/media/MediaPlayer;->mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    array-length v4, v4

    iget-object v5, p0, Landroid/media/MediaPlayer;->mOutOfBandSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_2

    .line 2611
    iget-object v4, p0, Landroid/media/MediaPlayer;->mOutOfBandSubtitleTracks:Ljava/util/Vector;

    iget-object v5, p0, Landroid/media/MediaPlayer;->mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    array-length v5, v5

    sub-int v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "track":Landroid/media/SubtitleTrack;
    check-cast v1, Landroid/media/SubtitleTrack;

    .restart local v1    # "track":Landroid/media/SubtitleTrack;
    goto :goto_1

    .line 2624
    :cond_5
    iget-object v4, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v4}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    move-result-object v4

    if-ne v4, v1, :cond_6

    .line 2625
    iget-object v4, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    goto :goto_2

    .line 2627
    :cond_6
    const-string v4, "MediaPlayer"

    const-string/jumbo v5, "trying to deselect track that was not selected"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2632
    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V

    goto :goto_2
.end method

.method private setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1084
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1085
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 1086
    .local v3, "scheme":Ljava/lang/String;
    const-string v5, "file"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1087
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 1098
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1099
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1100
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1101
    .local v2, "is":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1102
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 1103
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1107
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "is":Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 1088
    :cond_1
    if-eqz v3, :cond_0

    .line 1090
    invoke-static {p1}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {p0, v5, p1, p2, p3}, Landroid/media/MediaPlayer;->nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 1105
    .restart local v1    # "file":Ljava/io/File;
    :cond_2
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "setDataSource failed."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private native setParameter(ILandroid/os/Parcel;)Z
.end method

.method private stayAwake(Z)V
    .locals 1
    .param p1, "awake"    # Z

    .prologue
    .line 1305
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 1306
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1307
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1312
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    .line 1313
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1314
    return-void

    .line 1308
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    .prologue
    .line 1317
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 1318
    iget-object v1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 1320
    :cond_0
    return-void

    .line 1318
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "format"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2174
    const-string v4, "MediaPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addSubtitleSource: MediaFormat = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    move-object v1, p1

    .line 2176
    .local v1, "fIs":Ljava/io/InputStream;
    move-object v0, p2

    .line 2180
    .local v0, "fFormat":Landroid/media/MediaFormat;
    iget-object v5, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v5

    .line 2181
    :try_start_0
    iget-object v4, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2182
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2185
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "SubtitleReadThread"

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2187
    .local v3, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 2188
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2189
    .local v2, "handler":Landroid/os/Handler;
    new-instance v4, Landroid/media/MediaPlayer$2;

    invoke-direct {v4, p0, v1, v0, v3}, Landroid/media/MediaPlayer$2;-><init>(Landroid/media/MediaPlayer;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2223
    return-void

    .line 2182
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "thread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public addTimedTextSource(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2302
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 2303
    .local v3, "scheme":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2304
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p3}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 2327
    :cond_1
    :goto_0
    return-void

    .line 2308
    :cond_2
    const/4 v1, 0x0

    .line 2310
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2311
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v4, "r"

    invoke-virtual {v2, p2, v4}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 2312
    if-nez v1, :cond_3

    .line 2313
    const-string v4, "MediaPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addTimedTextSource: Null fd! uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2323
    if-eqz v1, :cond_1

    .line 2324
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 2316
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {p0, v4, p3}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2323
    if-eqz v1, :cond_1

    .line 2324
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 2318
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 2319
    .local v0, "ex":Ljava/lang/SecurityException;
    :try_start_2
    const-string v4, "MediaPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addTimedTextSource: SecurityException! uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2323
    if-eqz v1, :cond_1

    .line 2324
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 2320
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 2321
    .local v0, "ex":Ljava/io/IOException;
    :try_start_3
    const-string v4, "MediaPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addTimedTextSource: IOException! uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2323
    if-eqz v1, :cond_1

    .line 2324
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 2323
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_4

    .line 2324
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_4
    throw v4
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
    .locals 20
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "mime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2371
    invoke-static/range {p6 .. p6}, Landroid/media/MediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2372
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Illegal mimeType for timed text source: "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2377
    :cond_0
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Llibcore/io/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 2384
    .local v15, "fd2":Ljava/io/FileDescriptor;
    const-string/jumbo v3, "ro.mtk_subtitle_support"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "application/x-subtitle-sub"

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2386
    const/4 v3, 0x4

    new-array v0, v3, [B

    move-object/from16 v17, v0

    .line 2388
    .local v17, "header":[B
    const/4 v3, 0x0

    const/4 v4, 0x4

    :try_start_1
    move-object/from16 v0, v17

    invoke-static {v15, v0, v3, v4}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    .line 2389
    const/4 v3, 0x0

    aget-byte v3, v17, v3

    and-int/lit16 v3, v3, 0xff

    if-nez v3, :cond_1

    const/4 v3, 0x1

    aget-byte v3, v17, v3

    and-int/lit16 v3, v3, 0xff

    if-nez v3, :cond_1

    const/4 v3, 0x2

    aget-byte v3, v17, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x3

    aget-byte v3, v17, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xba

    if-ne v3, v4, :cond_1

    .line 2391
    const-string v3, "MediaPlayer"

    const-string v4, "Bitmap sub file, return directly"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2497
    .end local v17    # "header":[B
    :goto_0
    return-void

    .line 2378
    .end local v15    # "fd2":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v13

    .line 2379
    .local v13, "ex":Landroid/system/ErrnoException;
    const-string v3, "MediaPlayer"

    invoke-virtual {v13}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2380
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 2394
    .end local v13    # "ex":Landroid/system/ErrnoException;
    .restart local v15    # "fd2":Ljava/io/FileDescriptor;
    .restart local v17    # "header":[B
    :catch_1
    move-exception v12

    .line 2395
    .local v12, "e":Ljava/lang/Exception;
    const-string v3, "MediaPlayer"

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2401
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v17    # "header":[B
    :cond_1
    new-instance v14, Landroid/media/MediaFormat;

    invoke-direct {v14}, Landroid/media/MediaFormat;-><init>()V

    .line 2402
    .local v14, "fFormat":Landroid/media/MediaFormat;
    const-string/jumbo v3, "mime"

    move-object/from16 v0, p6

    invoke-virtual {v14, v3, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2403
    const-string v3, "is-timed-text"

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2405
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    .line 2407
    .local v2, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v3, :cond_2

    .line 2408
    new-instance v3, Landroid/media/SubtitleController;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    move-object/from16 v0, p0

    invoke-direct {v3, v2, v4, v0}, Landroid/media/SubtitleController;-><init>(Landroid/content/Context;Landroid/media/MediaTimeProvider;Landroid/media/SubtitleController$Listener;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    .line 2409
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    new-instance v4, Landroid/media/MediaPlayer$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/media/MediaPlayer$3;-><init>(Landroid/media/MediaPlayer;)V

    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->setAnchor(Landroid/media/SubtitleController$Anchor;)V

    .line 2421
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v3, v14}, Landroid/media/SubtitleController;->hasRendererFor(Landroid/media/MediaFormat;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2423
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    new-instance v4, Landroid/media/SRTRenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v4, v2, v0}, Landroid/media/SRTRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 2425
    const-string/jumbo v3, "ro.mtk_subtitle_support"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2426
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    new-instance v4, Landroid/media/ASSRenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v4, v2, v0}, Landroid/media/ASSRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 2427
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    new-instance v4, Landroid/media/MPLRenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v4, v2, v0}, Landroid/media/MPLRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 2428
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    new-instance v4, Landroid/media/SSARenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v4, v2, v0}, Landroid/media/SSARenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 2429
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    new-instance v4, Landroid/media/SUBRenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v4, v2, v0}, Landroid/media/SUBRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 2430
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    new-instance v4, Landroid/media/SMIRenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v4, v2, v0}, Landroid/media/SMIRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 2431
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    new-instance v4, Landroid/media/TXTRenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v4, v2, v0}, Landroid/media/TXTRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 2432
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    new-instance v4, Landroid/media/VobSubRenderer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v4, v2, v0}, Landroid/media/VobSubRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 2436
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v3, v14}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v10

    .line 2439
    .local v10, "track":Landroid/media/SubtitleTrack;
    const-string/jumbo v3, "ro.mtk_subtitle_support"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "application/x-subtitle-idx"

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    instance-of v3, v10, Landroid/media/VobSubTrack;

    if-eqz v3, :cond_4

    move-object v3, v10

    .line 2441
    check-cast v3, Landroid/media/VobSubTrack;

    invoke-virtual {v3, v15}, Landroid/media/VobSubTrack;->getSubPathFromFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 2445
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mOutOfBandSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v3, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2447
    move-object v5, v15

    .line 2448
    .local v5, "fd3":Ljava/io/FileDescriptor;
    move-wide/from16 v6, p2

    .line 2449
    .local v6, "offset2":J
    move-wide/from16 v8, p4

    .line 2450
    .local v8, "length2":J
    new-instance v11, Landroid/os/HandlerThread;

    const-string v3, "TimedTextReadThread"

    const/16 v4, 0x9

    invoke-direct {v11, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2453
    .local v11, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v11}, Landroid/os/HandlerThread;->start()V

    .line 2454
    new-instance v16, Landroid/os/Handler;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2455
    .local v16, "handler":Landroid/os/Handler;
    new-instance v3, Landroid/media/MediaPlayer$4;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Landroid/media/MediaPlayer$4;-><init>(Landroid/media/MediaPlayer;Ljava/io/FileDescriptor;JJLandroid/media/SubtitleTrack;Landroid/os/HandlerThread;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2348
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V

    .line 2349
    return-void
.end method

.method public addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2268
    invoke-static {p2}, Landroid/media/MediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal mimeType for timed text source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2270
    .local v3, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2273
    .end local v3    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2274
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2275
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2276
    .local v2, "is":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 2277
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {p0, v0, p2}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 2278
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 2283
    return-void

    .line 2281
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "is":Ljava/io/FileInputStream;
    :cond_1
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public native attachAuxEffect(I)V
.end method

.method public deselectTrack(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2589
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->selectOrDeselectTrack(IZ)V

    .line 2590
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 2706
    invoke-direct {p0}, Landroid/media/MediaPlayer;->native_finalize()V

    return-void
.end method

.method public native getAudioSessionId()I
.end method

.method public native getCurrentPosition()I
.end method

.method public native getDuration()I
.end method

.method public getIntParameter(I)I
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 1774
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1775
    .local v0, "p":Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->getParameter(ILandroid/os/Parcel;)V

    .line 1776
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1777
    .local v1, "ret":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1778
    return v1
.end method

.method public getMediaTimeProvider()Landroid/media/MediaTimeProvider;
    .locals 1

    .prologue
    .line 2734
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    if-nez v0, :cond_0

    .line 2735
    new-instance v0, Landroid/media/MediaPlayer$TimeProvider;

    invoke-direct {v0, p0}, Landroid/media/MediaPlayer$TimeProvider;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    .line 2737
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    return-object v0
.end method

.method public getMetadata(ZZ)Landroid/media/Metadata;
    .locals 4
    .param p1, "update_only"    # Z
    .param p2, "apply_filter"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1396
    .local v1, "reply":Landroid/os/Parcel;
    new-instance v0, Landroid/media/Metadata;

    invoke-direct {v0}, Landroid/media/Metadata;-><init>()V

    .line 1398
    .local v0, "data":Landroid/media/Metadata;
    invoke-direct {p0, p1, p2, v1}, Landroid/media/MediaPlayer;->native_getMetadata(ZZLandroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1399
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    .line 1409
    .end local v0    # "data":Landroid/media/Metadata;
    :cond_0
    :goto_0
    return-object v0

    .line 1405
    .restart local v0    # "data":Landroid/media/Metadata;
    :cond_1
    invoke-virtual {v0, v1}, Landroid/media/Metadata;->parse(Landroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1406
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    .line 1407
    goto :goto_0
.end method

.method public getParcelParameter(I)Landroid/os/Parcel;
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 1748
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1749
    .local v0, "p":Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->getParameter(ILandroid/os/Parcel;)V

    .line 1750
    return-object v0
.end method

.method public getSelectedTrack(I)I
    .locals 6
    .param p1, "trackType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2517
    const/4 v5, 0x4

    if-ne p1, v5, :cond_0

    iget-object v5, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v5, :cond_0

    .line 2518
    iget-object v5, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v5}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    move-result-object v4

    .line 2519
    .local v4, "subtitleTrack":Landroid/media/SubtitleTrack;
    if-eqz v4, :cond_0

    .line 2520
    iget-object v5, p0, Landroid/media/MediaPlayer;->mOutOfBandSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2521
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 2522
    iget-object v5, p0, Landroid/media/MediaPlayer;->mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    array-length v5, v5

    add-int v3, v5, v0

    .line 2538
    .end local v0    # "index":I
    .end local v4    # "subtitleTrack":Landroid/media/SubtitleTrack;
    :goto_0
    return v3

    .line 2527
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2528
    .local v2, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2530
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v5, "android.media.IMediaPlayer"

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2531
    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2532
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2533
    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 2534
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 2537
    .local v3, "selectedTrack":I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 2537
    .end local v3    # "selectedTrack":I
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2538
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public getStringParameter(I)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 1760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1761
    .local v0, "p":Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->getParameter(ILandroid/os/Parcel;)V

    .line 1762
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1763
    .local v1, "ret":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1764
    return-object v1
.end method

.method public getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1992
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getInbandTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v4

    .line 1994
    .local v4, "trackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    array-length v6, v4

    iget-object v7, p0, Landroid/media/MediaPlayer;->mOutOfBandSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    add-int/2addr v6, v7

    new-array v0, v6, [Landroid/media/MediaPlayer$TrackInfo;

    .line 1995
    .local v0, "allTrackInfo":[Landroid/media/MediaPlayer$TrackInfo;
    array-length v6, v4

    invoke-static {v4, v8, v0, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1996
    array-length v1, v4

    .line 1997
    .local v1, "i":I
    iget-object v6, p0, Landroid/media/MediaPlayer;->mOutOfBandSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/SubtitleTrack;

    .line 1998
    .local v3, "track":Landroid/media/SubtitleTrack;
    invoke-virtual {v3}, Landroid/media/SubtitleTrack;->isTimedText()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x3

    .line 2001
    .local v5, "type":I
    :goto_1
    new-instance v6, Landroid/media/MediaPlayer$TrackInfo;

    invoke-virtual {v3}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Landroid/media/MediaPlayer$TrackInfo;-><init>(ILandroid/media/MediaFormat;)V

    aput-object v6, v0, v1

    .line 2002
    add-int/lit8 v1, v1, 0x1

    .line 2003
    goto :goto_0

    .line 1998
    .end local v5    # "type":I
    :cond_0
    const/4 v5, 0x4

    goto :goto_1

    .line 2004
    .end local v3    # "track":Landroid/media/SubtitleTrack;
    :cond_1
    return-object v0
.end method

.method public native getVideoHeight()I
.end method

.method public native getVideoWidth()I
.end method

.method public invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 4
    .param p1, "request"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;

    .prologue
    .line 699
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    .line 700
    .local v0, "retcode":I
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 701
    if-eqz v0, :cond_0

    .line 702
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failure code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 704
    :cond_0
    return-void
.end method

.method public native isLooping()Z
.end method

.method public native isPlaying()Z
.end method

.method public newRequest()Landroid/os/Parcel;
    .locals 2

    .prologue
    .line 679
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 680
    .local v0, "parcel":Landroid/os/Parcel;
    const-string v1, "android.media.IMediaPlayer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 681
    return-object v0
.end method

.method public onSubtitleTrackSelected(Landroid/media/SubtitleTrack;)V
    .locals 4
    .param p1, "track"    # Landroid/media/SubtitleTrack;

    .prologue
    .line 2144
    iget v1, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    if-ltz v1, :cond_0

    .line 2146
    :try_start_0
    iget v1, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2149
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 2151
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/media/MediaPlayer;->setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;)V

    .line 2152
    if-nez p1, :cond_2

    .line 2168
    :cond_1
    :goto_1
    return-void

    .line 2155
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Landroid/media/MediaPlayer;->mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2156
    iget-object v1, p0, Landroid/media/MediaPlayer;->mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_3

    .line 2157
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selecting subtitle track "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    iput v0, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 2160
    :try_start_1
    iget v1, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/media/MediaPlayer;->selectOrDeselectInbandTrack(IZ)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2163
    :goto_3
    iget-object v1, p0, Landroid/media/MediaPlayer;->mSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    invoke-virtual {p0, v1}, Landroid/media/MediaPlayer;->setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;)V

    goto :goto_1

    .line 2155
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2161
    :catch_0
    move-exception v1

    goto :goto_3

    .line 2147
    .end local v0    # "i":I
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1243
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1244
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_pause()V

    .line 1245
    return-void
.end method

.method public prepare()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1154
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_prepare()V

    .line 1155
    invoke-direct {p0}, Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V

    .line 1156
    return-void
.end method

.method public native prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1498
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1499
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1500
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 1501
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 1502
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1503
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 1504
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1505
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 1506
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 1507
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 1509
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnDurationUpdateListener:Landroid/media/MediaPlayer$OnDurationUpdateListener;

    .line 1511
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    if-eqz v0, :cond_0

    .line 1512
    iget-object v0, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    invoke-virtual {v0}, Landroid/media/MediaPlayer$TimeProvider;->close()V

    .line 1513
    iput-object v1, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    .line 1515
    :cond_0
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    .line 1516
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_release()V

    .line 1517
    return-void
.end method

.method public reset()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1527
    const/4 v2, -0x1

    iput v2, p0, Landroid/media/MediaPlayer;->mSelectedSubtitleTrackIndex:I

    .line 1528
    iget-object v3, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v3

    .line 1529
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1531
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1532
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1535
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_0
    :try_start_2
    iget-object v2, p0, Landroid/media/MediaPlayer;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 1536
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1537
    iget-object v2, p0, Landroid/media/MediaPlayer;->mOutOfBandSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 1538
    new-array v2, v4, [Landroid/media/SubtitleTrack;

    iput-object v2, p0, Landroid/media/MediaPlayer;->mInbandSubtitleTracks:[Landroid/media/SubtitleTrack;

    .line 1539
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v2, :cond_1

    .line 1540
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v2}, Landroid/media/SubtitleController;->reset()V

    .line 1542
    :cond_1
    iget-object v2, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    if-eqz v2, :cond_2

    .line 1543
    iget-object v2, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    invoke-virtual {v2}, Landroid/media/MediaPlayer$TimeProvider;->close()V

    .line 1544
    iput-object v5, p0, Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;

    .line 1547
    :cond_2
    invoke-direct {p0, v4}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1548
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_reset()V

    .line 1550
    iget-object v2, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    if-eqz v2, :cond_3

    .line 1551
    iget-object v2, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, v5}, Landroid/media/MediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1553
    :cond_3
    return-void

    .line 1536
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public native seekTo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public selectTrack(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2571
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->selectOrDeselectTrack(IZ)V

    .line 2572
    return-void
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 4
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1592
    if-nez p1, :cond_0

    .line 1593
    const-string v0, "Cannot set AudioAttributes to null"

    .line 1594
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot set AudioAttributes to null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1596
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    iput v2, p0, Landroid/media/MediaPlayer;->mUsage:I

    .line 1597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1598
    .local v1, "pattributes":Landroid/os/Parcel;
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1599
    const/16 v2, 0x578

    invoke-direct {p0, v2, v1}, Landroid/media/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    .line 1600
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1601
    return-void
.end method

.method public native setAudioSessionId(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setAudioStreamType(I)V
    .locals 0
    .param p1, "streamtype"    # I

    .prologue
    .line 1567
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setAudioStreamType(I)V

    .line 1568
    iput p1, p0, Landroid/media/MediaPlayer;->mStreamType:I

    .line 1569
    return-void
.end method

.method public setAuxEffectSendLevel(F)V
    .locals 1
    .param p1, "level"    # F

    .prologue
    .line 1794
    invoke-direct {p0}, Landroid/media/MediaPlayer;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1798
    :goto_0
    return-void

    .line 1797
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setAuxEffectSendLevel(F)V

    goto :goto_0
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 968
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 969
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 985
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 987
    .local v10, "scheme":Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string v0, "file"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 988
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1034
    :cond_1
    :goto_0
    return-void

    .line 990
    :cond_2
    const-string v0, "content"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "settings"

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 993
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p2

    .line 995
    if-nez p2, :cond_3

    .line 996
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Failed to resolve default ringtone"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1000
    :cond_3
    const/4 v7, 0x0

    .line 1002
    .local v7, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 1003
    .local v9, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v0, "r"

    invoke-virtual {v9, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 1004
    if-nez v7, :cond_4

    .line 1005
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataSource: Null fd! uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    if-eqz v7, :cond_1

    .line 1023
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 1011
    :cond_4
    :try_start_1
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 1012
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1022
    :goto_1
    if-eqz v7, :cond_1

    .line 1023
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 1014
    :cond_5
    :try_start_2
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1017
    .end local v9    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .line 1018
    .local v6, "ex":Ljava/lang/SecurityException;
    :try_start_3
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataSource: SecurityException! uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1022
    if-eqz v7, :cond_6

    .line 1023
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1026
    .end local v6    # "ex":Ljava/lang/SecurityException;
    :cond_6
    :goto_2
    const-string v0, "MediaPlayer"

    const-string v1, "Couldn\'t open file on client side, trying server side"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const-string/jumbo v0, "ro.mtk_bsp_package"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1028
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1019
    :catch_1
    move-exception v6

    .line 1020
    .local v6, "ex":Ljava/io/IOException;
    :try_start_4
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataSource: IOException! uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1022
    if-eqz v7, :cond_6

    .line 1023
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_2

    .line 1022
    .end local v6    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_7

    .line 1023
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_7
    throw v0

    .line 1030
    :cond_8
    const-class v0, Lcom/mediatek/common/media/IOmaSettingHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/common/media/IOmaSettingHelper;

    .line 1032
    .local v8, "helper":Lcom/mediatek/common/media/IOmaSettingHelper;
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, p1, p2, p3}, Lcom/mediatek/common/media/IOmaSettingHelper;->setSettingHeader(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1123
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1124
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1138
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaPlayer;->_setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1139
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1051
    invoke-direct {p0, p1, v0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1052
    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1065
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1066
    .local v3, "keys":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1068
    .local v4, "values":[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1069
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 1070
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 1072
    const/4 v1, 0x0

    .line 1073
    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1074
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v1

    .line 1075
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v1

    .line 1076
    add-int/lit8 v1, v1, 0x1

    .line 1077
    goto :goto_0

    .line 1079
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-direct {p0, p1, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1080
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 719
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 721
    if-eqz p1, :cond_0

    .line 722
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 726
    .local v0, "surface":Landroid/view/Surface;
    :goto_0
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 727
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 728
    return-void

    .line 724
    .end local v0    # "surface":Landroid/view/Surface;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "surface":Landroid/view/Surface;
    goto :goto_0
.end method

.method public native setLooping(Z)V
.end method

.method public setMetadataFilter(Ljava/util/Set;Ljava/util/Set;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1437
    .local p1, "allow":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, "block":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v2

    .line 1443
    .local v2, "request":Landroid/os/Parcel;
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v6

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x4

    add-int v0, v4, v5

    .line 1445
    .local v0, "capacity":I
    invoke-virtual {v2}, Landroid/os/Parcel;->dataCapacity()I

    move-result v4

    if-ge v4, v0, :cond_0

    .line 1446
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 1449
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1450
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1451
    .local v3, "t":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1453
    .end local v3    # "t":Ljava/lang/Integer;
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1454
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1455
    .restart local v3    # "t":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1457
    .end local v3    # "t":Ljava/lang/Integer;
    :cond_2
    invoke-direct {p0, v2}, Landroid/media/MediaPlayer;->native_setMetadataFilter(Landroid/os/Parcel;)I

    move-result v4

    return v4
.end method

.method public native setNextMediaPlayer(Landroid/media/MediaPlayer;)V
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 3010
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 3011
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 2976
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 2977
    return-void
.end method

.method public setOnDurationUpdateListener(Landroid/media/MediaPlayer$OnDurationUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnDurationUpdateListener;

    .prologue
    .line 3787
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnDurationUpdateListener:Landroid/media/MediaPlayer$OnDurationUpdateListener;

    .line 3788
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 3234
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 3235
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnInfoListener;

    .prologue
    .line 3356
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 3357
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 2949
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 2950
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .prologue
    .line 3037
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 3038
    return-void
.end method

.method public setOnSubtitleDataListener(Landroid/media/MediaPlayer$OnSubtitleDataListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSubtitleDataListener;

    .prologue
    .line 3123
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;

    .line 3124
    return-void
.end method

.method public setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnTimedTextListener;

    .prologue
    .line 3098
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 3099
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .prologue
    .line 3069
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 3070
    return-void
.end method

.method public setParameter(II)Z
    .locals 2
    .param p1, "key"    # I
    .param p2, "value"    # I

    .prologue
    .line 1726
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1727
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1728
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 1729
    .local v1, "ret":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1730
    return v1
.end method

.method public setParameter(ILjava/lang/String;)Z
    .locals 2
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1711
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1712
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1713
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 1714
    .local v1, "ret":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1715
    return v1
.end method

.method public setRetransmitEndpoint(Ljava/net/InetSocketAddress;)V
    .locals 6
    .param p1, "endpoint"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2689
    const/4 v0, 0x0

    .line 2690
    .local v0, "addrString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2692
    .local v1, "port":I
    if-eqz p1, :cond_0

    .line 2693
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 2694
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    .line 2697
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/media/MediaPlayer;->native_setRetransmitEndpoint(Ljava/lang/String;I)I

    move-result v2

    .line 2698
    .local v2, "ret":I
    if-eqz v2, :cond_1

    .line 2699
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal re-transmit endpoint; native ret "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2701
    :cond_1
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2
    .param p1, "screenOn"    # Z

    .prologue
    .line 1295
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_1

    .line 1296
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 1297
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :cond_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    .line 1300
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1302
    :cond_1
    return-void
.end method

.method public setSubtitleAnchor(Landroid/media/SubtitleController;Landroid/media/SubtitleController$Anchor;)V
    .locals 1
    .param p1, "controller"    # Landroid/media/SubtitleController;
    .param p2, "anchor"    # Landroid/media/SubtitleController$Anchor;

    .prologue
    .line 2117
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    .line 2118
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0, p2}, Landroid/media/SubtitleController;->setAnchor(Landroid/media/SubtitleController$Anchor;)V

    .line 2119
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 749
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 750
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 753
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 754
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 755
    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    .line 798
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->isVideoScalingModeSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 799
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scaling mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 800
    .local v0, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 802
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 803
    .local v2, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 805
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 806
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 807
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 808
    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 811
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 813
    return-void

    .line 810
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 811
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public setVolume(F)V
    .locals 0
    .param p1, "volume"    # F

    .prologue
    .line 1648
    invoke-virtual {p0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1649
    return-void
.end method

.method public setVolume(FF)V
    .locals 1
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 1635
    invoke-direct {p0}, Landroid/media/MediaPlayer;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1639
    :goto_0
    return-void

    .line 1638
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->_setVolume(FF)V

    goto :goto_0
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 1267
    const/4 v1, 0x0

    .line 1268
    .local v1, "washeld":Z
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 1269
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1270
    const/4 v1, 0x1

    .line 1271
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1273
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1276
    :cond_1
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1277
    .local v0, "pm":Landroid/os/PowerManager;
    const/high16 v2, 0x20000000

    or-int/2addr v2, p2

    const-class v3, Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1278
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1279
    if-eqz v1, :cond_2

    .line 1280
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1282
    :cond_2
    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1181
    invoke-direct {p0}, Landroid/media/MediaPlayer;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1182
    invoke-direct {p0, v1, v1}, Landroid/media/MediaPlayer;->_setVolume(FF)V

    .line 1184
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1185
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_start()V

    .line 1186
    return-void
.end method

.method public startWithoutWakelock()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1193
    invoke-direct {p0}, Landroid/media/MediaPlayer;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    invoke-direct {p0, v1, v1}, Landroid/media/MediaPlayer;->_setVolume(FF)V

    .line 1197
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_start()V

    .line 1198
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1230
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1231
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_stop()V

    .line 1232
    return-void
.end method
