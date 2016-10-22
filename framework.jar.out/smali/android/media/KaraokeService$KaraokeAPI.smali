.class public Landroid/media/KaraokeService$KaraokeAPI;
.super Ljava/lang/Object;
.source "KaraokeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/KaraokeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KaraokeAPI"
.end annotation


# static fields
.field private static final KEY_KARAOKE_DRYWETMIX:Ljava/lang/String; = "karaoke_DryWetMix"

.field private static final KEY_KARAOKE_ECHOREVERB:Ljava/lang/String; = "karaoke_EchoReverb"

.field private static final KEY_KARAOKE_FBVOLUME:Ljava/lang/String; = "karaoke_FBVolume"

.field private static final KEY_KARAOKE_MACHINE:Ljava/lang/String; = "karaoke_machine"

.field private static final KEY_KARAOKE_MUSIC_PITCH_LEVEL:Ljava/lang/String; = "karaoke_MusicPitch"

.field private static final KEY_KARAOKE_PRESETS:Ljava/lang/String; = "karaoke_Presets"

.field private static final KEY_KARAOKE_USER_MODE_ECHO_DELAY:Ljava/lang/String; = "karaoke_UserModeEchoDelay"

.field private static final KEY_KARAOKE_USER_MODE_ECHO_FEEDBACK:Ljava/lang/String; = "karaoke_UserModeFeedback"

.field private static final KEY_KARAOKE_USER_MODE_EFFECT_LEVEL:Ljava/lang/String; = "karaoke_UserModeEffectLevel"

.field private static final KEY_KARAOKE_USER_MODE_EQUAL_LEVEL:Ljava/lang/String; = "karaoke_UserModeEqualizer"

.field private static final KEY_KARAOKE_USER_MODE_REVERB:Ljava/lang/String; = "karaoke_UserModeReverb"

.field private static final RANGE_ECHO_DRY_WET_LEVEL:I = 0x0

.field private static final RANGE_ECHO_PRESETS:I = 0x1

.field private static final RANGE_FEEDBACK_VOL:I = 0x2

.field private static final RANGE_MUSIC_PITCH_LEVEL:I = 0x8

.field private static final RANGE_USER_MODE_ECHO_DELAY:I = 0x4

.field private static final RANGE_USER_MODE_ECHO_FEEDBACK:I = 0x5

.field private static final RANGE_USER_MODE_EFFECT_LEVEL:I = 0x6

.field private static final RANGE_USER_MODE_EQUAL_LEVEL:I = 0x7

.field private static final RANGE_USER_MODE_REVERB:I = 0x3

.field private static final wrong_argv:Ljava/lang/String; = "Wrong argument"


# instance fields
.field private final iranges:[[I

.field private mEchoReverbPreset:I

.field private mVocalDryWetMix:I

.field final synthetic this$0:Landroid/media/KaraokeService;


# direct methods
.method public constructor <init>(Landroid/media/KaraokeService;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 658
    iput-object p1, p0, Landroid/media/KaraokeService$KaraokeAPI;->this$0:Landroid/media/KaraokeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/media/KaraokeService$KaraokeAPI;->iranges:[[I

    .line 508
    iput v4, p0, Landroid/media/KaraokeService$KaraokeAPI;->mEchoReverbPreset:I

    .line 509
    iput v4, p0, Landroid/media/KaraokeService$KaraokeAPI;->mVocalDryWetMix:I

    .line 659
    return-void

    .line 484
    nop

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x64
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x64
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x64
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x64
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x64
    .end array-data

    :array_7
    .array-data 4
        0x1
        0xb
    .end array-data

    :array_8
    .array-data 4
        -0x3
        0x3
    .end array-data
.end method

.method private checkRange(II)Z
    .locals 3
    .param p1, "value"    # I
    .param p2, "index"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 648
    iget-object v2, p0, Landroid/media/KaraokeService$KaraokeAPI;->iranges:[[I

    aget-object v2, v2, p2

    aget v2, v2, v1

    if-lt p1, v2, :cond_0

    iget-object v2, p0, Landroid/media/KaraokeService$KaraokeAPI;->iranges:[[I

    aget-object v2, v2, p2

    aget v2, v2, v0

    if-le p1, v2, :cond_1

    :cond_0
    move v0, v1

    .line 650
    :cond_1
    return v0
.end method

.method private final panicClient(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 656
    return-void
.end method


# virtual methods
.method public disableKaraoke()V
    .locals 2

    .prologue
    .line 520
    const-string v0, "KaraokeService"

    const-string v1, "disableKaraoke"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeAPI;->this$0:Landroid/media/KaraokeService;

    iget-object v0, v0, Landroid/media/KaraokeService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "karaoke_machine=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 522
    return-void
.end method

.method public enableKaraoke()V
    .locals 2

    .prologue
    .line 513
    const-string v0, "KaraokeService"

    const-string v1, "enableKaraoke "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeAPI;->this$0:Landroid/media/KaraokeService;

    iget-object v0, v0, Landroid/media/KaraokeService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "karaoke_machine=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeAPI;->this$0:Landroid/media/KaraokeService;

    iget-object v0, v0, Landroid/media/KaraokeService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "karaoke_DryWetMix=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 663
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 664
    return-void
.end method

.method public getFeedbackVol()I
    .locals 2

    .prologue
    .line 640
    const-string v0, "KaraokeService"

    const-string v1, "getFeedbackVol"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeAPI;->this$0:Landroid/media/KaraokeService;

    iget-object v0, v0, Landroid/media/KaraokeService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "karaoke_FBVolume"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVocalDryWetMix()I
    .locals 2

    .prologue
    .line 633
    const-string v0, "KaraokeService"

    const-string v1, "getVocalDryWetMix"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeAPI;->this$0:Landroid/media/KaraokeService;

    iget-object v0, v0, Landroid/media/KaraokeService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "karaoke_DryWetMix"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVocalEchoReverbPreset()I
    .locals 2

    .prologue
    .line 626
    const-string v0, "KaraokeService"

    const-string v1, "getVocalEchoReverbPreset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeAPI;->this$0:Landroid/media/KaraokeService;

    iget-object v0, v0, Landroid/media/KaraokeService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "karaoke_EchoReverb"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isDeviceSupportKaraoke()Z
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x1

    return v0
.end method

.method public setFeedbackVol(I)V
    .locals 3
    .param p1, "volume"    # I

    .prologue
    .line 559
    const-string v0, "KaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFeedbackVolume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/media/KaraokeService$KaraokeAPI;->checkRange(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeAPI;->this$0:Landroid/media/KaraokeService;

    iget-object v0, v0, Landroid/media/KaraokeService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "karaoke_FBVolume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 566
    :cond_0
    return-void
.end method

.method public setMusicPitchLevel(I)V
    .locals 3
    .param p1, "pitchLevel"    # I

    .prologue
    .line 615
    const-string v0, "KaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserModeEqualLevel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Landroid/media/KaraokeService$KaraokeAPI;->checkRange(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "karaoke_MusicPitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 621
    :cond_0
    return-void
.end method

.method public setUserModeEchoDelay(I)V
    .locals 3
    .param p1, "echoDelay"    # I

    .prologue
    .line 579
    const-string v0, "KaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserModeEchoDelay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/media/KaraokeService$KaraokeAPI;->checkRange(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "karaoke_UserModeEchoDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 585
    :cond_0
    return-void
.end method

.method public setUserModeEchoFeedback(I)V
    .locals 3
    .param p1, "echoFeedback"    # I

    .prologue
    .line 588
    const-string v0, "KaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserModeEchoFeedback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Landroid/media/KaraokeService$KaraokeAPI;->checkRange(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "karaoke_UserModeFeedback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 594
    :cond_0
    return-void
.end method

.method public setUserModeEffectLevel(I)V
    .locals 3
    .param p1, "effectLevel"    # I

    .prologue
    .line 597
    const-string v0, "KaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserModeEffectLevel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Landroid/media/KaraokeService$KaraokeAPI;->checkRange(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "karaoke_UserModeEffectLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 603
    :cond_0
    return-void
.end method

.method public setUserModeEqualLevel(I)V
    .locals 3
    .param p1, "equalLevel"    # I

    .prologue
    .line 606
    const-string v0, "KaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserModeEqualLevel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Landroid/media/KaraokeService$KaraokeAPI;->checkRange(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "karaoke_UserModeEqualizer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 612
    :cond_0
    return-void
.end method

.method public setUserModeReverb(I)V
    .locals 3
    .param p1, "reverb"    # I

    .prologue
    .line 569
    const-string v0, "KaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserModeReverb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/media/KaraokeService$KaraokeAPI;->checkRange(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "karaoke_UserModeReverb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "karaoke_UserModeEffectLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 576
    :cond_0
    return-void
.end method

.method public setVocalDryWetMix(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 547
    const-string v0, "KaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVocalDryWetMix"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget v0, p0, Landroid/media/KaraokeService$KaraokeAPI;->mVocalDryWetMix:I

    if-eq v0, p1, :cond_0

    .line 550
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/KaraokeService$KaraokeAPI;->checkRange(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeAPI;->this$0:Landroid/media/KaraokeService;

    iget-object v0, v0, Landroid/media/KaraokeService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "karaoke_DryWetMix="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 553
    iput p1, p0, Landroid/media/KaraokeService$KaraokeAPI;->mVocalDryWetMix:I

    .line 556
    :cond_0
    return-void
.end method

.method public setVocalEchoReverbPreset(I)V
    .locals 3
    .param p1, "preset"    # I

    .prologue
    .line 531
    const-string v0, "KaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVocalEchoReverbPreset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget v0, p0, Landroid/media/KaraokeService$KaraokeAPI;->mEchoReverbPreset:I

    if-eq v0, p1, :cond_0

    .line 536
    iget-object v0, p0, Landroid/media/KaraokeService$KaraokeAPI;->this$0:Landroid/media/KaraokeService;

    iget-object v0, v0, Landroid/media/KaraokeService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "karaoke_Presets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 538
    iput p1, p0, Landroid/media/KaraokeService$KaraokeAPI;->mEchoReverbPreset:I

    .line 541
    :cond_0
    return-void
.end method
