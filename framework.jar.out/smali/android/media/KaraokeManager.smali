.class public Landroid/media/KaraokeManager;
.super Ljava/lang/Object;
.source "KaraokeManager.java"


# static fields
.field public static final EAR_FB_DRY_SOUND:I = 0x1

.field public static final EAR_FB_MUSIC:I = 0x4

.field public static final EAR_FB_WET_SOUND:I = 0x2

.field public static final EFFECT_BABY:I = 0x10

.field public static final EFFECT_CAT:I = 0x4

.field public static final EFFECT_DANCE:I = 0x100

.field public static final EFFECT_DOG:I = 0x8

.field public static final EFFECT_GRAMOPHONE:I = 0x2

.field public static final EFFECT_LIVE_CONCERT:I = 0x10000

.field public static final EFFECT_LIVE_GOD:I = 0x4000

.field public static final EFFECT_LIVE_KTV:I = 0x20000

.field public static final EFFECT_LIVE_MAGIC:I = 0x800

.field public static final EFFECT_LIVE_ORIGINAL:I = 0x400

.field public static final EFFECT_LIVE_PROFFESSION:I = 0x2000

.field public static final EFFECT_LIVE_SIGNER:I = 0x1000

.field public static final EFFECT_LIVE_STUDIO:I = 0x80000

.field public static final EFFECT_LIVE_THEATER:I = 0x8000

.field public static final EFFECT_LIVE_VALLEY:I = 0x40000

.field public static final EFFECT_NEW_CENT:I = 0x200

.field public static final EFFECT_ORIGINAL:I = 0x1

.field public static final EFFECT_POPULAR:I = 0x80

.field public static final EFFECT_RNB:I = 0x20

.field public static final EFFECT_ROCK:I = 0x40

.field public static final KARAOKE_DRY_SOUND_RECORD:I = 0x1

.field public static final KARAOKE_RESULT_ERROR:I = -0x1

.field public static final KARAOKE_RESULT_OK:I = 0x0

.field public static final KARAOKE_STATE_CLOSE:I = 0x0

.field public static final KARAOKE_STATE_OPEN:I = 0x1

.field public static final KARAOKE_WET_SOUND_RECORD:I = 0x14

.field private static TAG:Ljava/lang/String;

.field private static sService:Landroid/media/IKaraokeService;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mICallBack:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "KaraokeManager"

    sput-object v0, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    sput-object v0, Landroid/media/KaraokeManager;->sService:Landroid/media/IKaraokeService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/KaraokeManager;->mICallBack:Landroid/os/IBinder;

    .line 75
    sget-object v0, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v1, "in KaraokeManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iput-object p1, p0, Landroid/media/KaraokeManager;->mContext:Landroid/content/Context;

    .line 77
    return-void
.end method

.method private static getKaraokeService()Landroid/media/IKaraokeService;
    .locals 3

    .prologue
    .line 80
    sget-object v1, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v2, "in getKaraokeService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-object v1, Landroid/media/KaraokeManager;->sService:Landroid/media/IKaraokeService;

    if-eqz v1, :cond_0

    .line 82
    sget-object v1, Landroid/media/KaraokeManager;->sService:Landroid/media/IKaraokeService;

    .line 86
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 84
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "karaoke"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 85
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IKaraokeService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IKaraokeService;

    move-result-object v1

    sput-object v1, Landroid/media/KaraokeManager;->sService:Landroid/media/IKaraokeService;

    .line 86
    sget-object v1, Landroid/media/KaraokeManager;->sService:Landroid/media/IKaraokeService;

    goto :goto_0
.end method


# virtual methods
.method public closeKaraokeDevice()V
    .locals 4

    .prologue
    .line 370
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "in closeKaraokeDevice"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v1

    .line 373
    .local v1, "service":Landroid/media/IKaraokeService;
    if-eqz v1, :cond_0

    .line 374
    :try_start_0
    invoke-interface {v1}, Landroid/media/IKaraokeService;->closeKaraokeDevice()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in closeKaraokeDevice"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getEarFeedbackVolume()I
    .locals 5

    .prologue
    .line 194
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "in getEarFeedbackVolume"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v2, 0x0

    .line 196
    .local v2, "volume":I
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v1

    .line 198
    .local v1, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IKaraokeService;->getEarFeedbackVolume()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 203
    :goto_0
    return v2

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in setEarFeedbackVolume"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getKaraokeEffect()I
    .locals 5

    .prologue
    .line 171
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "in getKaraokeEffect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/16 v1, 0x400

    .line 173
    .local v1, "effect":I
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v2

    .line 175
    .local v2, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v2}, Landroid/media/IKaraokeService;->getKaraokeEffect()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 179
    :goto_0
    return v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in getKaraokeEffect"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getKaraokeMode()I
    .locals 5

    .prologue
    .line 148
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "in getKaraokeMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v1, 0x2

    .line 150
    .local v1, "mode":I
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v2

    .line 152
    .local v2, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v2}, Landroid/media/IKaraokeService;->getKaraokeMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 156
    :goto_0
    return v1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in getKaraokeMode"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getKaraokeState()I
    .locals 5

    .prologue
    .line 125
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "in getKaraokeState"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v1

    .line 127
    .local v1, "service":Landroid/media/IKaraokeService;
    const/4 v2, 0x0

    .line 129
    .local v2, "state":I
    :try_start_0
    invoke-interface {v1}, Landroid/media/IKaraokeService;->getKaraokeState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 133
    :goto_0
    return v2

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in openKaraokeDevice"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getMusicPitchLevel()I
    .locals 5

    .prologue
    .line 344
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "in getMusicPitchLevel"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v1, 0x0

    .line 346
    .local v1, "pitchLevel":I
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v2

    .line 348
    .local v2, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v2}, Landroid/media/IKaraokeService;->getMusicPitchLevel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 353
    :goto_0
    return v1

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in getMusicPitchLevel"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getShareTips()Ljava/lang/String;
    .locals 5

    .prologue
    .line 95
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "in getShareTips"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v2, 0x0

    .line 97
    .local v2, "tips":Ljava/lang/String;
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v1

    .line 99
    .local v1, "service":Landroid/media/IKaraokeService;
    if-eqz v1, :cond_0

    .line 100
    :try_start_0
    invoke-interface {v1}, Landroid/media/IKaraokeService;->getShareTips()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 104
    :cond_0
    :goto_0
    return-object v2

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in openKaraokeDevice"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getUserModeEchoDelay()I
    .locals 5

    .prologue
    .line 244
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "in getUserModeEchoDelay"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v1, 0x0

    .line 246
    .local v1, "echoDelay":I
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v2

    .line 248
    .local v2, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v2}, Landroid/media/IKaraokeService;->getUserModeEchoDelay()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 253
    :goto_0
    return v1

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in getUserModeEchoDelay"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getUserModeEchoFeedback()I
    .locals 5

    .prologue
    .line 269
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "in getUserModeEchoFeedback"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v1, 0x0

    .line 271
    .local v1, "feedback":I
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v2

    .line 273
    .local v2, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v2}, Landroid/media/IKaraokeService;->getUserModeEchoFeedback()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 278
    :goto_0
    return v1

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in getUserModeEchoFeedback"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getUserModeEffectLevel()I
    .locals 5

    .prologue
    .line 294
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "in getUserModeEffectLevel"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v1, 0x0

    .line 296
    .local v1, "effectLevel":I
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v2

    .line 298
    .local v2, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v2}, Landroid/media/IKaraokeService;->getUserModeEffectLevel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 303
    :goto_0
    return v1

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in getUserModeEffectLevel"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getUserModeEqualLevel()I
    .locals 5

    .prologue
    .line 319
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "in getUserModeEqualLevel"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v1, 0x0

    .line 321
    .local v1, "equalLevel":I
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v2

    .line 323
    .local v2, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v2}, Landroid/media/IKaraokeService;->getUserModeEqualLevel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 328
    :goto_0
    return v1

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in getUserModeEqualLevel"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getUserModeReverberation()I
    .locals 5

    .prologue
    .line 219
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "in getUserModeReverberation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v1, 0x0

    .line 221
    .local v1, "reverb":I
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v2

    .line 223
    .local v2, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v2}, Landroid/media/IKaraokeService;->getUserModeReverberation()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 228
    :goto_0
    return v1

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in getUserModeReverberation"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isDeviceSupportKaraoke()Z
    .locals 2

    .prologue
    .line 108
    sget-object v0, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v1, "in isDeviceSupportKaraoke"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public isLenovoKSeries()Z
    .locals 2

    .prologue
    .line 90
    sget-object v0, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v1, "in isLenovoKSeries"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method isSupportedAudioEffect(I)I
    .locals 5
    .param p1, "audioeffect_id"    # I

    .prologue
    .line 357
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "in isSupportedAudioEffect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v1, 0x0

    .line 359
    .local v1, "isSupported":I
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v2

    .line 361
    .local v2, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/media/IKaraokeService;->isSupportedAudioEffect(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    return v1

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in isSupportedAudioEffect"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public openKaraokeDevice()I
    .locals 4

    .prologue
    .line 113
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "in openKaraokeDevice"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v1

    .line 116
    .local v1, "service":Landroid/media/IKaraokeService;
    if-eqz v1, :cond_0

    .line 117
    :try_start_0
    iget-object v2, p0, Landroid/media/KaraokeManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/IKaraokeService;->openKaraokeDevice(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in openKaraokeDevice"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setEarFeedbackVolume(I)I
    .locals 4
    .param p1, "volume"    # I

    .prologue
    .line 183
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "in setEarFeedbackVolume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v1

    .line 186
    .local v1, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IKaraokeService;->setEarFeedbackVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setEarFeedbackVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setKaraokeEffect(I)I
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 160
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "in setKaraokeEffect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v1

    .line 163
    .local v1, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IKaraokeService;->setKaraokeEffect(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setKaraokeEffect"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setKaraokeMode(I)I
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 137
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "in setKaraokeMode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v1

    .line 140
    .local v1, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IKaraokeService;->setKaraokeMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in openKaraokeDevice"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMusicPitchLevel(I)I
    .locals 4
    .param p1, "pitchLevel"    # I

    .prologue
    .line 332
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "in setMusicPitchLevel"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v1

    .line 335
    .local v1, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IKaraokeService;->setMusicPitchLevel(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setMusicPitchLevel"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setUserModeEchoDelay(I)I
    .locals 4
    .param p1, "echoDelay"    # I

    .prologue
    .line 232
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "in setUserModeEchoDelay"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v1

    .line 235
    .local v1, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IKaraokeService;->setUserModeEchoDelay(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setUserModeEchoDelay"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setUserModeEchoFeedback(I)I
    .locals 4
    .param p1, "feedback"    # I

    .prologue
    .line 257
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "in setUserModeEchoFeedback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v1

    .line 260
    .local v1, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IKaraokeService;->setUserModeEchoFeedback(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setUserModeEchoFeedback"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setUserModeEffectLevel(I)I
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 282
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "in setUserModeEffectLevel"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v1

    .line 285
    .local v1, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IKaraokeService;->setUserModeEffectLevel(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setUserModeEffectLevel"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setUserModeEqualLevel(I)I
    .locals 4
    .param p1, "equalLevel"    # I

    .prologue
    .line 307
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "in setUserModeEqualLevel"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v1

    .line 310
    .local v1, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IKaraokeService;->setUserModeEqualLevel(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setUserModeEqualLevel"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setUserModeReverberation(I)I
    .locals 4
    .param p1, "reverb"    # I

    .prologue
    .line 207
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "in setUserModeReverberation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v1

    .line 210
    .local v1, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IKaraokeService;->setUserModeReverberation(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setEarFeedbackVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
