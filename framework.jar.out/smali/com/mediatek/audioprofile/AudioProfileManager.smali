.class public Lcom/mediatek/audioprofile/AudioProfileManager;
.super Ljava/lang/Object;
.source "AudioProfileManager.java"

# interfaces
.implements Lcom/mediatek/common/audioprofile/IAudioProfileManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;,
        Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;
    }
.end annotation


# static fields
.field public static final ACTION_PROFILE_CHANGED:Ljava/lang/String; = "com.mediatek.audioprofile.ACTION_PROFILE_CHANGED"

.field public static final DEFAULT_MAX_VOLUME_OUTDOOR:I = 0xf

.field public static final DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

.field public static final DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

.field public static final DEFAULT_SIP_STREAM_URI:Landroid/net/Uri;

.field public static final DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

.field public static final EXTRA_PROFILE_SCENARIO:Ljava/lang/String; = "com.mediatek.audioprofile.EXTRA_PROFILE_SCENARIO"

.field public static final KEY_ACTIVE_PROFILE:Ljava/lang/String; = "mtk_audioprofile_active"

.field public static final KEY_BESSUROUND_MODE:Ljava/lang/String; = "mtk_audioprofile_bessuround_mode"

.field public static final KEY_BESSUROUND_STATE:Ljava/lang/String; = "mtk_audioprofile_bessuround"

.field public static final KEY_DEFAULT_NOTIFICATION:Ljava/lang/String; = "mtk_audioprofile_default_notification"

.field public static final KEY_DEFAULT_RINGTONE:Ljava/lang/String; = "mtk_audioprofile_default_ringtone"

.field public static final KEY_DEFAULT_SIP_CALL:Ljava/lang/String; = "mtk_audioprofile_default_sip_call"

.field public static final KEY_DEFAULT_VIDEO_CALL:Ljava/lang/String; = "mtk_audioprofile_default_video_call"

.field public static final KEY_MOVIE_MODE_CODE:I = 0x0

.field public static final KEY_MUSIC_MODE_CODE:I = 0x1

.field public static final KEY_SURROUND_OFF:I = 0x0

.field public static final KEY_SURROUND_ON:I = 0x1

.field public static final LAST_ACTIVE_CUSTOM_DELETED:Ljava/lang/String; = "mtk_audioprofile_custom_deleted"

.field public static final LAST_ACTIVE_PROFILE:Ljava/lang/String; = "mtk_audioprofile_last_active"

.field public static final MAX_PROFILES_COUNT:I = 0xa

.field public static final PREDEFINED_PROFILES_COUNT:I = 0x4

.field public static final PROFILE_PREFIX:Ljava/lang/String; = "mtk_audioprofile_"

.field private static final REAL_PROFILE_KEY:[Ljava/lang/String;

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field private static final SUFFIX_ALARM_VOLUME:Ljava/lang/String; = "_volume_alarm"

.field public static final SUFFIX_DATA:Ljava/lang/String; = "_data"

.field private static final SUFFIX_DTMFTONE:Ljava/lang/String; = "_dtmf_tone_enabled"

.field private static final SUFFIX_HAPTICFEEDBACK:Ljava/lang/String; = "_haptic_feedback_enabled"

.field public static final SUFFIX_KEY:Ljava/lang/String; = "_key"

.field private static final SUFFIX_LOCK_SCRREN:Ljava/lang/String; = "_lockscreen_sounds_enabled"

.field public static final SUFFIX_NAME:Ljava/lang/String; = "_name"

.field private static final SUFFIX_NOTIFICATION_URI:Ljava/lang/String; = "_notification_sound"

.field private static final SUFFIX_NOTIFICATION_USE_RING:Ljava/lang/String; = "_notifications_use_ring_volume"

.field private static final SUFFIX_NOTIFICATION_VOLUME:Ljava/lang/String; = "_volume_notification"

.field private static final SUFFIX_RINGER_URI:Ljava/lang/String; = "_ringtone"

.field private static final SUFFIX_RINGER_VOLUME:Ljava/lang/String; = "_volume_ring"

.field public static final SUFFIX_SIM_ID:Ljava/lang/String; = "_sim_id"

.field private static final SUFFIX_SIP_CALL_URI:Ljava/lang/String; = "_sip_call"

.field private static final SUFFIX_SOUNDEFFECT:Ljava/lang/String; = "_sound_effects_enabled"

.field private static final SUFFIX_VIBRATION:Ljava/lang/String; = "_vibrate_on"

.field private static final SUFFIX_VIDEO_CALL_URI:Ljava/lang/String; = "_video_call"

.field private static final TAG:Ljava/lang/String; = "AudioProfileManager"

.field public static final TYPE_NOTIFICATION:I = 0x2

.field public static final TYPE_RINGTONE:I = 0x1

.field public static final TYPE_SIP_CALL:I = 0x10

.field public static final TYPE_VIDEO_CALL:I = 0x8

.field public static final UNSUPPORT_STREAM_VOLUME:I

.field private static mDefaultProfileStatesGetter:Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;

.field private static sDEFAULTSTATES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/audioprofile/AudioProfileState;",
            ">;"
        }
    .end annotation
.end field

.field private static sService:Lcom/mediatek/common/audioprofile/IAudioProfileService;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 232
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    .line 235
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    .line 238
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_VIDEO_CALL_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    .line 241
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_SIP_CALL_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_SIP_STREAM_URI:Landroid/net/Uri;

    .line 244
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    .line 273
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "general"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "meeting"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "silent"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "outdoor"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "custom"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->REAL_PROFILE_KEY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileManager;->mContext:Landroid/content/Context;

    .line 288
    const-class v0, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->mDefaultProfileStatesGetter:Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;

    .line 290
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->mDefaultProfileStatesGetter:Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Lcom/mediatek/audioprofile/DefaultProfileStatesGetter;

    invoke-direct {v0}, Lcom/mediatek/audioprofile/DefaultProfileStatesGetter;-><init>()V

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->mDefaultProfileStatesGetter:Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;

    .line 293
    :cond_0
    return-void
.end method

.method private static coverToProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;
    .locals 3
    .param p0, "scenario"    # Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    .prologue
    .line 747
    const/4 v0, 0x0

    .line 748
    .local v0, "realProfileKey":Ljava/lang/String;
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 749
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager;->REAL_PROFILE_KEY:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 759
    :cond_0
    :goto_0
    return-object v0

    .line 750
    :cond_1
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 751
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager;->REAL_PROFILE_KEY:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v1, v2

    goto :goto_0

    .line 752
    :cond_2
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 753
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager;->REAL_PROFILE_KEY:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v0, v1, v2

    goto :goto_0

    .line 754
    :cond_3
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 755
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager;->REAL_PROFILE_KEY:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v0, v1, v2

    goto :goto_0

    .line 756
    :cond_4
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 757
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager;->REAL_PROFILE_KEY:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v0, v1, v2

    goto :goto_0
.end method

.method public static getAllKeys(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "profileKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 803
    if-nez p0, :cond_0

    .line 804
    const-string v2, "AudioProfileManager"

    const-string v3, "getAllKeys: Null profileKey!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/4 v1, 0x0

    .line 824
    :goto_0
    return-object v1

    .line 808
    :cond_0
    const/16 v0, 0xe

    .line 809
    .local v0, "keySize":I
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 810
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getNotificationUseRingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getLockScreenKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getHapticKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDtmfToneKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getSoundEffectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 817
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    const/4 v2, 0x5

    invoke-static {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    invoke-static {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    invoke-static {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    const/16 v2, 0x8

    invoke-static {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getDataKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uriKey"    # Ljava/lang/String;

    .prologue
    .line 664
    if-eqz p0, :cond_0

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 667
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;
    .locals 45
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 333
    sget-object v41, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    if-nez v41, :cond_1

    .line 334
    sget-object v41, Lcom/mediatek/audioprofile/AudioProfileManager;->mDefaultProfileStatesGetter:Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;

    if-eqz v41, :cond_0

    .line 335
    sget-object v41, Lcom/mediatek/audioprofile/AudioProfileManager;->mDefaultProfileStatesGetter:Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;

    invoke-interface/range {v41 .. v41}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;->getDefaultProfileStates()Ljava/util/HashMap;

    move-result-object v41

    sput-object v41, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    .line 337
    :cond_0
    sget-object v41, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    if-nez v41, :cond_1

    .line 338
    new-instance v41, Ljava/util/HashMap;

    const/16 v42, 0x4

    invoke-direct/range {v41 .. v42}, Ljava/util/HashMap;-><init>(I)V

    sput-object v41, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    .line 340
    const/16 v23, 0x8

    .line 341
    .local v23, "DEFAULT_RINGER_VOLUME_GENERAL":I
    const/16 v26, 0x0

    .line 342
    .local v26, "DEFAULT_RINGER_VOLUME_SILENT":I
    const/16 v24, 0x0

    .line 343
    .local v24, "DEFAULT_RINGER_VOLUME_MEETING":I
    const/16 v25, 0xf

    .line 346
    .local v25, "DEFAULT_RINGER_VOLUME_OUTDOOR":I
    const/16 v19, 0x8

    .line 347
    .local v19, "DEFAULT_NOTIFICATION_VOLUME_GENERAL":I
    const/16 v22, 0x0

    .line 348
    .local v22, "DEFAULT_NOTIFICATION_VOLUME_SILENT":I
    const/16 v20, 0x0

    .line 349
    .local v20, "DEFAULT_NOTIFICATION_VOLUME_MEETING":I
    const/16 v21, 0xf

    .line 352
    .local v21, "DEFAULT_NOTIFICATION_VOLUME_OUTDOOR":I
    const/16 v3, 0x8

    .line 353
    .local v3, "DEFAULT_ALARM_VOLUME_GENERAL":I
    const/4 v6, 0x0

    .line 354
    .local v6, "DEFAULT_ALARM_VOLUME_SILENT":I
    const/4 v4, 0x0

    .line 355
    .local v4, "DEFAULT_ALARM_VOLUME_MEETING":I
    const/16 v5, 0xf

    .line 358
    .local v5, "DEFAULT_ALARM_VOLUME_OUTDOOR":I
    const/16 v31, 0x0

    .line 359
    .local v31, "DEFAULT_VIBRATION_GENERAL":Z
    const/16 v34, 0x0

    .line 360
    .local v34, "DEFAULT_VIBRATION_SILENT":Z
    const/16 v32, 0x1

    .line 361
    .local v32, "DEFAULT_VIBRATION_MEETING":Z
    const/16 v33, 0x1

    .line 367
    .local v33, "DEFAULT_VIBRATION_OUTDOOR":Z
    const/4 v7, 0x1

    .line 368
    .local v7, "DEFAULT_DTMFTONE_GENERAL":Z
    const/4 v10, 0x0

    .line 369
    .local v10, "DEFAULT_DTMFTONE_SILENT":Z
    const/4 v8, 0x0

    .line 370
    .local v8, "DEFAULT_DTMFTONE_MEETING":Z
    const/4 v9, 0x1

    .line 376
    .local v9, "DEFAULT_DTMFTONE_OUTDOOR":Z
    const/16 v27, 0x0

    .line 377
    .local v27, "DEFAULT_SOUNDEFFECT_GENERAL":Z
    const/16 v30, 0x0

    .line 378
    .local v30, "DEFAULT_SOUNDEFFECT_SILENT":Z
    const/16 v28, 0x0

    .line 379
    .local v28, "DEFAULT_SOUNDEFFECT_MEETING":Z
    const/16 v29, 0x0

    .line 382
    .local v29, "DEFAULT_SOUNDEFFECT_OUTDOOR":Z
    const/4 v15, 0x1

    .line 383
    .local v15, "DEFAULT_LOCK_SCREEN_GENERAL":Z
    const/16 v18, 0x0

    .line 384
    .local v18, "DEFAULT_LOCK_SCREEN_SILENT":Z
    const/16 v16, 0x0

    .line 385
    .local v16, "DEFAULT_LOCK_SCREEN_MEETING":Z
    const/16 v17, 0x1

    .line 388
    .local v17, "DEFAULT_LOCK_SCREEN_OUTDOOR":Z
    const/4 v11, 0x1

    .line 389
    .local v11, "DEFAULT_HAPTIC_FEEDBACK_GENERAL":Z
    const/4 v14, 0x0

    .line 390
    .local v14, "DEFAULT_HAPTIC_FEEDBACK_SILENT":Z
    const/4 v12, 0x0

    .line 391
    .local v12, "DEFAULT_HAPTIC_FEEDBACK_MEETING":Z
    const/4 v13, 0x1

    .line 394
    .local v13, "DEFAULT_HAPTIC_FEEDBACK_OUTDOOR":Z
    new-instance v41, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    sget-object v42, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v42 .. v42}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    sget-object v42, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    sget-object v43, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    sget-object v44, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    invoke-virtual/range {v41 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    const/16 v42, 0x8

    const/16 v43, 0x8

    const/16 v44, 0x8

    invoke-virtual/range {v41 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v35

    .line 404
    .local v35, "generalState":Lcom/mediatek/audioprofile/AudioProfileState;
    sget-object v41, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    sget-object v42, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual/range {v42 .. v42}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    new-instance v41, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    sget-object v42, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v42 .. v42}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    sget-object v42, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    sget-object v43, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    sget-object v44, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    invoke-virtual/range {v41 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-virtual/range {v41 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v40

    .line 417
    .local v40, "silentState":Lcom/mediatek/audioprofile/AudioProfileState;
    sget-object v41, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    sget-object v42, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual/range {v42 .. v42}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    new-instance v41, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    sget-object v42, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v42 .. v42}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    sget-object v42, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    sget-object v43, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    sget-object v44, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    invoke-virtual/range {v41 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-virtual/range {v41 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v37

    .line 430
    .local v37, "meetingState":Lcom/mediatek/audioprofile/AudioProfileState;
    sget-object v41, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    sget-object v42, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual/range {v42 .. v42}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    new-instance v41, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    sget-object v42, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v42 .. v42}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    sget-object v42, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    sget-object v43, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    sget-object v44, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    invoke-virtual/range {v41 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    const/16 v42, 0xf

    const/16 v43, 0xf

    const/16 v44, 0xf

    invoke-virtual/range {v41 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v38

    .line 443
    .local v38, "outdoorState":Lcom/mediatek/audioprofile/AudioProfileState;
    sget-object v41, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    sget-object v42, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual/range {v42 .. v42}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const-string v41, "AudioProfileManager"

    const-string v42, "getDefaultState from default!"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    .end local v3    # "DEFAULT_ALARM_VOLUME_GENERAL":I
    .end local v4    # "DEFAULT_ALARM_VOLUME_MEETING":I
    .end local v5    # "DEFAULT_ALARM_VOLUME_OUTDOOR":I
    .end local v6    # "DEFAULT_ALARM_VOLUME_SILENT":I
    .end local v7    # "DEFAULT_DTMFTONE_GENERAL":Z
    .end local v8    # "DEFAULT_DTMFTONE_MEETING":Z
    .end local v9    # "DEFAULT_DTMFTONE_OUTDOOR":Z
    .end local v10    # "DEFAULT_DTMFTONE_SILENT":Z
    .end local v11    # "DEFAULT_HAPTIC_FEEDBACK_GENERAL":Z
    .end local v12    # "DEFAULT_HAPTIC_FEEDBACK_MEETING":Z
    .end local v13    # "DEFAULT_HAPTIC_FEEDBACK_OUTDOOR":Z
    .end local v14    # "DEFAULT_HAPTIC_FEEDBACK_SILENT":Z
    .end local v15    # "DEFAULT_LOCK_SCREEN_GENERAL":Z
    .end local v16    # "DEFAULT_LOCK_SCREEN_MEETING":Z
    .end local v17    # "DEFAULT_LOCK_SCREEN_OUTDOOR":Z
    .end local v18    # "DEFAULT_LOCK_SCREEN_SILENT":Z
    .end local v19    # "DEFAULT_NOTIFICATION_VOLUME_GENERAL":I
    .end local v20    # "DEFAULT_NOTIFICATION_VOLUME_MEETING":I
    .end local v21    # "DEFAULT_NOTIFICATION_VOLUME_OUTDOOR":I
    .end local v22    # "DEFAULT_NOTIFICATION_VOLUME_SILENT":I
    .end local v23    # "DEFAULT_RINGER_VOLUME_GENERAL":I
    .end local v24    # "DEFAULT_RINGER_VOLUME_MEETING":I
    .end local v25    # "DEFAULT_RINGER_VOLUME_OUTDOOR":I
    .end local v26    # "DEFAULT_RINGER_VOLUME_SILENT":I
    .end local v27    # "DEFAULT_SOUNDEFFECT_GENERAL":Z
    .end local v28    # "DEFAULT_SOUNDEFFECT_MEETING":Z
    .end local v29    # "DEFAULT_SOUNDEFFECT_OUTDOOR":Z
    .end local v30    # "DEFAULT_SOUNDEFFECT_SILENT":Z
    .end local v31    # "DEFAULT_VIBRATION_GENERAL":Z
    .end local v32    # "DEFAULT_VIBRATION_MEETING":Z
    .end local v33    # "DEFAULT_VIBRATION_OUTDOOR":Z
    .end local v34    # "DEFAULT_VIBRATION_SILENT":Z
    .end local v35    # "generalState":Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v37    # "meetingState":Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v38    # "outdoorState":Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v40    # "silentState":Lcom/mediatek/audioprofile/AudioProfileState;
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v39

    .line 449
    .local v39, "scenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    if-nez v39, :cond_2

    .line 450
    const-string v41, "AudioProfileManager"

    const-string v42, "getDefaultState: get null scenario and use custom scenario default!"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    sget-object v39, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    .line 453
    :cond_2
    invoke-virtual/range {v39 .. v39}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v36

    .line 454
    .local v36, "index":I
    sget-object v41, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    invoke-virtual/range {v41 .. v41}, Ljava/util/HashMap;->size()I

    move-result v41

    move/from16 v0, v36

    move/from16 v1, v41

    if-lt v0, v1, :cond_3

    .line 455
    sget-object v41, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 457
    :goto_0
    return-object v41

    :cond_3
    sget-object v41, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/mediatek/audioprofile/AudioProfileState;

    goto :goto_0
.end method

.method public static getDtmfToneKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 506
    if-eqz p0, :cond_0

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_dtmf_tone_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 509
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getHapticKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 521
    if-eqz p0, :cond_0

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_haptic_feedback_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 721
    if-eqz p0, :cond_0

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 724
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLockScreenKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 679
    if-eqz p0, :cond_0

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_lockscreen_sounds_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 682
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNotificationUseRingKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 693
    if-eqz p0, :cond_0

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_notifications_use_ring_volume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 696
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;
    .locals 2
    .param p0, "scenario"    # Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    .prologue
    .line 738
    if-eqz p0, :cond_0

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mtk_audioprofile_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->coverToProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 742
    :goto_0
    return-object v0

    .line 741
    :cond_0
    const-string v0, "AudioProfileManager"

    const-string v1, "getProfileKey with null scenario!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 707
    if-eqz p0, :cond_0

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 710
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .locals 8
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 772
    if-nez p0, :cond_0

    .line 773
    const-string v5, "AudioProfileManager"

    const-string v6, "getScenario: Null key! Return CUSTOM as default!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    .line 791
    :goto_0
    return-object v5

    .line 777
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 778
    .local v2, "keyLen":I
    const-string/jumbo v5, "mtk_audioprofile_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 779
    .local v4, "startIndex":I
    if-ge v2, v4, :cond_1

    .line 780
    const-string v5, "AudioProfileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getScenario: Invalid key :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Return CUSTOM as default!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    goto :goto_0

    .line 784
    :cond_1
    const/16 v5, 0x5f

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 786
    .local v1, "endIndex":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .end local v1    # "endIndex":I
    :cond_2
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 788
    .local v3, "scenarioStr":Ljava/lang/String;
    :try_start_0
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->valueOf(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 789
    :catch_0
    move-exception v0

    .line 790
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "AudioProfileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not convert string "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to Scenario type!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    goto :goto_0
.end method

.method private static getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .locals 4

    .prologue
    .line 301
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager;->sService:Lcom/mediatek/common/audioprofile/IAudioProfileService;

    if-eqz v2, :cond_0

    .line 303
    :try_start_0
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager;->sService:Lcom/mediatek/common/audioprofile/IAudioProfileService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setUserId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .local v1, "e":Landroid/os/RemoteException;
    :goto_0
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager;->sService:Lcom/mediatek/common/audioprofile/IAudioProfileService;

    .line 316
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-object v2

    .line 304
    :catch_0
    move-exception v1

    .line 305
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Set user id exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 309
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "audioprofile"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 310
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v2

    sput-object v2, Lcom/mediatek/audioprofile/AudioProfileManager;->sService:Lcom/mediatek/common/audioprofile/IAudioProfileService;

    .line 312
    :try_start_1
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager;->sService:Lcom/mediatek/common/audioprofile/IAudioProfileService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setUserId(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 316
    :goto_2
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager;->sService:Lcom/mediatek/common/audioprofile/IAudioProfileService;

    goto :goto_1

    .line 313
    :catch_1
    move-exception v1

    .line 314
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Set user id exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static getSoundEffectKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 491
    if-eqz p0, :cond_0

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sound_effects_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "profileKey"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 576
    const-wide/16 v0, -0x1

    .line 577
    .local v0, "simId":J
    invoke-static {p0, p1, v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;
    .locals 6
    .param p0, "profileKey"    # Ljava/lang/String;
    .param p1, "type"    # I
    .param p2, "simId"    # J

    .prologue
    const-wide/16 v4, -0x1

    .line 592
    if-nez p0, :cond_0

    .line 593
    const-string v1, "AudioProfileManager"

    const-string v2, "getStreamUriKey with null profile key!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/4 v0, 0x0

    .line 638
    :goto_0
    return-object v0

    .line 597
    :cond_0
    const/4 v0, 0x0

    .line 598
    .local v0, "uriKey":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 635
    const-string v1, "AudioProfileManager"

    const-string v2, "getStreamUriKey with unsupport type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_1
    :goto_1
    const-string v1, "AudioProfileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStreamUriKey: StreamUriKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 600
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ringtone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    cmp-long v1, p2, v4

    if-eqz v1, :cond_1

    .line 603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_sim_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 610
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_notification_sound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 611
    goto :goto_1

    .line 614
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_video_call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 617
    cmp-long v1, p2, v4

    if-eqz v1, :cond_1

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_sim_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 625
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_sip_call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 628
    cmp-long v1, p2, v4

    if-eqz v1, :cond_1

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_sim_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 598
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getStreamUriKeys(I)Ljava/util/List;
    .locals 9
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 650
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->values()[Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .local v0, "arr$":[Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v6, v0, v1

    .line 652
    .local v6, "scenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7, v6}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7, v6}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 653
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mtk_audioprofile_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileManager;->coverToProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 654
    .local v5, "prefix":Ljava/lang/String;
    invoke-static {v5, p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 655
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 656
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "prefix":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 660
    .end local v6    # "scenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_1
    return-object v3
.end method

.method public static getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "profileKey"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 539
    if-nez p0, :cond_0

    .line 540
    const-string v1, "AudioProfileManager"

    const-string v2, "getStreamVolumeKey with null profile key!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/4 v0, 0x0

    .line 561
    :goto_0
    return-object v0

    .line 544
    :cond_0
    const/4 v0, 0x0

    .line 545
    .local v0, "volumeKey":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 559
    :pswitch_0
    const-string v1, "AudioProfileManager"

    const-string v2, "getStreamVolumeKey with unsupport type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 547
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_volume_ring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 548
    goto :goto_0

    .line 551
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_volume_notification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 552
    goto :goto_0

    .line 555
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_volume_alarm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 556
    goto :goto_0

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static getVibrationKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 475
    if-eqz p0, :cond_0

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_vibrate_on"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 478
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addProfile()Ljava/lang/String;
    .locals 4

    .prologue
    .line 860
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 862
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->addProfile()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 865
    :goto_0
    return-object v2

    .line 863
    :catch_0
    move-exception v0

    .line 864
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setActiveProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 865
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public deleteProfile(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 878
    if-nez p1, :cond_0

    .line 879
    const-string v3, "AudioProfileManager"

    const-string v4, "deleteProfile with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :goto_0
    return v2

    .line 883
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 885
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->deleteProfile(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 886
    :catch_0
    move-exception v0

    .line 887
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in deleteProfile"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getActiveProfileKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1000
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1002
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getActiveProfileKey()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1005
    :goto_0
    return-object v2

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getActiveProfileKey"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1005
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAllProfileKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 929
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 931
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getAllProfileKeys()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 934
    :goto_0
    return-object v2

    .line 932
    :catch_0
    move-exception v0

    .line 933
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getAllProfileKeys"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 934
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getBesSurroundMode()I
    .locals 4

    .prologue
    .line 1698
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1700
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getBesSurroundMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1703
    :goto_0
    return v2

    .line 1701
    :catch_0
    move-exception v0

    .line 1702
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getBesSurroundMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1703
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getBesSurroundState()Z
    .locals 4

    .prologue
    .line 1666
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1668
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getBesSurroundState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1671
    :goto_0
    return v2

    .line 1669
    :catch_0
    move-exception v0

    .line 1670
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getBesSurroundState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1671
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCustomizedProfileKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 960
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 962
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getCustomizedProfileKeys()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 965
    :goto_0
    return-object v2

    .line 963
    :catch_0
    move-exception v0

    .line 964
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getCustomizedProfileKeys"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 965
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDefaultRingtone(I)Landroid/net/Uri;
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 1628
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1630
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1633
    :goto_0
    return-object v2

    .line 1631
    :catch_0
    move-exception v0

    .line 1632
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in isRingtoneExist"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1633
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLastActiveProfileKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1015
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1017
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getLastActiveProfileKey()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1020
    :goto_0
    return-object v2

    .line 1018
    :catch_0
    move-exception v0

    .line 1019
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getLastActiveProfileKey"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1020
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPredefinedProfileKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 945
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 947
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getPredefinedProfileKeys()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 950
    :goto_0
    return-object v2

    .line 948
    :catch_0
    move-exception v0

    .line 949
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getPredefinedProfileKeys"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 950
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getProfileCount()I
    .locals 4

    .prologue
    .line 913
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 915
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getProfileCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 918
    :goto_0
    return v2

    .line 916
    :catch_0
    move-exception v0

    .line 917
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in deleteProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 918
    const/16 v2, 0xa

    goto :goto_0
.end method

.method public getProfileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1324
    if-nez p1, :cond_0

    .line 1325
    const-string v3, "AudioProfileManager"

    const-string v4, "getProfileName with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :goto_0
    return-object v2

    .line 1329
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1331
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getProfileName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1332
    :catch_0
    move-exception v0

    .line 1333
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getProfileName"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;
    .locals 23
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1260
    if-nez p1, :cond_0

    .line 1261
    const-string v20, "AudioProfileManager"

    const-string v21, "getProfileState with null profile key!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    const/4 v10, 0x0

    .line 1312
    :goto_0
    return-object v10

    .line 1266
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v12

    .line 1268
    .local v12, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getProfileStateString(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 1274
    .local v15, "state":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1275
    .local v16, "value":Ljava/lang/String;
    if-nez v16, :cond_1

    const/16 v19, 0x0

    .line 1276
    .local v19, "voiceCallUri":Landroid/net/Uri;
    :goto_1
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "value":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1277
    .restart local v16    # "value":Ljava/lang/String;
    if-nez v16, :cond_2

    const/4 v8, 0x0

    .line 1278
    .local v8, "notificationUri":Landroid/net/Uri;
    :goto_2
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->videocall_Stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "value":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1279
    .restart local v16    # "value":Ljava/lang/String;
    if-nez v16, :cond_3

    const/16 v18, 0x0

    .line 1280
    .local v18, "videoCallUri":Landroid/net/Uri;
    :goto_3
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->sipcall_Stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "value":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1281
    .restart local v16    # "value":Ljava/lang/String;
    if-nez v16, :cond_4

    const/4 v13, 0x0

    .line 1283
    .local v13, "sipCallUri":Landroid/net/Uri;
    :goto_4
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "value":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1284
    .restart local v16    # "value":Ljava/lang/String;
    if-nez v16, :cond_5

    const/4 v11, 0x0

    .line 1285
    .local v11, "ringerVolume":I
    :goto_5
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "value":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1286
    .restart local v16    # "value":Ljava/lang/String;
    if-nez v16, :cond_6

    const/4 v9, 0x0

    .line 1287
    .local v9, "notificationVolume":I
    :goto_6
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "value":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1288
    .restart local v16    # "value":Ljava/lang/String;
    if-nez v16, :cond_7

    const/4 v3, 0x0

    .line 1290
    .local v3, "alarmVolume":I
    :goto_7
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->vibration_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "value":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1291
    .restart local v16    # "value":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    .line 1292
    .local v17, "vibration":Z
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->dtmftone_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "value":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1293
    .restart local v16    # "value":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1294
    .local v4, "dtmfTone":Z
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->soundeffect_enbled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "value":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1295
    .restart local v16    # "value":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    .line 1296
    .local v14, "soundEffect":Z
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->lockscreensound_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "value":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1297
    .restart local v16    # "value":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 1298
    .local v7, "lockScreensound":Z
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->hapticfeedback_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "value":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1299
    .restart local v16    # "value":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 1301
    .local v6, "hapticFeedback":Z
    new-instance v20, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v8, v2, v13}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11, v9, v3}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v10

    .line 1310
    .local v10, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    const-string v20, "AudioProfileManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getProfileState for profileKey = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Lcom/mediatek/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1269
    .end local v3    # "alarmVolume":I
    .end local v4    # "dtmfTone":Z
    .end local v6    # "hapticFeedback":Z
    .end local v7    # "lockScreensound":Z
    .end local v8    # "notificationUri":Landroid/net/Uri;
    .end local v9    # "notificationVolume":I
    .end local v10    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v11    # "ringerVolume":I
    .end local v13    # "sipCallUri":Landroid/net/Uri;
    .end local v14    # "soundEffect":Z
    .end local v15    # "state":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "value":Ljava/lang/String;
    .end local v17    # "vibration":Z
    .end local v18    # "videoCallUri":Landroid/net/Uri;
    .end local v19    # "voiceCallUri":Landroid/net/Uri;
    :catch_0
    move-exception v5

    .line 1270
    .local v5, "e":Landroid/os/RemoteException;
    const-string v20, "AudioProfileManager"

    const-string v21, "Dead object in getProfileState"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1271
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1275
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v15    # "state":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "value":Ljava/lang/String;
    :cond_1
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    goto/16 :goto_1

    .line 1277
    .restart local v19    # "voiceCallUri":Landroid/net/Uri;
    :cond_2
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto/16 :goto_2

    .line 1279
    .restart local v8    # "notificationUri":Landroid/net/Uri;
    :cond_3
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    goto/16 :goto_3

    .line 1281
    .restart local v18    # "videoCallUri":Landroid/net/Uri;
    :cond_4
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    goto/16 :goto_4

    .line 1284
    .restart local v13    # "sipCallUri":Landroid/net/Uri;
    :cond_5
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto/16 :goto_5

    .line 1286
    .restart local v11    # "ringerVolume":I
    :cond_6
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto/16 :goto_6

    .line 1288
    .restart local v9    # "notificationVolume":I
    :cond_7
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto/16 :goto_7
.end method

.method public getRingtoneUri(I)Landroid/net/Uri;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 1086
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v0

    .line 1087
    .local v0, "profileKey":Ljava/lang/String;
    const/4 v1, 0x1

    .line 1088
    .local v1, "type":I
    int-to-long v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;IJ)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public getRingtoneUri(IJ)Landroid/net/Uri;
    .locals 2
    .param p1, "callType"    # I
    .param p2, "simId"    # J

    .prologue
    .line 1100
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v0

    .line 1101
    .local v0, "profileKey":Ljava/lang/String;
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;IJ)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 3
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 1071
    const-wide/16 v0, -0x1

    .line 1072
    .local v0, "simId":J
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;IJ)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public getRingtoneUri(Ljava/lang/String;IJ)Landroid/net/Uri;
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "simId"    # J

    .prologue
    const/4 v2, 0x0

    .line 1040
    if-nez p1, :cond_0

    .line 1041
    const-string v3, "AudioProfileManager"

    const-string v4, "getRingtoneUri with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :goto_0
    return-object v2

    .line 1045
    :cond_0
    const/4 v3, 0x1

    if-eq p2, v3, :cond_1

    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    const/16 v3, 0x8

    if-eq p2, v3, :cond_1

    const/16 v3, 0x10

    if-ne p2, v3, :cond_2

    .line 1046
    :cond_1
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1048
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getRingtoneUriWithSIM(Ljava/lang/String;IJ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1049
    :catch_0
    move-exception v0

    .line 1050
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getRingtoneUri"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1054
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :cond_2
    const-string v3, "AudioProfileManager"

    const-string v4, "getRingtoneUri with unsupport stream type!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStreamMaxVolume(I)I
    .locals 4
    .param p1, "streamType"    # I

    .prologue
    .line 1609
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1611
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getStreamMaxVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1614
    :goto_0
    return v2

    .line 1612
    :catch_0
    move-exception v0

    .line 1613
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in isRingtoneExist"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1614
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getStreamVolume(Ljava/lang/String;I)I
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "streamType"    # I

    .prologue
    const/4 v2, 0x0

    .line 1117
    if-nez p1, :cond_0

    .line 1118
    const-string v3, "AudioProfileManager"

    const-string v4, "getStreamVolume with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :goto_0
    return v2

    .line 1122
    :cond_0
    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    const/4 v3, 0x5

    if-eq p2, v3, :cond_1

    const/4 v3, 0x4

    if-ne p2, v3, :cond_2

    .line 1124
    :cond_1
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1126
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getStreamVolume(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1127
    :catch_0
    move-exception v0

    .line 1128
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getStreamVolume"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1132
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :cond_2
    const-string v3, "AudioProfileManager"

    const-string v4, "getStreamVolume with unsupport stream type!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isActiveProfile(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1563
    if-nez p1, :cond_0

    .line 1564
    const-string v3, "AudioProfileManager"

    const-string v4, "isActiveProfile with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    :goto_0
    return v2

    .line 1568
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1570
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->isActiveProfile(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1571
    :catch_0
    move-exception v0

    .line 1572
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in isActiveProfile"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isDtmfToneEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1169
    if-nez p1, :cond_0

    .line 1170
    const-string v3, "AudioProfileManager"

    const-string v4, "isDtmfToneEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :goto_0
    return v2

    .line 1174
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1176
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->isDtmfToneEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1177
    :catch_0
    move-exception v0

    .line 1178
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in isDtmfToneEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isLockScreenEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1215
    if-nez p1, :cond_0

    .line 1216
    const-string v3, "AudioProfileManager"

    const-string v4, "isLockScreenEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :goto_0
    return v2

    .line 1220
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1222
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->isLockScreenEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1223
    :catch_0
    move-exception v0

    .line 1224
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in isLockScreenEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isNameExist(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 979
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 980
    :cond_0
    const-string v3, "AudioProfileManager"

    const-string v4, "isNameExist: Null or empty name!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :goto_0
    return v2

    .line 984
    :cond_1
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 986
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->isNameExist(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 987
    :catch_0
    move-exception v0

    .line 988
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in isNameExist"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isRingtoneExist(Landroid/net/Uri;)Z
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 1584
    if-nez p1, :cond_0

    .line 1585
    const-string v3, "AudioProfileManager"

    const-string v4, "isRingtoneExist with null uri!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :goto_0
    return v2

    .line 1589
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1591
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->isRingtoneExist(Landroid/net/Uri;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1592
    :catch_0
    move-exception v0

    .line 1593
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in isRingtoneExist"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isSoundEffectEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1192
    if-nez p1, :cond_0

    .line 1193
    const-string v3, "AudioProfileManager"

    const-string v4, "isSoundEffectEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :goto_0
    return v2

    .line 1197
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1199
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->isSoundEffectEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1200
    :catch_0
    move-exception v0

    .line 1201
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in isSoundEffectEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isVibrateOnTouchEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1238
    if-nez p1, :cond_0

    .line 1239
    const-string v3, "AudioProfileManager"

    const-string v4, "isVibrateOnTouchEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :goto_0
    return v2

    .line 1243
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1245
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->isVibrateOnTouchEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1246
    :catch_0
    move-exception v0

    .line 1247
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in isVibrateOnTouchEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isVibrationEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1146
    if-nez p1, :cond_0

    .line 1147
    const-string v3, "AudioProfileManager"

    const-string v4, "isVibrationEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :goto_0
    return v2

    .line 1151
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1153
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->isVibrationEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1154
    :catch_0
    move-exception v0

    .line 1155
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in isVibrationEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V
    .locals 4
    .param p1, "listener"    # Lcom/mediatek/common/audioprofile/AudioProfileListener;
    .param p2, "event"    # I

    .prologue
    .line 1651
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1653
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-virtual {p1}, Lcom/mediatek/common/audioprofile/AudioProfileListener;->getCallback()Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->listenAudioProfie(Lcom/mediatek/common/audioprofile/IAudioProfileListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1657
    :goto_0
    return-void

    .line 1654
    :catch_0
    move-exception v0

    .line 1655
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in listenAudioProfie"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetProfiles()V
    .locals 4

    .prologue
    .line 898
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 900
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->reset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    :goto_0
    return-void

    .line 901
    :catch_0
    move-exception v0

    .line 902
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in resetProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActiveProfile(Ljava/lang/String;)V
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 839
    if-nez p1, :cond_0

    .line 840
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setActiveProfile with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :goto_0
    return-void

    .line 844
    :cond_0
    const-string v2, "AudioProfileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setActiveProfile: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 847
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setActiveProfile(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 848
    :catch_0
    move-exception v0

    .line 849
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setActiveProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBesSurroundMode(I)I
    .locals 4
    .param p1, "besSurroundMode"    # I

    .prologue
    .line 1714
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1716
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setBesSurroundMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1719
    :goto_0
    return v2

    .line 1717
    :catch_0
    move-exception v0

    .line 1718
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setBesSurroundMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1719
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setBesSurroundState(Z)I
    .locals 4
    .param p1, "isEnableBes"    # Z

    .prologue
    .line 1682
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1684
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setBesSurroundState(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1687
    :goto_0
    return v2

    .line 1685
    :catch_0
    move-exception v0

    .line 1686
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setBesSurroundState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1687
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setDtmfToneEnabled(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1450
    if-nez p1, :cond_0

    .line 1451
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setDtmfToneEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    :goto_0
    return-void

    .line 1455
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1457
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setDtmfToneEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1458
    :catch_0
    move-exception v0

    .line 1459
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setDtmfToneEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setLockScreenEnabled(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1494
    if-nez p1, :cond_0

    .line 1495
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setLockScreenEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :goto_0
    return-void

    .line 1499
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1501
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setLockScreenEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1502
    :catch_0
    move-exception v0

    .line 1503
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setLockScreenEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setProfileName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 1538
    if-nez p1, :cond_0

    .line 1539
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setProfileName with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :goto_0
    return-void

    .line 1543
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1545
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setProfileName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1546
    :catch_0
    move-exception v0

    .line 1547
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setProfileName"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRingtoneUri(Ljava/lang/String;IJLandroid/net/Uri;)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "simId"    # J
    .param p5, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 1369
    if-nez p1, :cond_0

    .line 1370
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setStreamVolume with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :goto_0
    return-void

    .line 1374
    :cond_0
    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/16 v2, 0x8

    if-eq p2, v2, :cond_1

    const/16 v2, 0x10

    if-eq p2, v2, :cond_1

    .line 1375
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setStreamVolume with unsupport stream type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1379
    :cond_1
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 1381
    :try_start_0
    invoke-interface/range {v1 .. v6}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setRingtoneUri(Ljava/lang/String;IJLandroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1382
    :catch_0
    move-exception v0

    .line 1383
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setRingtoneUri"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRingtoneUri(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 1354
    const/4 v0, -0x1

    .line 1355
    .local v0, "simId":I
    int-to-long v4, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/audioprofile/AudioProfileManager;->setRingtoneUri(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 1356
    return-void
.end method

.method public setSoundEffectEnabled(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1472
    if-nez p1, :cond_0

    .line 1473
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setSoundEffectEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :goto_0
    return-void

    .line 1477
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1479
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setSoundEffectEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1480
    :catch_0
    move-exception v0

    .line 1481
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setSoundEffectEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStreamVolume(Ljava/lang/String;II)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "streamType"    # I
    .param p3, "index"    # I

    .prologue
    .line 1400
    if-nez p1, :cond_0

    .line 1401
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setStreamVolume with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :goto_0
    return-void

    .line 1405
    :cond_0
    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v2, 0x5

    if-eq p2, v2, :cond_1

    const/4 v2, 0x4

    if-eq p2, v2, :cond_1

    .line 1407
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setStreamVolume with unsupport stream type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1411
    :cond_1
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1413
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setStreamVolume(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1414
    :catch_0
    move-exception v0

    .line 1415
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVibrateOnTouchEnabled(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1516
    if-nez p1, :cond_0

    .line 1517
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setVibrateOnTouchEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :goto_0
    return-void

    .line 1521
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1523
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setVibrateOnTouchEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1524
    :catch_0
    move-exception v0

    .line 1525
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setVibrateOnTouchEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVibrationEnabled(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1428
    if-nez p1, :cond_0

    .line 1429
    const-string v2, "AudioProfileManager"

    const-string/jumbo v3, "setVibrationEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :goto_0
    return-void

    .line 1433
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1435
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setVibrationEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1436
    :catch_0
    move-exception v0

    .line 1437
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setVibrationEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
