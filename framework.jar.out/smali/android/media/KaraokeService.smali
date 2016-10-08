.class public Landroid/media/KaraokeService;
.super Landroid/media/IKaraokeService$Stub;
.source "KaraokeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/KaraokeService$1;,
        Landroid/media/KaraokeService$KaraokeAPI;,
        Landroid/media/KaraokeService$OpenDeviceDeathHandler;,
        Landroid/media/KaraokeService$KaraokeHandler;,
        Landroid/media/KaraokeService$KaraokeSystemThread;
    }
.end annotation


# static fields
.field private static final AUDIO_EFFECTS_LOAD_TIMEOUT_MS:I = 0x1e

.field private static final EFFECT_NONE:I = 0x0

.field private static final MSG_CLOSE_KARAOKE_DEVICE:I = 0xcd

.field private static final MSG_OPEN_KARAOKE_DEVICE:I = 0xc8

.field private static final MSG_SET_EAR_FEEDBACK_VOLUME:I = 0xcb

.field private static final MSG_SET_KARAOKE_EFFECT:I = 0xca

.field private static final MSG_SET_KARAOKE_MODE:I = 0xc9

.field private static final MSG_SET_MUSIC_PITCH_LEVEL:I = 0xd3

.field private static final MSG_SET_USER_MODE_ECHO_DELAY:I = 0xcf

.field private static final MSG_SET_USER_MODE_ECHO_FEEDBACK:I = 0xd0

.field private static final MSG_SET_USER_MODE_EFFECT_LEVEL:I = 0xd1

.field private static final MSG_SET_USER_MODE_EQUAL_LEVEL:I = 0xd2

.field private static final MSG_SET_USER_MODE_REVERB:I = 0xce

.field private static final MSG_SUPPORT_AUDIO_EFFECTS:I = 0xcc

.field private static final MSG_SYSTEM_READY:I = 0x4

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KaraokeService"


# instance fields
.field protected mAudioManager:Landroid/media/AudioManager;

.field private mChangbaTips:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mKaraokHandler:Landroid/media/KaraokeService$KaraokeHandler;

.field private mKaraokeAPI:Landroid/media/KaraokeService$KaraokeAPI;

.field private mKaraokeEarVolume:I

.field private mKaraokeEffect:I

.field private mKaraokeManager:Landroid/media/KaraokeManager;

.field private mKaraokeMode:I

.field private mKaraokeMusicPitchLevel:I

.field private mKaraokeState:I

.field private mKaraokeSupportEffect:I

.field private mKaraokeSystemThread:Landroid/media/KaraokeService$KaraokeSystemThread;

.field private mKaraokeUserModeEchoDelay:I

.field private mKaraokeUserModeEchoFeedback:I

.field private mKaraokeUserModeEffectLevel:I

.field private mKaraokeUserModeEqualLevel:I

.field private mKaraokeUserModeReverb:I

.field private final mOpenDeviceDeathHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/KaraokeService$OpenDeviceDeathHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Landroid/media/IKaraokeService$Stub;-><init>()V

    .line 53
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;

    .line 81
    iput v2, p0, Landroid/media/KaraokeService;->mKaraokeState:I

    .line 82
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/KaraokeService;->mKaraokeMode:I

    .line 83
    const/16 v1, 0x400

    iput v1, p0, Landroid/media/KaraokeService;->mKaraokeEffect:I

    .line 84
    const/16 v1, 0x1e

    iput v1, p0, Landroid/media/KaraokeService;->mKaraokeEarVolume:I

    .line 85
    iput v2, p0, Landroid/media/KaraokeService;->mKaraokeUserModeReverb:I

    .line 86
    iput v2, p0, Landroid/media/KaraokeService;->mKaraokeUserModeEchoDelay:I

    .line 87
    iput v2, p0, Landroid/media/KaraokeService;->mKaraokeUserModeEchoFeedback:I

    .line 88
    iput v2, p0, Landroid/media/KaraokeService;->mKaraokeUserModeEffectLevel:I

    .line 89
    iput v2, p0, Landroid/media/KaraokeService;->mKaraokeUserModeEqualLevel:I

    .line 90
    iput v2, p0, Landroid/media/KaraokeService;->mKaraokeMusicPitchLevel:I

    .line 91
    const v1, 0x38400

    iput v1, p0, Landroid/media/KaraokeService;->mKaraokeSupportEffect:I

    .line 95
    iput-object v3, p0, Landroid/media/KaraokeService;->mKaraokeAPI:Landroid/media/KaraokeService$KaraokeAPI;

    .line 97
    iput-object v3, p0, Landroid/media/KaraokeService;->mChangbaTips:Ljava/lang/String;

    .line 106
    iput-object p1, p0, Landroid/media/KaraokeService;->mContext:Landroid/content/Context;

    .line 107
    const-string v1, "karaoke"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/KaraokeManager;

    iput-object v1, p0, Landroid/media/KaraokeService;->mKaraokeManager:Landroid/media/KaraokeManager;

    .line 110
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Landroid/media/KaraokeService;->mAudioManager:Landroid/media/AudioManager;

    .line 113
    invoke-direct {p0}, Landroid/media/KaraokeService;->createKaraokeSystemThread()V

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 117
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x10406b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/KaraokeService;->mChangbaTips:Ljava/lang/String;

    .line 119
    new-instance v1, Landroid/media/KaraokeService$KaraokeAPI;

    invoke-direct {v1, p0}, Landroid/media/KaraokeService$KaraokeAPI;-><init>(Landroid/media/KaraokeService;)V

    iput-object v1, p0, Landroid/media/KaraokeService;->mKaraokeAPI:Landroid/media/KaraokeService$KaraokeAPI;

    .line 121
    return-void
.end method

.method static synthetic access$002(Landroid/media/KaraokeService;Landroid/media/KaraokeService$KaraokeHandler;)Landroid/media/KaraokeService$KaraokeHandler;
    .locals 0
    .param p0, "x0"    # Landroid/media/KaraokeService;
    .param p1, "x1"    # Landroid/media/KaraokeService$KaraokeHandler;

    .prologue
    .line 42
    iput-object p1, p0, Landroid/media/KaraokeService;->mKaraokHandler:Landroid/media/KaraokeService$KaraokeHandler;

    return-object p1
.end method

.method static synthetic access$1002(Landroid/media/KaraokeService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/KaraokeService;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Landroid/media/KaraokeService;->mKaraokeUserModeEchoFeedback:I

    return p1
.end method

.method static synthetic access$1102(Landroid/media/KaraokeService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/KaraokeService;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Landroid/media/KaraokeService;->mKaraokeUserModeEffectLevel:I

    return p1
.end method

.method static synthetic access$1202(Landroid/media/KaraokeService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/KaraokeService;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Landroid/media/KaraokeService;->mKaraokeUserModeEqualLevel:I

    return p1
.end method

.method static synthetic access$1302(Landroid/media/KaraokeService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/KaraokeService;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Landroid/media/KaraokeService;->mKaraokeMusicPitchLevel:I

    return p1
.end method

.method static synthetic access$200(Landroid/media/KaraokeService;)Landroid/media/KaraokeService$KaraokeAPI;
    .locals 1
    .param p0, "x0"    # Landroid/media/KaraokeService;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/media/KaraokeService;->mKaraokeAPI:Landroid/media/KaraokeService$KaraokeAPI;

    return-object v0
.end method

.method static synthetic access$302(Landroid/media/KaraokeService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/KaraokeService;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Landroid/media/KaraokeService;->mKaraokeState:I

    return p1
.end method

.method static synthetic access$400(Landroid/media/KaraokeService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/media/KaraokeService;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$502(Landroid/media/KaraokeService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/KaraokeService;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Landroid/media/KaraokeService;->mKaraokeMode:I

    return p1
.end method

.method static synthetic access$602(Landroid/media/KaraokeService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/KaraokeService;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Landroid/media/KaraokeService;->mKaraokeEffect:I

    return p1
.end method

.method static synthetic access$702(Landroid/media/KaraokeService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/KaraokeService;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Landroid/media/KaraokeService;->mKaraokeEarVolume:I

    return p1
.end method

.method static synthetic access$802(Landroid/media/KaraokeService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/KaraokeService;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Landroid/media/KaraokeService;->mKaraokeUserModeReverb:I

    return p1
.end method

.method static synthetic access$902(Landroid/media/KaraokeService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/KaraokeService;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Landroid/media/KaraokeService;->mKaraokeUserModeEchoDelay:I

    return p1
.end method

.method private createKaraokeSystemThread()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Landroid/media/KaraokeService$KaraokeSystemThread;

    invoke-direct {v0, p0}, Landroid/media/KaraokeService$KaraokeSystemThread;-><init>(Landroid/media/KaraokeService;)V

    iput-object v0, p0, Landroid/media/KaraokeService;->mKaraokeSystemThread:Landroid/media/KaraokeService$KaraokeSystemThread;

    .line 144
    iget-object v0, p0, Landroid/media/KaraokeService;->mKaraokeSystemThread:Landroid/media/KaraokeService$KaraokeSystemThread;

    invoke-virtual {v0}, Landroid/media/KaraokeService$KaraokeSystemThread;->start()V

    .line 145
    invoke-direct {p0}, Landroid/media/KaraokeService;->waitForKaraokeHandlerCreation()V

    .line 146
    return-void
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 4
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 126
    if-nez p2, :cond_1

    .line 127
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    :cond_0
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p6

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 136
    :goto_0
    return-void

    .line 128
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "KaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMsg: Msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " existed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private waitForKaraokeHandlerCreation()V
    .locals 3

    .prologue
    .line 150
    monitor-enter p0

    .line 151
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/media/KaraokeService;->mKaraokHandler:Landroid/media/KaraokeService$KaraokeHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 154
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "KaraokeService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 160
    return-void
.end method


# virtual methods
.method public closeKaraokeDevice()V
    .locals 4

    .prologue
    .line 307
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 308
    .local v0, "pid":I
    const-string v1, "KaraokeService"

    const-string v2, "close kalaoke device message received: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v1, p0, Landroid/media/KaraokeService;->mKaraokeAPI:Landroid/media/KaraokeService$KaraokeAPI;

    invoke-virtual {v1}, Landroid/media/KaraokeService$KaraokeAPI;->disableKaraoke()V

    .line 310
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/KaraokeService;->mKaraokeState:I

    .line 311
    iget-object v2, p0, Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;

    monitor-enter v2

    .line 312
    :try_start_0
    iget-object v1, p0, Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/KaraokeService$OpenDeviceDeathHandler;

    invoke-virtual {v1}, Landroid/media/KaraokeService$OpenDeviceDeathHandler;->release()V

    .line 314
    iget-object v1, p0, Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_0
    monitor-exit v2

    .line 317
    return-void

    .line 316
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 669
    iget-object v3, p0, Landroid/media/KaraokeService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    const-string v5, "KaraokeService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string v3, "karaoke death handler:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 672
    iget-object v3, p0, Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 673
    .local v2, "set":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 674
    .local v1, "i":Ljava/util/Iterator;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "num: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 675
    const-string v3, "list: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 676
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 677
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 678
    .local v0, "device":Ljava/util/Map$Entry;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " handler"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 681
    .end local v0    # "device":Ljava/util/Map$Entry;
    :cond_0
    return-void
.end method

.method public getEarFeedbackVolume()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Landroid/media/KaraokeService;->mKaraokeEarVolume:I

    return v0
.end method

.method public getKaraokeEffect()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Landroid/media/KaraokeService;->mKaraokeEffect:I

    return v0
.end method

.method public getKaraokeMode()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Landroid/media/KaraokeService;->mKaraokeMode:I

    return v0
.end method

.method public getKaraokeState()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Landroid/media/KaraokeService;->mKaraokeState:I

    return v0
.end method

.method public getMusicPitchLevel()I
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Landroid/media/KaraokeService;->mKaraokeMusicPitchLevel:I

    return v0
.end method

.method public getShareTips()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Landroid/media/KaraokeService;->mChangbaTips:Ljava/lang/String;

    return-object v0
.end method

.method public getUserModeEchoDelay()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Landroid/media/KaraokeService;->mKaraokeUserModeEchoDelay:I

    return v0
.end method

.method public getUserModeEchoFeedback()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Landroid/media/KaraokeService;->mKaraokeUserModeEchoFeedback:I

    return v0
.end method

.method public getUserModeEffectLevel()I
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Landroid/media/KaraokeService;->mKaraokeUserModeEffectLevel:I

    return v0
.end method

.method public getUserModeEqualLevel()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Landroid/media/KaraokeService;->mKaraokeUserModeEqualLevel:I

    return v0
.end method

.method public getUserModeReverberation()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Landroid/media/KaraokeService;->mKaraokeUserModeReverb:I

    return v0
.end method

.method public isSupportedAudioEffect(I)I
    .locals 1
    .param p1, "audioeffect_id"    # I

    .prologue
    .line 439
    iget v0, p0, Landroid/media/KaraokeService;->mKaraokeSupportEffect:I

    and-int/2addr v0, p1

    return v0
.end method

.method public openKaraokeDevice(Landroid/os/IBinder;)I
    .locals 7
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x0

    .line 277
    iget-object v3, p0, Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;

    monitor-enter v3

    .line 278
    :try_start_0
    iget-object v2, p0, Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 279
    iget-object v2, p0, Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    iget-object v2, p0, Landroid/media/KaraokeService;->mKaraokeAPI:Landroid/media/KaraokeService$KaraokeAPI;

    invoke-virtual {v2}, Landroid/media/KaraokeService$KaraokeAPI;->enableKaraoke()V

    .line 281
    :cond_0
    new-instance v1, Landroid/media/KaraokeService$OpenDeviceDeathHandler;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-direct {v1, p0, p1, v2}, Landroid/media/KaraokeService$OpenDeviceDeathHandler;-><init>(Landroid/media/KaraokeService;Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    .local v1, "odhdlr":Landroid/media/KaraokeService$OpenDeviceDeathHandler;
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 285
    iget-object v2, p0, Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    .end local v1    # "odhdlr":Landroid/media/KaraokeService$OpenDeviceDeathHandler;
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 297
    return v6

    .line 287
    .restart local v1    # "odhdlr":Landroid/media/KaraokeService$OpenDeviceDeathHandler;
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 291
    iget-object v2, p0, Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_2
    const-string v2, "KaraokeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "openKaraokeDevice() could not link to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " binder death"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "odhdlr":Landroid/media/KaraokeService$OpenDeviceDeathHandler;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public setEarFeedbackVolume(I)I
    .locals 2
    .param p1, "volume"    # I

    .prologue
    .line 354
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 355
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xcb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 356
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 357
    iget-object v1, p0, Landroid/media/KaraokeService;->mKaraokHandler:Landroid/media/KaraokeService$KaraokeHandler;

    invoke-virtual {v1, v0}, Landroid/media/KaraokeService$KaraokeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 358
    const/4 v1, 0x0

    return v1
.end method

.method public setKaraokeEffect(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 341
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 342
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xca

    iput v1, v0, Landroid/os/Message;->what:I

    .line 343
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 344
    iget-object v1, p0, Landroid/media/KaraokeService;->mKaraokHandler:Landroid/media/KaraokeService$KaraokeHandler;

    invoke-virtual {v1, v0}, Landroid/media/KaraokeService$KaraokeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 345
    const/4 v1, 0x0

    return v1
.end method

.method public setKaraokeMode(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 329
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 330
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xc9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 331
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 332
    iget-object v1, p0, Landroid/media/KaraokeService;->mKaraokHandler:Landroid/media/KaraokeService$KaraokeHandler;

    invoke-virtual {v1, v0}, Landroid/media/KaraokeService$KaraokeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 333
    const/4 v1, 0x0

    return v1
.end method

.method public setMusicPitchLevel(I)I
    .locals 2
    .param p1, "pitchLevel"    # I

    .prologue
    .line 426
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 427
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xd3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 428
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 429
    iget-object v1, p0, Landroid/media/KaraokeService;->mKaraokHandler:Landroid/media/KaraokeService$KaraokeHandler;

    invoke-virtual {v1, v0}, Landroid/media/KaraokeService$KaraokeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 430
    const/4 v1, 0x0

    return v1
.end method

.method public setUserModeEchoDelay(I)I
    .locals 2
    .param p1, "echoDelay"    # I

    .prologue
    .line 378
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 379
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xcf

    iput v1, v0, Landroid/os/Message;->what:I

    .line 380
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 381
    iget-object v1, p0, Landroid/media/KaraokeService;->mKaraokHandler:Landroid/media/KaraokeService$KaraokeHandler;

    invoke-virtual {v1, v0}, Landroid/media/KaraokeService$KaraokeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 382
    const/4 v1, 0x0

    return v1
.end method

.method public setUserModeEchoFeedback(I)I
    .locals 2
    .param p1, "feedback"    # I

    .prologue
    .line 390
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 391
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xd0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 392
    iget-object v1, p0, Landroid/media/KaraokeService;->mKaraokHandler:Landroid/media/KaraokeService$KaraokeHandler;

    invoke-virtual {v1, v0}, Landroid/media/KaraokeService$KaraokeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 393
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 394
    const/4 v1, 0x0

    return v1
.end method

.method public setUserModeEffectLevel(I)I
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 402
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 403
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xd1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 404
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 405
    iget-object v1, p0, Landroid/media/KaraokeService;->mKaraokHandler:Landroid/media/KaraokeService$KaraokeHandler;

    invoke-virtual {v1, v0}, Landroid/media/KaraokeService$KaraokeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 406
    const/4 v1, 0x0

    return v1
.end method

.method public setUserModeEqualLevel(I)I
    .locals 2
    .param p1, "equalLevel"    # I

    .prologue
    .line 414
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 415
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xd2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 416
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 417
    iget-object v1, p0, Landroid/media/KaraokeService;->mKaraokHandler:Landroid/media/KaraokeService$KaraokeHandler;

    invoke-virtual {v1, v0}, Landroid/media/KaraokeService$KaraokeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 418
    const/4 v1, 0x0

    return v1
.end method

.method public setUserModeReverberation(I)I
    .locals 2
    .param p1, "reverb"    # I

    .prologue
    .line 366
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 367
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xce

    iput v1, v0, Landroid/os/Message;->what:I

    .line 368
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 369
    iget-object v1, p0, Landroid/media/KaraokeService;->mKaraokHandler:Landroid/media/KaraokeService$KaraokeHandler;

    invoke-virtual {v1, v0}, Landroid/media/KaraokeService$KaraokeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 370
    const/4 v1, 0x0

    return v1
.end method

.method public systemReady()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 139
    iget-object v0, p0, Landroid/media/KaraokeService;->mKaraokHandler:Landroid/media/KaraokeService$KaraokeHandler;

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/KaraokeService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 140
    return-void
.end method
