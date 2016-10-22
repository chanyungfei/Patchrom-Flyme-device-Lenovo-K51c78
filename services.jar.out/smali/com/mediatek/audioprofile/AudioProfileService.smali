.class public Lcom/mediatek/audioprofile/AudioProfileService;
.super Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/AudioProfileService$9;,
        Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;,
        Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;,
        Lcom/mediatek/audioprofile/AudioProfileService$Record;
    }
.end annotation


# static fields
.field private static final BESSURROUND_MOIVE:Ljava/lang/String; = "BesSurround_Mode=0"

.field private static final BESSURROUND_MUSIC:Ljava/lang/String; = "BesSurround_Mode=1"

.field private static final BESSURROUND_OFF:Ljava/lang/String; = "BesSurround_OnOff=0"

.field private static final BESSURROUND_ON:Ljava/lang/String; = "BesSurround_OnOff=1"

.field private static final BUNDLE_DEFAULT_SIZE:I = 0x4

.field private static final DEFAULT_NOTIFICATION_INDEX:I

.field private static final DEFAULT_RINGER_INDEX:I

.field private static final DEFAULT_RINGTONE_TYPE_CONUT:I = 0x4

.field private static final DEFAULT_SIPCALL_INDEX:I

.field private static final DEFAULT_VIDEOCALL_INDEX:I

.field private static final DELAY_TIME_AVOID_CTS_FAIL:J = 0x4e20L

.field private static final IS_SUPPORT_OUTDOOR_EDITABLE:Z = false

.field private static final MSG_DELAY_SET_VIBRATE_AVOID_CTS_FAIL:I = 0x15

.field private static final MSG_PERSIST_ALARM_VOLUME_TO_DATABASE:I = 0xa

.field private static final MSG_PERSIST_DTMF_TONE_TO_DATABASE:I = 0xf

.field private static final MSG_PERSIST_DTMF_TONE_TO_SYSTEM:I = 0x4

.field private static final MSG_PERSIST_HAPTIC_FEEDBACK_TO_DATABASE:I = 0x12

.field private static final MSG_PERSIST_HAPTIC_FEEDBACK_TO_SYSTEM:I = 0x7

.field private static final MSG_PERSIST_LOCKSCREEN_SOUND_TO_DATABASE:I = 0x11

.field private static final MSG_PERSIST_LOCKSCREEN_SOUND_TO_SYSTEM:I = 0x6

.field private static final MSG_PERSIST_NOTIFICATION_RINGTONE_TO_DATABASE:I = 0xc

.field private static final MSG_PERSIST_NOTIFICATION_RINGTONE_TO_SYSTEM:I = 0x2

.field private static final MSG_PERSIST_NOTIFICATION_VOLUME_TO_DATABASE:I = 0x9

.field private static final MSG_PERSIST_PROFILE_NAME_TO_DATABASE:I = 0x13

.field private static final MSG_PERSIST_RINGER_VOLUME_TO_DATABASE:I = 0x8

.field private static final MSG_PERSIST_SIPCALL_RINGTONE_TO_DATABASE:I = 0x17

.field private static final MSG_PERSIST_SIPCALL_RINGTONE_TO_SYSTEM:I = 0x16

.field private static final MSG_PERSIST_SOUND_EFFECT_TO_DATABASE:I = 0x10

.field private static final MSG_PERSIST_SOUND_EFFECT_TO_SYSTEM:I = 0x5

.field private static final MSG_PERSIST_VALUES_TO_SYSTEM_BY_BATCH:I = 0x14

.field private static final MSG_PERSIST_VIBRATION_TO_DATABASE:I = 0xe

.field private static final MSG_PERSIST_VIDEOCALL_RINGTONE_TO_DATABASE:I = 0xd

.field private static final MSG_PERSIST_VIDEOCALL_RINGTONE_TO_SYSTEM:I = 0x3

.field private static final MSG_PERSIST_VOICECALL_RINGTONE_TO_DATABASE:I = 0xb

.field private static final MSG_PERSIST_VOICECALL_RINGTONE_TO_SYSTEM:I = 0x1

.field public static final MTK_BESSURROUND_SUPPORT:Z

.field public static final SILENT_NOTIFICATION_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "AudioProfileService"


# instance fields
.field private mActiveProfileKey:Ljava/lang/String;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAudioProfileHandler:Landroid/os/Handler;

.field private mBesSurroundMode:I

.field private final mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mCustomProfileName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultRingtone:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mDelaySetVibrate:Z

.field private mDeleteCount:I

.field private mDeleteCountName:Ljava/lang/String;

.field private mDeleteProfileName:Ljava/lang/String;

.field private mDeleteProfileTmp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

.field private mIsBesSurroundEnable:Z

.field private mIsLastCustomActiveProfileDeleted:Z

.field private final mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastActiveProfileKey:Ljava/lang/String;

.field private mLastVibrateType:I

.field private final mNotificationObserver:Landroid/database/ContentObserver;

.field private final mPredefinedKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/audioprofile/AudioProfileState;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/audioprofile/AudioProfileService$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mResetFlag:Z

.field private mRingerMode:I

.field private final mRingerModeListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

.field private final mRingerVolumeListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

.field private final mRingtoneObserver:Landroid/database/ContentObserver;

.field private mShouldGetDefaultRingtoneAfterScanFinish:Z

.field private mShouldOverrideSystem:Z

.field private final mShouldSyncToSystem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSimId:J

.field private mSingleSIM:I

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private mTeleManager:Landroid/telephony/TelephonyManager;

.field private final mUpgradeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserId:I

.field private final mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private final mVibrateSettingListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 119
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v0

    sput v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    .line 120
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v0

    sput v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    .line 121
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->videocall_Stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v0

    sput v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    .line 122
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->sipcall_Stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v0

    sput v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    .line 131
    const-string v0, "com.mediatek.uri.silent_notificaton"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 215
    const-string v0, "ro.mtk_bessurround_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/audioprofile/AudioProfileService;->MTK_BESSURROUND_SUPPORT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 776
    invoke-direct {p0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;-><init>()V

    .line 143
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    .line 144
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    .line 146
    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x4

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    .line 148
    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x4

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    .line 150
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDelaySetVibrate:Z

    .line 152
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldOverrideSystem:Z

    .line 155
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldGetDefaultRingtoneAfterScanFinish:Z

    .line 157
    const/4 v10, -0x1

    iput v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastVibrateType:I

    .line 158
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mResetFlag:Z

    .line 161
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsBesSurroundEnable:Z

    .line 162
    const/4 v10, 0x0

    iput v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mBesSurroundMode:I

    .line 166
    const/4 v10, 0x0

    iput v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    .line 168
    const-string v10, "audio_delete_items"

    iput-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDeleteProfileName:Ljava/lang/String;

    .line 170
    const-string v10, "audio_delete_items_count"

    iput-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDeleteCountName:Ljava/lang/String;

    .line 172
    const/4 v10, 0x0

    iput v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDeleteCount:I

    .line 176
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDeleteProfileTmp:Ljava/util/ArrayList;

    .line 182
    new-instance v10, Ljava/util/HashMap;

    const/16 v11, 0xa

    invoke-direct {v10, v11}, Ljava/util/HashMap;-><init>(I)V

    iput-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    .line 188
    new-instance v10, Ljava/util/HashMap;

    const/4 v11, 0x6

    invoke-direct {v10, v11}, Ljava/util/HashMap;-><init>(I)V

    iput-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    .line 195
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    .line 197
    const/4 v10, -0x1

    iput v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 204
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    .line 206
    const-wide/16 v10, -0x1

    iput-wide v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSimId:J

    .line 207
    const/4 v10, -0x1

    iput v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    .line 220
    new-instance v10, Lcom/mediatek/audioprofile/AudioProfileService$1;

    invoke-direct {v10, p0}, Lcom/mediatek/audioprofile/AudioProfileService$1;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    iput-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerModeListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 283
    new-instance v10, Lcom/mediatek/audioprofile/AudioProfileService$2;

    invoke-direct {v10, p0}, Lcom/mediatek/audioprofile/AudioProfileService$2;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    iput-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerVolumeListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 345
    new-instance v10, Lcom/mediatek/audioprofile/AudioProfileService$3;

    invoke-direct {v10, p0}, Lcom/mediatek/audioprofile/AudioProfileService$3;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    iput-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mVibrateSettingListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 361
    new-instance v10, Lcom/mediatek/audioprofile/AudioProfileService$4;

    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    invoke-direct {v10, p0, v11}, Lcom/mediatek/audioprofile/AudioProfileService$4;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;Landroid/os/Handler;)V

    iput-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingtoneObserver:Landroid/database/ContentObserver;

    .line 425
    new-instance v10, Lcom/mediatek/audioprofile/AudioProfileService$5;

    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    invoke-direct {v10, p0, v11}, Lcom/mediatek/audioprofile/AudioProfileService$5;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;Landroid/os/Handler;)V

    iput-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mNotificationObserver:Landroid/database/ContentObserver;

    .line 488
    new-instance v10, Lcom/mediatek/audioprofile/AudioProfileService$6;

    invoke-direct {v10, p0}, Lcom/mediatek/audioprofile/AudioProfileService$6;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    iput-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUpgradeReceiver:Landroid/content/BroadcastReceiver;

    .line 575
    new-instance v10, Lcom/mediatek/audioprofile/AudioProfileService$7;

    invoke-direct {v10, p0}, Lcom/mediatek/audioprofile/AudioProfileService$7;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    iput-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 604
    new-instance v10, Lcom/mediatek/audioprofile/AudioProfileService$8;

    invoke-direct {v10, p0}, Lcom/mediatek/audioprofile/AudioProfileService$8;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    iput-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 777
    const-string v10, "AudioProfileService"

    const-string v11, "Initial AudioProfileService start"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    .line 779
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iput-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 780
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const-string v11, "audio"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioManager;

    iput-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    .line 781
    const-string v10, "storage"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/StorageManager;

    iput-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 782
    const-string v10, "audioprofile"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 783
    .local v1, "audioProfileManager":Lcom/mediatek/audioprofile/AudioProfileManager;
    const-string v10, "phone"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    iput-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 786
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readDefaultRingtones()V

    .line 789
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readPredefinedProfileKeys()V

    .line 790
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readAllProfileKeys()V

    .line 794
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "mtk_audioprofile_active"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 795
    .local v0, "activeProfileKey":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v11, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v11}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    :goto_0
    iput-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    .line 796
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "mtk_audioprofile_last_active"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 797
    .local v5, "lastActiveProfileKey":Ljava/lang/String;
    if-nez v5, :cond_1

    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v11, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v11}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    :goto_1
    iput-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    .line 799
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "mtk_audioprofile_custom_deleted"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iput-boolean v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    .line 802
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->createOverrideSystemThread()V

    .line 805
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 806
    .local v6, "profileKey":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->readPersistedSettings(Ljava/lang/String;)V

    goto :goto_2

    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "lastActiveProfileKey":Ljava/lang/String;
    .end local v6    # "profileKey":Ljava/lang/String;
    :cond_0
    move-object v10, v0

    .line 795
    goto :goto_0

    .restart local v5    # "lastActiveProfileKey":Ljava/lang/String;
    :cond_1
    move-object v10, v5

    .line 797
    goto :goto_1

    .line 810
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v10}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v10

    iput v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 811
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v11, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerModeListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/media/AudioManager;->listenRingerModeAndVolume(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 812
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v11, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerVolumeListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    const/4 v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/media/AudioManager;->listenRingerModeAndVolume(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 814
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v11, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mVibrateSettingListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Landroid/media/AudioManager;->listenRingerModeAndVolume(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 818
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "ringtone"

    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingtoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 820
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "notification_sound"

    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mNotificationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 824
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readShouldSyncToSystem()V

    .line 829
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v11, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 832
    .local v3, "defRingUri":Landroid/net/Uri;
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 833
    .local v7, "scanerFilter":Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 834
    const-string v10, "file"

    invoke-virtual {v7, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 835
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUpgradeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v10, v11, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 838
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 839
    .local v2, "bootFilter":Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 840
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v10, v11, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 843
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 844
    .local v9, "userSwitchFilter":Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 845
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v10, v11, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 847
    if-nez v3, :cond_6

    .line 848
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldGetDefaultRingtoneAfterScanFinish:Z

    .line 858
    :cond_3
    :goto_3
    const-class v10, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v10, v11}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    .line 859
    .local v8, "tmpExt":Lcom/mediatek/common/audioprofile/IAudioProfileExtension;
    if-eqz v8, :cond_9

    .line 860
    iput-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    .line 866
    :goto_4
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    iget-object v11, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-interface {v10, p0, v11}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->init(Lcom/mediatek/common/audioprofile/IAudioProfileService;Landroid/content/Context;)V

    .line 868
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    invoke-interface {v10}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->shouldCheckDefaultProfiles()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 870
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->checkDefaultProfiles()V

    .line 873
    :cond_4
    sget-boolean v10, Lcom/mediatek/audioprofile/AudioProfileService;->MTK_BESSURROUND_SUPPORT:Z

    if-eqz v10, :cond_5

    .line 875
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->initBesSurroundStatus()V

    .line 878
    :cond_5
    const-string v10, "AudioProfileService"

    const-string v11, "Initial AudioProfileService end"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    return-void

    .line 849
    .end local v8    # "tmpExt":Lcom/mediatek/common/audioprofile/IAudioProfileExtension;
    :cond_6
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v10

    if-nez v10, :cond_7

    .line 851
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    goto :goto_3

    .line 852
    :cond_7
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const/16 v11, 0x8

    invoke-static {v10, v11}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v10

    if-nez v10, :cond_8

    .line 853
    const/16 v10, 0x8

    invoke-direct {p0, v10}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    goto :goto_3

    .line 854
    :cond_8
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const/16 v11, 0x10

    invoke-static {v10, v11}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v10

    if-nez v10, :cond_3

    .line 855
    const/16 v10, 0x10

    invoke-direct {p0, v10}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    goto :goto_3

    .line 862
    .restart local v8    # "tmpExt":Lcom/mediatek/common/audioprofile/IAudioProfileExtension;
    :cond_9
    new-instance v10, Lcom/mediatek/audioprofile/DefaultAudioProfileExtension;

    invoke-direct {v10}, Lcom/mediatek/audioprofile/DefaultAudioProfileExtension;-><init>()V

    iput-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    goto :goto_4
.end method

.method static synthetic access$000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/audioprofile/AudioProfileService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/audioprofile/AudioProfileService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mResetFlag:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/audioprofile/AudioProfileService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/audioprofile/AudioProfileService;)J
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSimId:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;IJLandroid/net/Uri;)V
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # J
    .param p5, "x4"    # Landroid/net/Uri;

    .prologue
    .line 87
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/audioprofile/AudioProfileService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldGetDefaultRingtoneAfterScanFinish:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/mediatek/audioprofile/AudioProfileService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldGetDefaultRingtoneAfterScanFinish:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/mediatek/audioprofile/AudioProfileService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readDefaultRingtones()V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1600()I
    .locals 1

    .prologue
    .line 87
    sget v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    return v0
.end method

.method static synthetic access$1700(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1800()I
    .locals 1

    .prologue
    .line 87
    sget v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    return v0
.end method

.method static synthetic access$1900()I
    .locals 1

    .prologue
    .line 87
    sget v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/audioprofile/AudioProfileService;)Lcom/mediatek/common/audioprofile/IAudioProfileExtension;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    return-object v0
.end method

.method static synthetic access$2000()I
    .locals 1

    .prologue
    .line 87
    sget v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    return v0
.end method

.method static synthetic access$2100(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mTeleManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # [Ljava/lang/String;
    .param p4, "x4"    # J

    .prologue
    .line 87
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/audioprofile/AudioProfileService;->updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/mediatek/audioprofile/AudioProfileService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/mediatek/audioprofile/AudioProfileService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistValues(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->readPersistedSettings(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/mediatek/audioprofile/AudioProfileService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/mediatek/audioprofile/AudioProfileService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    return v0
.end method

.method static synthetic access$3200(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getExternalUriData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/audioprofile/AudioProfileService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;

    .prologue
    .line 87
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastVibrateType:I

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/audioprofile/AudioProfileService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastVibrateType:I

    return p1
.end method

.method static synthetic access$802(Lcom/mediatek/audioprofile/AudioProfileService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDelaySetVibrate:Z

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/AudioProfileService;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private checkDefaultProfiles()V
    .locals 7

    .prologue
    .line 3219
    const-string v4, "AudioProfileService"

    const-string v5, "checkDefaultProfiles>>>"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;)V

    .line 3222
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;)V

    .line 3225
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    invoke-interface {v4}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->shouldSyncGeneralRingtoneToOutdoor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3227
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;)V

    .line 3228
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v6, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v6}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 3229
    .local v0, "generalState":Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v6, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v6}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 3231
    .local v2, "outdoorState":Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    iput-object v4, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 3232
    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    iput-object v4, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 3233
    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    iput-object v4, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 3234
    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    iput-object v4, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .line 3238
    .end local v0    # "generalState":Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v2    # "outdoorState":Lcom/mediatek/audioprofile/AudioProfileState;
    :cond_0
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3239
    .local v3, "profileKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/audioprofile/AudioProfileState;

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/audioprofile/AudioProfileState;

    iget v5, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    iput v5, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    goto :goto_0

    .line 3241
    .end local v3    # "profileKey":Ljava/lang/String;
    :cond_1
    const-string v4, "AudioProfileService"

    const-string v5, "checkDefaultProfiles<<<"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3242
    return-void
.end method

.method private createOverrideSystemThread()V
    .locals 4

    .prologue
    .line 3469
    new-instance v1, Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;

    invoke-direct {v1, p0}, Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    .line 3470
    .local v1, "overrideSystemThread":Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;
    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;->start()V

    .line 3472
    monitor-enter p0

    .line 3473
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 3476
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3477
    :catch_0
    move-exception v0

    .line 3478
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "AudioProfileService"

    const-string v3, "Interrupted while waiting on AudioProfileHandler."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3481
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3483
    return-void
.end method

.method private deleteCacheProfiles()V
    .locals 10

    .prologue
    .line 1403
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDeleteProfileTmp:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 1404
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDeleteProfileTmp:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->deleteProfile(Ljava/lang/String;)Z

    .line 1403
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1407
    :cond_0
    const/4 v0, 0x0

    .line 1409
    .local v0, "delCount":I
    :try_start_0
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDeleteCountName:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1414
    :goto_1
    if-lez v0, :cond_2

    .line 1415
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_1

    .line 1416
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDeleteProfileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1418
    .local v5, "tmpProfileKey":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->deleteProfile(Ljava/lang/String;)Z

    .line 1415
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1410
    .end local v5    # "tmpProfileKey":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1411
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v0, 0x0

    goto :goto_1

    .line 1421
    .end local v2    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1422
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v7, "name"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1423
    const-string v7, " like \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1424
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDeleteProfileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1426
    .local v6, "where":Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v6, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1427
    .local v1, "deleted":I
    const-string v7, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delete profiles cache : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " deleted : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    .end local v1    # "deleted":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "where":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private doRingtoneUriSetting(Ljava/lang/String;IJLandroid/net/Uri;)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "simid"    # J
    .param p5, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2156
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 2159
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    .line 2160
    .local v1, "state":Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v6

    move-object v0, p0

    move v2, p2

    move-object v3, p5

    move-wide v4, p3

    .line 2161
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/mediatek/audioprofile/AudioProfileService;->setRingtoneUriInStateMap(Lcom/mediatek/audioprofile/AudioProfileState;ILandroid/net/Uri;J)V

    .line 2162
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2165
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActiveProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2166
    invoke-direct {p0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 2168
    :cond_0
    return-void

    .line 2162
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private doRingtoneUriSetting(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2151
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v4, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/audioprofile/AudioProfileService;->doRingtoneUriSetting(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 2152
    return-void
.end method

.method private genCustomKey()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1335
    const/4 v2, 0x6

    .line 1336
    .local v2, "maxCustom":I
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 1337
    .local v3, "rand":Ljava/util/Random;
    const/4 v1, 0x0

    .line 1339
    .local v1, "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v4

    rem-int v0, v4, v2

    .line 1340
    .local v0, "customNo":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1341
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mtk_audioprofile_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1344
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1345
    const-string v4, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "genCustomKey: newKey = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    return-object v1
.end method

.method private getExternalUriData(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 3622
    if-nez p1, :cond_0

    .line 3644
    :goto_0
    return-object v3

    .line 3626
    :cond_0
    const/4 v7, 0x0

    .line 3627
    .local v7, "data":Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3634
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3635
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 3638
    :cond_1
    if-eqz v6, :cond_2

    .line 3639
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3640
    const/4 v6, 0x0

    .line 3643
    :cond_2
    const-string v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExternalUriData for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v7

    .line 3644
    goto :goto_0

    .line 3638
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3639
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3640
    const/4 v6, 0x0

    :cond_3
    throw v0
.end method

.method private getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 3300
    .local p2, "initValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 3301
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3302
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3304
    .end local v0    # "value":Ljava/lang/String;
    .end local p3    # "defaultValue":I
    :cond_0
    :goto_0
    return p3

    .line 3302
    .restart local v0    # "value":Ljava/lang/String;
    .restart local p3    # "defaultValue":I
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0
.end method

.method private getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "defaultUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 3281
    .local p2, "initValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 3282
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3283
    .local v0, "uriString":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3285
    .end local v0    # "uriString":Ljava/lang/String;
    .end local p3    # "defaultUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object p3

    .line 3283
    .restart local v0    # "uriString":Ljava/lang/String;
    .restart local p3    # "defaultUri":Landroid/net/Uri;
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    goto :goto_0
.end method

.method private getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 3319
    .local p2, "initValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 3320
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3321
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3323
    .end local v0    # "value":Ljava/lang/String;
    .end local p3    # "defaultValue":Z
    :cond_0
    :goto_0
    return p3

    .line 3321
    .restart local v0    # "value":Ljava/lang/String;
    .restart local p3    # "defaultValue":Z
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    goto :goto_0
.end method

.method private getPersistedValueForUser(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 3336
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, -0x2

    invoke-static {v2, p1, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3337
    .local v0, "enabled":Ljava/lang/String;
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3338
    move v1, p2

    .line 3339
    .local v1, "value":Z
    if-eqz v0, :cond_0

    .line 3340
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 3342
    :cond_0
    return v1
.end method

.method private getStreamValidVolume(II)I
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "volume"    # I

    .prologue
    .line 1772
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamMaxVolume(I)I

    move-result v0

    .line 1773
    .local v0, "max":I
    move v1, p2

    .line 1774
    .local v1, "validVolume":I
    if-gez p2, :cond_1

    .line 1775
    const/4 v1, 0x0

    .line 1779
    :cond_0
    :goto_0
    return v1

    .line 1776
    :cond_1
    if-le p2, v0, :cond_0

    .line 1777
    move v1, v0

    goto :goto_0
.end method

.method private initBesSurroundStatus()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 3648
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "mtk_audioprofile_bessuround"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3649
    .local v0, "BesSurroundCode":I
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "mtk_audioprofile_bessuround_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3650
    .local v1, "BesSurroundMode":I
    if-ne v0, v5, :cond_0

    .line 3651
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "mtk_audioprofile_bessuround"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3655
    :cond_0
    if-nez v0, :cond_1

    .line 3656
    invoke-virtual {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->setBesSurroundState(Z)I

    .line 3659
    :cond_1
    if-ne v0, v4, :cond_2

    .line 3660
    invoke-virtual {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->setBesSurroundState(Z)I

    .line 3663
    :cond_2
    if-ne v1, v5, :cond_3

    .line 3664
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "mtk_audioprofile_bessuround_mode"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3668
    :cond_3
    if-nez v1, :cond_4

    .line 3669
    invoke-virtual {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->setBesSurroundMode(I)I

    .line 3672
    :cond_4
    if-ne v1, v4, :cond_5

    .line 3673
    iput v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mBesSurroundMode:I

    .line 3674
    invoke-virtual {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->setBesSurroundMode(I)I

    .line 3676
    :cond_5
    return-void
.end method

.method private isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj1"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .prologue
    .line 2209
    if-nez p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRingtoneUriChanged(Lcom/mediatek/audioprofile/AudioProfileState;ILandroid/net/Uri;)Z
    .locals 1
    .param p1, "profileState"    # Lcom/mediatek/audioprofile/AudioProfileState;
    .param p2, "type"    # I
    .param p3, "newRingtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 2088
    sparse-switch p2, :sswitch_data_0

    .line 2101
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 2090
    :sswitch_0
    iget-object v0, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    invoke-direct {p0, v0, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2093
    :sswitch_1
    iget-object v0, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    invoke-direct {p0, v0, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2096
    :sswitch_2
    iget-object v0, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    invoke-direct {p0, v0, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2099
    :sswitch_3
    iget-object v0, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    invoke-direct {p0, v0, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2088
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private isValidRingtoneType(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 2083
    if-eq v0, p1, :cond_0

    const/4 v1, 0x2

    if-eq v1, p1, :cond_0

    const/16 v1, 0x8

    if-eq v1, p1, :cond_0

    const/16 v1, 0x10

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyAudioProfileChanged()V
    .locals 7

    .prologue
    .line 1107
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1108
    const-string v3, "AudioProfileService"

    const-string v4, "notifyAudioProfileChanged falled, because active profile key is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :goto_0
    return-void

    .line 1112
    :cond_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1113
    const-string v3, "AudioProfileService"

    const-string v4, "notifyAudioProfileChanged falled, because there are no listener!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1117
    :cond_1
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyAudioProfileChanged: New profile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", clients = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1119
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1120
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1121
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;

    .line 1122
    .local v2, "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    iget v3, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mEvent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 1124
    :try_start_1
    iget-object v3, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mCallback:Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-interface {v3, v5}, Lcom/mediatek/common/audioprofile/IAudioProfileListener;->onProfileChanged(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1125
    :catch_0
    move-exception v0

    .line 1126
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1127
    const-string v3, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dead object in notifyAudioProfileChanged, remove listener\'s callback: record.mBinder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", clients = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1133
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    .end local v2    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private persistDtmfToneToDatabase(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v5, -0x1

    .line 2621
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2622
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDtmfToneKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2623
    .local v2, "name":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2624
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0xf

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2625
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2626
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2627
    return-void
.end method

.method private persistDtmfToneToSystem()V
    .locals 6

    .prologue
    .line 2837
    const-string v2, "dtmf_tone"

    .line 2838
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2839
    .local v0, "enabled":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2840
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2841
    return-void

    .line 2838
    .end local v0    # "enabled":I
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private persistHapticFeedbackToDatabase(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v5, -0x1

    .line 2675
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2676
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getHapticKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2677
    .local v2, "name":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2678
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x12

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2679
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2680
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2681
    return-void
.end method

.method private persistHapticFeedbackToSystem()V
    .locals 6

    .prologue
    .line 2867
    const-string v2, "haptic_feedback_enabled"

    .line 2868
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2869
    .local v0, "enabled":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2870
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2871
    return-void

    .line 2868
    .end local v0    # "enabled":I
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private persistLockScreenToDatabase(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v5, -0x1

    .line 2657
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2658
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getLockScreenKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2659
    .local v2, "name":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2660
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x11

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2661
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2662
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2663
    return-void
.end method

.method private persistLockScreenToSystem()V
    .locals 6

    .prologue
    .line 2857
    const-string v2, "lockscreen_sounds_enabled"

    .line 2858
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2859
    .local v0, "enabled":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2860
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2861
    return-void

    .line 2858
    .end local v0    # "enabled":I
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private persistProfileNameToDatabase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 2692
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2693
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2694
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2695
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x13

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2696
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2697
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2698
    return-void
.end method

.method private persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "simId"    # J
    .param p5, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, -0x1

    .line 2522
    const/4 v2, 0x0

    .line 2523
    .local v2, "name":Ljava/lang/String;
    iget v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v4, v3

    cmp-long v3, p3, v4

    if-nez v3, :cond_0

    .line 2524
    invoke-static {p1, p2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2529
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2530
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez p5, :cond_1

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2531
    sparse-switch p2, :sswitch_data_0

    .line 2549
    const-string v3, "AudioProfileService"

    const-string v4, "persistRingtoneUriToDatabase with undefined stream type!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    :goto_2
    return-void

    .line 2526
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2530
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2533
    :sswitch_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2552
    .local v1, "msg":Landroid/os/Message;
    :goto_3
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2553
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 2537
    .end local v1    # "msg":Landroid/os/Message;
    :sswitch_1
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2538
    .restart local v1    # "msg":Landroid/os/Message;
    goto :goto_3

    .line 2541
    .end local v1    # "msg":Landroid/os/Message;
    :sswitch_2
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2542
    .restart local v1    # "msg":Landroid/os/Message;
    goto :goto_3

    .line 2545
    .end local v1    # "msg":Landroid/os/Message;
    :sswitch_3
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x17

    invoke-virtual {v3, v4, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2546
    .restart local v1    # "msg":Landroid/os/Message;
    goto :goto_3

    .line 2531
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private persistRingtoneUriToSystem(I)V
    .locals 7
    .param p1, "type"    # I

    .prologue
    const/4 v6, -0x1

    .line 2716
    new-instance v0, Landroid/os/Bundle;

    const/4 v4, 0x4

    invoke-direct {v0, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 2717
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 2718
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2720
    .local v3, "uri":Landroid/net/Uri;
    sparse-switch p1, :sswitch_data_0

    .line 2750
    const-string v4, "AudioProfileService"

    const-string v5, "persistRingtoneUriToSystem with unsupport type!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    :goto_0
    return-void

    .line 2722
    :sswitch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2723
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v4

    iget-object v3, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 2724
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2753
    .local v1, "msg":Landroid/os/Message;
    :goto_1
    if-nez v3, :cond_1

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2754
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2755
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2728
    .end local v1    # "msg":Landroid/os/Message;
    :sswitch_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2729
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v4

    iget-object v3, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 2731
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v4, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2732
    const/4 v3, 0x0

    .line 2734
    :cond_0
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2735
    .restart local v1    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 2738
    .end local v1    # "msg":Landroid/os/Message;
    :sswitch_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2739
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v4

    iget-object v3, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 2740
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2741
    .restart local v1    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 2744
    .end local v1    # "msg":Landroid/os/Message;
    :sswitch_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2745
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v4

    iget-object v3, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .line 2746
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v5, 0x16

    invoke-virtual {v4, v5, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2747
    .restart local v1    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 2753
    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 2720
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private persistSoundEffectToDatabase(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v5, -0x1

    .line 2639
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2640
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getSoundEffectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2641
    .local v2, "name":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2642
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x10

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2643
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2644
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2645
    return-void
.end method

.method private persistSoundEffectToSystem()V
    .locals 6

    .prologue
    .line 2847
    const-string v2, "sound_effects_enabled"

    .line 2848
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2849
    .local v0, "enabled":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2850
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2851
    return-void

    .line 2848
    .end local v0    # "enabled":I
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private persistStreamVolumeToDatabase(Ljava/lang/String;II)V
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "streamType"    # I
    .param p3, "value"    # I

    .prologue
    const/4 v4, -0x1

    .line 2571
    invoke-static {p1, p2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2572
    .local v1, "name":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 2586
    :pswitch_0
    const-string v2, "AudioProfileService"

    const-string v3, "persistStreamVolumeToDatabase with undefined stream type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    :goto_0
    return-void

    .line 2574
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, p3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2589
    .local v0, "msg":Landroid/os/Message;
    :goto_1
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2578
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_2
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, p3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2579
    .restart local v0    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 2582
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_3
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, p3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2583
    .restart local v0    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 2572
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private persistStreamVolumeToSystem(I)V
    .locals 7
    .param p1, "streamType"    # I

    .prologue
    .line 2768
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    invoke-interface {v4, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->persistStreamVolumeToSystem(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2798
    :goto_0
    return-void

    .line 2772
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2775
    .local v2, "ident":J
    const/4 v0, 0x0

    .line 2776
    .local v0, "flags":I
    const/4 v1, 0x0

    .line 2777
    .local v1, "volume":I
    packed-switch p1, :pswitch_data_0

    .line 2791
    :pswitch_0
    :try_start_0
    const-string v4, "AudioProfileService"

    const-string v5, "persistStreamVolumeToSystem with unsupport type!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2796
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2779
    :pswitch_1
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v4

    iget v1, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 2780
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2794
    :goto_1
    const-string v4, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "persistStreamVolumeToSystem: streamType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", volume = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2796
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2783
    :pswitch_2
    :try_start_2
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v4

    iget v1, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 2784
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2796
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2787
    :pswitch_3
    :try_start_3
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v4

    iget v1, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 2788
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2777
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private persistValues(Z)V
    .locals 5
    .param p1, "overrideSystem"    # Z

    .prologue
    const/4 v4, 0x2

    .line 1468
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 1469
    .local v0, "activeProfileState":Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 1470
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persistValues error with no "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistVibrationToSystem()V

    .line 1478
    if-eqz p1, :cond_0

    .line 1479
    invoke-direct {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1480
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1481
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1482
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1483
    invoke-direct {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1484
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1485
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1488
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistDtmfToneToSystem()V

    .line 1489
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistSoundEffectToSystem()V

    .line 1490
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistLockScreenToSystem()V

    .line 1491
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistHapticFeedbackToSystem()V

    .line 1492
    return-void

    .line 1472
    :cond_1
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persistValues: override = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private persistValuesToSystemByBatch(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2880
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2881
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2882
    return-void
.end method

.method private persistVibrationToDatabase(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v5, -0x1

    .line 2602
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2603
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2604
    .local v2, "name":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2605
    const-string v3, "Vibration"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2606
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0xe

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2607
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2608
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2609
    return-void
.end method

.method private persistVibrationToSystem()V
    .locals 9

    .prologue
    const/16 v8, 0x15

    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 2805
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v7}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v1

    .line 2806
    .local v1, "vibratinRinger":I
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    .line 2807
    .local v0, "vibratinNotification":I
    const-string v4, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "persistVibrationToSystem current vibrate status: ringer = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", notification = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    if-eq v1, v0, :cond_0

    .line 2811
    const-string v4, "AudioProfileService"

    const-string v5, "persistVibrationToSystem different vibrate settings, so CTS test running, delay 10 sec to set vibration!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2814
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x4e20

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2815
    iput-boolean v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDelaySetVibrate:Z

    .line 2831
    :goto_0
    return-void

    .line 2818
    :cond_0
    iget-boolean v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDelaySetVibrate:Z

    if-eqz v4, :cond_1

    .line 2819
    const-string v3, "AudioProfileService"

    const-string v4, "persistVibrationToSystem: CTS test running,delay 20 sec to set vibration!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2825
    :cond_1
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v4

    iget-boolean v4, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    if-eqz v4, :cond_2

    move v2, v3

    .line 2828
    .local v2, "vibrationStatus":I
    :goto_1
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v7, v2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 2829
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v3, v2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 2830
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persistVibrationToSystem set ringer and notification vibrate to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2825
    .end local v2    # "vibrationStatus":I
    :cond_2
    const/4 v2, 0x2

    goto :goto_1
.end method

.method private readAllProfileKeys()V
    .locals 15

    .prologue
    .line 2955
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2958
    const-string v11, "name"

    .line 2959
    .local v11, "nameColumn":Ljava/lang/String;
    const-string v13, "value"

    .line 2961
    .local v13, "valueColumn":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    aput-object v13, v2, v0

    .line 2963
    .local v2, "projection":[Ljava/lang/String;
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v8

    .line 2964
    .local v8, "customPrefix":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 2965
    .local v12, "selection":Ljava/lang/StringBuffer;
    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "_%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2967
    const-string v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readProfileKeys: selection = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2970
    const-string v5, "_id asc"

    .line 2971
    .local v5, "sortOrder":Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2974
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 2975
    const-string v0, "AudioProfileService"

    const-string v1, "getProfileKeys: Null custom cursor!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    :goto_0
    return-void

    .line 2978
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2979
    .local v6, "count":I
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 2981
    .local v14, "valueIndex":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2982
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v6, :cond_2

    .line 2983
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2984
    .local v10, "key":Ljava/lang/String;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2985
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2989
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 2982
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2987
    :cond_1
    const-string v0, "AudioProfileService"

    const-string v1, "readProfileKeys: Null custom key!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2991
    .end local v10    # "key":Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2992
    const-string v0, "AudioProfileService"

    const-string v1, "readProfileKeys: finised"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readDefaultRingtones()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 3122
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v0, v4, :cond_0

    .line 3124
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    invoke-interface {v4, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3128
    .end local v0    # "i":I
    :cond_0
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mtk_audioprofile_default_ringtone"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3129
    .local v2, "uriString":Ljava/lang/String;
    if-nez v2, :cond_1

    move-object v1, v3

    .line 3130
    .local v1, "uri":Landroid/net/Uri;
    :goto_1
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v5, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v4, v5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3133
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mtk_audioprofile_default_notification"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3134
    if-nez v2, :cond_2

    move-object v1, v3

    .line 3135
    :goto_2
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v5, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-interface {v4, v5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3138
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mtk_audioprofile_default_video_call"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3139
    if-nez v2, :cond_3

    move-object v1, v3

    .line 3140
    :goto_3
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v5, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-interface {v4, v5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3143
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mtk_audioprofile_default_sip_call"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3144
    if-nez v2, :cond_4

    move-object v1, v3

    .line 3145
    :goto_4
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v4, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-interface {v3, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3147
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readDefaultRingtones: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    return-void

    .line 3129
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 3134
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_2

    .line 3139
    :cond_3
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_3

    .line 3144
    :cond_4
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_4
.end method

.method private readNewProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "simId"    # J

    .prologue
    .line 1944
    const-string v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProfileState of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null, so create new one instead!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->readPersistedSettings(Ljava/lang/String;J)V

    .line 1946
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;

    return-object v0
.end method

.method private readPersistedSettings(Ljava/lang/String;)V
    .locals 2
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 3114
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->readPersistedSettings(Ljava/lang/String;J)V

    .line 3115
    return-void
.end method

.method private readPersistedSettings(Ljava/lang/String;J)V
    .locals 32
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "simId"    # J

    .prologue
    .line 3013
    if-nez p1, :cond_0

    .line 3014
    const-string v4, "AudioProfileService"

    const-string v5, "readPersistedSettings with Null profile key!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    :goto_0
    return-void

    .line 3018
    :cond_0
    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string v5, "value"

    aput-object v5, v6, v4

    .line 3019
    .local v6, "projection":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name like \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3020
    .local v7, "selection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 3021
    .local v11, "cursor":Landroid/database/Cursor;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 3022
    .local v15, "initValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3023
    const-string v4, "name"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 3024
    .local v18, "nameIndex":I
    const-string v4, "value"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 3026
    .local v27, "valueIndex":I
    :cond_1
    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 3027
    .local v17, "name":Ljava/lang/String;
    move/from16 v0, v27

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 3028
    .local v26, "value":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3029
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3034
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "nameIndex":I
    .end local v26    # "value":Ljava/lang/String;
    .end local v27    # "valueIndex":I
    :goto_1
    if-eqz v11, :cond_2

    .line 3035
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3038
    :cond_2
    const/16 v17, 0x0

    .line 3039
    .restart local v17    # "name":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDefaultState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v12

    .line 3042
    .local v12, "defaultState":Lcom/mediatek/audioprofile/AudioProfileState;
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-static {v0, v4, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v17

    .line 3044
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v5, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v30

    .line 3047
    .local v30, "voiceCallUri":Landroid/net/Uri;
    const/4 v4, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 3048
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v5, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v19

    .line 3051
    .local v19, "notificationUri":Landroid/net/Uri;
    const/16 v4, 0x8

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-static {v0, v4, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v17

    .line 3052
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v5, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v29

    .line 3055
    .local v29, "videoCallUri":Landroid/net/Uri;
    const/16 v4, 0x10

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-static {v0, v4, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v17

    .line 3056
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v5, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v24

    .line 3060
    .local v24, "sipCallUri":Landroid/net/Uri;
    const/4 v4, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 3061
    iget v4, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I

    move-result v23

    .line 3063
    .local v23, "ringerVolume":I
    const/4 v4, 0x5

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 3064
    iget v4, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I

    move-result v20

    .line 3066
    .local v20, "notificationVolume":I
    const/4 v4, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 3067
    iget v4, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I

    move-result v10

    .line 3071
    .local v10, "alarmVolume":I
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3072
    iget-boolean v4, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v28

    .line 3074
    .local v28, "vibration":Z
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDtmfToneKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3075
    iget-boolean v4, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v13

    .line 3077
    .local v13, "dtmfTone":Z
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getSoundEffectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3078
    iget-boolean v4, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v25

    .line 3080
    .local v25, "soundEffect":Z
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getLockScreenKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3081
    iget-boolean v4, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v16

    .line 3083
    .local v16, "lockScreensound":Z
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getHapticKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3084
    iget-boolean v4, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v14

    .line 3087
    .local v14, "hapticFeedback":Z
    new-instance v4, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    move-object/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v4

    move/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1, v10}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->simId(J)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v21

    .line 3097
    .local v21, "persistedState":Lcom/mediatek/audioprofile/AudioProfileState;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3099
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3100
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3101
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 3102
    .local v22, "profileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3105
    .end local v22    # "profileName":Ljava/lang/String;
    :cond_3
    const-string v4, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readPersistedSettings with "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ": "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3031
    .end local v10    # "alarmVolume":I
    .end local v12    # "defaultState":Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v13    # "dtmfTone":Z
    .end local v14    # "hapticFeedback":Z
    .end local v16    # "lockScreensound":Z
    .end local v17    # "name":Ljava/lang/String;
    .end local v19    # "notificationUri":Landroid/net/Uri;
    .end local v20    # "notificationVolume":I
    .end local v21    # "persistedState":Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v23    # "ringerVolume":I
    .end local v24    # "sipCallUri":Landroid/net/Uri;
    .end local v25    # "soundEffect":Z
    .end local v28    # "vibration":Z
    .end local v29    # "videoCallUri":Landroid/net/Uri;
    .end local v30    # "voiceCallUri":Landroid/net/Uri;
    :cond_4
    const-string v4, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readPersistedSettings: No value for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private readPredefinedProfileKeys()V
    .locals 3

    .prologue
    .line 2999
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3000
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3001
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3002
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3003
    const-string v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readPredefindProfileKeys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    return-void
.end method

.method private readShouldSyncToSystem()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 3157
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->values()[Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    move-result-object v7

    array-length v4, v7

    .line 3158
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 3159
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3161
    :cond_0
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .line 3165
    .local v0, "activeScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 3167
    :cond_1
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    .line 3168
    .local v6, "systemVolume":I
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iget v3, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 3169
    .local v3, "profileVolume":I
    if-eq v3, v6, :cond_2

    .line 3170
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v8, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v8}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3173
    :cond_2
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    .line 3174
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iget v3, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 3175
    if-eq v3, v6, :cond_3

    .line 3176
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v8, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v8}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3179
    :cond_3
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    .line 3180
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iget v3, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 3181
    if-eq v3, v6, :cond_4

    .line 3182
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v8, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v8}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3186
    :cond_4
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v7, v10}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 3187
    .local v5, "systemUri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iget-object v2, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 3188
    .local v2, "profileUri":Landroid/net/Uri;
    if-eqz v2, :cond_5

    invoke-virtual {v2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    if-nez v2, :cond_7

    if-eqz v5, :cond_7

    .line 3189
    :cond_6
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v8, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3192
    :cond_7
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v7, v11}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 3193
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iget-object v2, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 3194
    if-eqz v2, :cond_8

    invoke-virtual {v2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    if-nez v2, :cond_a

    if-eqz v5, :cond_a

    .line 3195
    :cond_9
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v8, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3198
    :cond_a
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const/16 v8, 0x8

    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 3199
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iget-object v2, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 3200
    if-eqz v2, :cond_b

    invoke-virtual {v2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    if-nez v2, :cond_d

    if-eqz v5, :cond_d

    .line 3201
    :cond_c
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v8, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3204
    :cond_d
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const/16 v8, 0x10

    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 3205
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iget-object v2, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .line 3206
    if-eqz v2, :cond_e

    invoke-virtual {v2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    :cond_e
    if-nez v2, :cond_10

    if-eqz v5, :cond_10

    .line 3207
    :cond_f
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v8, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3210
    .end local v2    # "profileUri":Landroid/net/Uri;
    .end local v3    # "profileVolume":I
    .end local v5    # "systemUri":Landroid/net/Uri;
    .end local v6    # "systemVolume":I
    :cond_10
    const-string v7, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readShouldSyncToSystem: mShouldSyncToSystem = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3211
    return-void
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 3419
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3420
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3421
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3422
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/audioprofile/AudioProfileService$Record;

    .line 3423
    .local v1, "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    iget-object v2, v1, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3424
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 3425
    const-string v2, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removed AudioProfile change listener for: record.mBinder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", clients = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3429
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    .end local v1    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3430
    return-void
.end method

.method private restoreToDefaultValues(Ljava/lang/String;)V
    .locals 10
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1502
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDefaultState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1503
    .local v0, "defaultState":Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 1504
    .local v3, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v8

    .line 1505
    :try_start_0
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v9, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    iput-object v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 1506
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v9, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    iput-object v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 1507
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v9, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    iput-object v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 1508
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v9, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    iput-object v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .line 1510
    iget v7, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    iput v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 1511
    iget v7, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    iput v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 1512
    iget v7, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    iput v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 1514
    iget-boolean v7, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    iput-boolean v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    .line 1515
    iget-boolean v7, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    iput-boolean v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 1516
    iget-boolean v7, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    iput-boolean v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    .line 1517
    iget-boolean v7, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    iput-boolean v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    .line 1518
    iget-boolean v7, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    iput-boolean v7, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 1519
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1520
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getAllKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1521
    .local v2, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1522
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v7, "name"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    const-string v7, " in ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1524
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 1525
    .local v5, "size":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 1526
    const-string v7, "?,"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1519
    .end local v1    # "i":I
    .end local v2    # "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "size":I
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 1528
    .restart local v1    # "i":I
    .restart local v2    # "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "size":I
    :cond_0
    const-string v7, "?)"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1529
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1530
    .local v6, "where":Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    new-array v7, v5, [Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v8, v9, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1531
    const-string v7, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreToDefaultValues: profileKey = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    return-void
.end method

.method private setActiveKey(Ljava/lang/String;)Z
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1043
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1045
    .local v2, "token":J
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "mtk_audioprofile_active"

    invoke-static {v1, v4, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1047
    .local v0, "succeed":Z
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    .line 1048
    const-string v1, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setActiveKey: succeed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", profileKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1052
    return v0
.end method

.method private setLastActiveKey(Ljava/lang/String;)Z
    .locals 8
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1056
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1057
    .local v4, "token":J
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "mtk_audioprofile_last_active"

    invoke-static {v3, v6, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1058
    .local v2, "succeed":Z
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    .line 1059
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1061
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1062
    .local v1, "sizeOfShouldSyncToSystem":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1063
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1062
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1065
    :cond_0
    const-string v3, "AudioProfileService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setLastActiveKey: succeed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", profileKey = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    return v2
.end method

.method private setLastCustomActiveDeleted(Z)Z
    .locals 4
    .param p1, "deleted"    # Z

    .prologue
    .line 1070
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "mtk_audioprofile_custom_deleted"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1073
    .local v0, "succeed":Z
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    .line 1074
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCustomActiveDeleted: changed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    return v0
.end method

.method private setOldProfileSettings(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;Ljava/lang/String;)V
    .locals 2
    .param p1, "oldScenario"    # Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .param p2, "oldProfileKey"    # Ljava/lang/String;

    .prologue
    .line 1012
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1, p1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1, p1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1, p1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->shouldSyncGeneralRingtoneToOutdoor()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1016
    :cond_0
    invoke-direct {p0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->setLastActiveKey(Ljava/lang/String;)Z

    move-result v0

    .line 1017
    .local v0, "lastActiveChanged":Z
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    if-eqz v1, :cond_1

    .line 1018
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->setLastCustomActiveDeleted(Z)Z

    .line 1021
    .end local v0    # "lastActiveChanged":Z
    :cond_1
    return-void
.end method

.method private setRingerModeMatchProfile(ZI)V
    .locals 4
    .param p1, "shouldSetRingerMode"    # Z
    .param p2, "expectRingerMode"    # I

    .prologue
    .line 1024
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 1025
    .local v0, "actualRingerMode":I
    if-eqz p1, :cond_0

    if-eq v0, p2, :cond_0

    .line 1026
    iput p2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 1027
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p2}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 1029
    :cond_0
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRingerModeMatchProfile: actual = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    return-void
.end method

.method private setRingtoneUriInStateMap(Lcom/mediatek/audioprofile/AudioProfileState;ILandroid/net/Uri;)V
    .locals 6
    .param p1, "state"    # Lcom/mediatek/audioprofile/AudioProfileState;
    .param p2, "type"    # I
    .param p3, "value"    # Landroid/net/Uri;

    .prologue
    .line 2171
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v4, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/audioprofile/AudioProfileService;->setRingtoneUriInStateMap(Lcom/mediatek/audioprofile/AudioProfileState;ILandroid/net/Uri;J)V

    .line 2172
    return-void
.end method

.method private setRingtoneUriInStateMap(Lcom/mediatek/audioprofile/AudioProfileState;ILandroid/net/Uri;J)V
    .locals 2
    .param p1, "state"    # Lcom/mediatek/audioprofile/AudioProfileState;
    .param p2, "type"    # I
    .param p3, "value"    # Landroid/net/Uri;
    .param p4, "simId"    # J

    .prologue
    .line 2175
    sparse-switch p2, :sswitch_data_0

    .line 2196
    :goto_0
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v0, v0

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    .line 2197
    iput-wide p4, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mSimId:J

    .line 2199
    :cond_0
    return-void

    .line 2177
    :sswitch_0
    iput-object p3, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    goto :goto_0

    .line 2181
    :sswitch_1
    iput-object p3, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    goto :goto_0

    .line 2185
    :sswitch_2
    iput-object p3, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    goto :goto_0

    .line 2189
    :sswitch_3
    iput-object p3, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    goto :goto_0

    .line 2175
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private syncGeneralRingtoneToOutdoor(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "newRingtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 2135
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v4, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/audioprofile/AudioProfileService;->syncGeneralRingtoneToOutdoor(Ljava/lang/String;ILandroid/net/Uri;J)V

    .line 2136
    return-void
.end method

.method private syncGeneralRingtoneToOutdoor(Ljava/lang/String;ILandroid/net/Uri;J)V
    .locals 8
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "newRingtoneUri"    # Landroid/net/Uri;
    .param p4, "simId"    # J

    .prologue
    .line 2142
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .line 2143
    .local v0, "scenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2144
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "outdoorKey":Ljava/lang/String;
    move-object v1, p0

    move v3, p2

    move-wide v4, p4

    move-object v6, p3

    .line 2145
    invoke-direct/range {v1 .. v6}, Lcom/mediatek/audioprofile/AudioProfileService;->doRingtoneUriSetting(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 2146
    const-string v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "synchronize general to outdoor! ringtone type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    .end local v2    # "outdoorKey":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private syncRingtoneToSystem()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1592
    const/4 v1, 0x0

    .line 1593
    .local v1, "systemUri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 1596
    .local v0, "profileUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1597
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v2, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1599
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 1600
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1601
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 1603
    :cond_1
    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1604
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncRingtoneToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    :cond_2
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1611
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v2, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1613
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 1614
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1615
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 1617
    :cond_4
    invoke-direct {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1618
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncRingtoneToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    :cond_5
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1625
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v2, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1627
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 1628
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1629
    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    if-nez v0, :cond_8

    if-eqz v1, :cond_8

    .line 1631
    :cond_7
    invoke-direct {p0, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1632
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncRingtoneToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    :cond_8
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1639
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v2, v9}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1641
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v9}, Lcom/mediatek/audioprofile/AudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 1642
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1643
    if-eqz v0, :cond_9

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    if-nez v0, :cond_b

    if-eqz v1, :cond_b

    .line 1645
    :cond_a
    invoke-direct {p0, v9}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1646
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncRingtoneToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :cond_b
    return-void
.end method

.method private syncVolumeToSystem()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 1542
    const/4 v1, 0x0

    .line 1543
    .local v1, "systemVolume":I
    const/4 v0, 0x0

    .line 1545
    .local v0, "profileVolume":I
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1546
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1547
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamVolume(Ljava/lang/String;I)I

    move-result v0

    .line 1548
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1549
    if-eq v0, v1, :cond_0

    .line 1550
    invoke-direct {p0, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1551
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncVolumeToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    :cond_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1559
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1560
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamVolume(Ljava/lang/String;I)I

    move-result v0

    .line 1562
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1563
    if-eq v0, v1, :cond_1

    .line 1564
    invoke-direct {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1565
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncVolumeToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    :cond_1
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1571
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1572
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamVolume(Ljava/lang/String;I)I

    move-result v0

    .line 1573
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1574
    if-eq v0, v1, :cond_2

    .line 1575
    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1576
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncVolumeToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :cond_2
    return-void
.end method

.method private updateRintoneUri(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Landroid/net/Uri;
    .locals 22
    .param p1, "dataKey"    # Ljava/lang/String;
    .param p2, "profileKey"    # Ljava/lang/String;
    .param p3, "streamType"    # I
    .param p4, "volumePath"    # [Ljava/lang/String;

    .prologue
    .line 703
    const-string v4, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateRintoneUri :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with ringtoneType  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  -  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v18

    .line 705
    .local v18, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    const/16 v17, 0x0

    .line 707
    .local v17, "oldUri":Landroid/net/Uri;
    sparse-switch p3, :sswitch_data_0

    .line 725
    const-string v4, "AudioProfileService"

    const-string v5, "updateRintoneUri with unsupport type!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/4 v15, 0x0

    .line 768
    :cond_0
    :goto_0
    return-object v15

    .line 709
    :sswitch_0
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    move-object/from16 v17, v0

    .line 729
    :goto_1
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 730
    const/4 v15, 0x0

    .line 731
    .local v15, "newUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 732
    .local v20, "uriData":Ljava/lang/String;
    if-nez v20, :cond_1

    .line 733
    const/4 v15, 0x0

    goto :goto_0

    .line 713
    .end local v15    # "newUri":Landroid/net/Uri;
    .end local v20    # "uriData":Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    move-object/from16 v17, v0

    .line 714
    goto :goto_1

    .line 717
    :sswitch_2
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    move-object/from16 v17, v0

    .line 718
    goto :goto_1

    .line 721
    :sswitch_3
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    move-object/from16 v17, v0

    .line 722
    goto :goto_1

    .line 735
    .restart local v15    # "newUri":Landroid/net/Uri;
    .restart local v20    # "uriData":Ljava/lang/String;
    :cond_1
    const-string v4, "/"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v21, v4, v5

    .line 736
    .local v21, "uriSdPath":Ljava/lang/String;
    move-object/from16 v0, p4

    array-length v14, v0

    .line 740
    .local v14, "length":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v14, :cond_5

    .line 741
    aget-object v4, p4, v11

    aget-object v5, p4, v11

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 742
    .local v19, "sdPath":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 743
    .local v16, "newUriData":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const-string v7, "_data=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v16, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 751
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_2

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 752
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 753
    .local v12, "id":J
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 754
    const-string v4, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update ringtone uri for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with new uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    if-eqz v10, :cond_0

    .line 759
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 760
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 758
    .end local v12    # "id":J
    :cond_2
    if-eqz v10, :cond_3

    .line 759
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 760
    const/4 v10, 0x0

    .line 740
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 758
    :catchall_0
    move-exception v4

    if-eqz v10, :cond_4

    .line 759
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 760
    const/4 v10, 0x0

    :cond_4
    throw v4

    .line 765
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v16    # "newUriData":Ljava/lang/String;
    .end local v19    # "sdPath":Ljava/lang/String;
    :cond_5
    const-string v4, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update ringtone uri for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 768
    .end local v11    # "i":I
    .end local v14    # "length":I
    .end local v15    # "newUri":Landroid/net/Uri;
    .end local v20    # "uriData":Ljava/lang/String;
    .end local v21    # "uriSdPath":Ljava/lang/String;
    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 707
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "ringtoneType"    # I
    .param p3, "volumePath"    # [Ljava/lang/String;

    .prologue
    .line 695
    const-string v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRintoneUriWithType  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with ringtoneType  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v4, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/audioprofile/AudioProfileService;->updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;J)V

    .line 699
    return-void
.end method

.method private updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;J)V
    .locals 16
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "ringtoneType"    # I
    .param p3, "volumePath"    # [Ljava/lang/String;
    .param p4, "simId"    # J

    .prologue
    .line 644
    const-string v5, "AudioProfileService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateRintoneUriWithType  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with ringtoneType  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " simId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-wide/from16 v2, p4

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 648
    .local v4, "dataKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->updateRintoneUri(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 649
    .local v10, "newUri":Landroid/net/Uri;
    const-string v5, "AudioProfileService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateRintoneUriWithType   uri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  with ringtoneType  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    if-eqz v10, :cond_0

    .line 652
    new-instance v14, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v14, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 654
    .local v14, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v13

    .line 655
    .local v13, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    sparse-switch p2, :sswitch_data_0

    .line 677
    const-string v5, "AudioProfileService"

    const-string v6, "getRingtoneUri with unsupport type!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-wide/from16 v8, p4

    .line 680
    invoke-direct/range {v5 .. v10}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 681
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 683
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v10, v14, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1

    .line 692
    .end local v13    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_1
    return-void

    .line 657
    .restart local v13    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    .restart local v14    # "values":Landroid/content/ContentValues;
    :sswitch_0
    iput-object v10, v13, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 658
    const-string v5, "is_ringtone"

    const-string v6, "1"

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 662
    :sswitch_1
    iput-object v10, v13, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 663
    const-string v5, "is_notification"

    const-string v6, "1"

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 667
    :sswitch_2
    iput-object v10, v13, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 668
    const-string v5, "is_ringtone"

    const-string v6, "1"

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 672
    :sswitch_3
    const-string v5, "is_ringtone"

    const-string v6, "1"

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iput-object v10, v13, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    goto :goto_0

    .line 684
    :catch_0
    move-exception v11

    .line 685
    .local v11, "ex":Ljava/lang/UnsupportedOperationException;
    const-string v5, "AudioProfileService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "couldn\'t set ringtone flag for id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 686
    .end local v11    # "ex":Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v12

    .line 687
    .local v12, "ex1":Landroid/database/sqlite/SQLiteFullException;
    const-string v5, "AudioProfileService"

    const-string v6, "SQLite is full or disk is full. So update ringtone uri error."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 655
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public addProfile()Ljava/lang/String;
    .locals 11

    .prologue
    .line 1177
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileCount()I

    move-result v5

    const/16 v6, 0xa

    if-lt v5, v6, :cond_0

    .line 1178
    const-string v5, "AudioProfileService"

    const-string v6, "addProfile: Number of custom audio profile has reached upper limit!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const/4 v2, 0x0

    .line 1211
    :goto_0
    return-object v2

    .line 1183
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->genCustomKey()Ljava/lang/String;

    move-result-object v2

    .line 1184
    .local v2, "newKey":Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDefaultState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1185
    .local v0, "defaultState":Lcom/mediatek/audioprofile/AudioProfileState;
    new-instance v9, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    invoke-direct {v9, v2}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v6, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v7, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v8, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v10, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    invoke-virtual {v9, v5, v6, v7, v8}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v5

    iget v6, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    iget v7, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    iget v8, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    invoke-virtual {v5, v6}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    invoke-virtual {v5, v6}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    invoke-virtual {v5, v6}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    invoke-virtual {v5, v6}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    invoke-virtual {v5, v6}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    .line 1199
    .local v3, "newProfileState":Lcom/mediatek/audioprofile/AudioProfileState;
    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1200
    .local v1, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1202
    .local v4, "succeed":Z
    if-eqz v4, :cond_1

    .line 1203
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v6

    .line 1204
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1205
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1207
    const-string v5, "AudioProfileService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addProfile: key = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1206
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1209
    :cond_1
    const-string v5, "AudioProfileService"

    const-string v6, "addProfile: Failed!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public deleteProfile(Ljava/lang/String;)Z
    .locals 11
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1221
    if-nez p1, :cond_0

    .line 1222
    const-string v6, "AudioProfileService"

    const-string v8, "deleteProfile: Null key!"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 1277
    :goto_0
    return v6

    .line 1227
    :cond_0
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    if-eqz v6, :cond_1

    .line 1228
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDeleteProfileTmp:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1230
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDeleteProfileName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDeleteCount:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1231
    iget v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDeleteCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDeleteCount:I

    .line 1232
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDeleteCountName:Ljava/lang/String;

    iget v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDeleteCount:I

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1234
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v7

    .line 1235
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1236
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    monitor-exit v7

    move v6, v8

    .line 1240
    goto :goto_0

    .line 1238
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1244
    :cond_1
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getAllKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1245
    .local v2, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1246
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v6, "name"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    const-string v6, " in ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 1249
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    add-int/lit8 v6, v4, -0x1

    if-ge v1, v6, :cond_2

    .line 1250
    const-string v6, "?,"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1252
    :cond_2
    const-string v6, "?)"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1254
    .local v5, "where":Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    new-array v6, v4, [Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v9, v10, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1255
    .local v0, "deleted":I
    const-string v6, "AudioProfileService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleteProfile: where = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", deleted = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    if-lez v0, :cond_7

    .line 1257
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v7

    .line 1258
    :try_start_1
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1259
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1261
    :cond_3
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1262
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    :cond_4
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 1265
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    :cond_5
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1268
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1269
    const-string v6, "AudioProfileService"

    const-string v7, "deleteProfile: Custom active deleted and set to default."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    invoke-direct {p0, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->setLastCustomActiveDeleted(Z)Z

    .line 1271
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->setLastActiveKey(Ljava/lang/String;)Z

    .line 1273
    :cond_6
    const-string v6, "AudioProfileService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleteProfile: mKeys = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", mCustomProfileName = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 1274
    goto/16 :goto_0

    .line 1267
    :catchall_1
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 1276
    :cond_7
    const-string v6, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleteProfile: Failed to delete "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 1277
    goto/16 :goto_0
.end method

.method public getActiveProfileKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1085
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v1

    .line 1086
    :try_start_0
    const-string v0, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveProfile: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 1088
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllProfileKeys()Ljava/util/List;
    .locals 5
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
    .line 1382
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 1383
    :try_start_0
    const-string v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllProfileKeys: keys = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    const-string v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllProfileKeys: UserManager.supportsMultipleUsers()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    const-string v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllProfileKeys: UserHandle.USER_OWNER = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  UserHandle.USER_OWNER = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    if-nez v1, :cond_0

    .line 1389
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->deleteCacheProfiles()V

    .line 1392
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1393
    .local v0, "allKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1394
    const-string v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllProfileKeys: keys = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    monitor-exit v2

    return-object v0

    .line 1396
    .end local v0    # "allKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBesSurroundMode()I
    .locals 1

    .prologue
    .line 3716
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mBesSurroundMode:I

    return v0
.end method

.method public getBesSurroundState()Z
    .locals 1

    .prologue
    .line 3685
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsBesSurroundEnable:Z

    return v0
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
    .line 1451
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileCount()I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    .line 1452
    const/4 v0, 0x0

    .line 1459
    :goto_0
    return-object v0

    .line 1455
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1456
    .local v0, "customizedProfileKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1457
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1458
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCustomizedProfileKeys: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDefaultRingtone(I)Landroid/net/Uri;
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 2924
    const/4 v0, 0x0

    .line 2925
    .local v0, "uri":Landroid/net/Uri;
    sparse-switch p1, :sswitch_data_0

    .line 2943
    const-string v1, "AudioProfileService"

    const-string v2, "getRingtoneUri with unsupport type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    const/4 v1, 0x0

    .line 2947
    :goto_0
    return-object v1

    .line 2927
    :sswitch_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v2, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "uri":Landroid/net/Uri;
    check-cast v0, Landroid/net/Uri;

    .line 2946
    .restart local v0    # "uri":Landroid/net/Uri;
    :goto_1
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultRingtone: type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", default uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 2947
    goto :goto_0

    .line 2931
    :sswitch_1
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v2, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "uri":Landroid/net/Uri;
    check-cast v0, Landroid/net/Uri;

    .line 2932
    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 2935
    :sswitch_2
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v2, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "uri":Landroid/net/Uri;
    check-cast v0, Landroid/net/Uri;

    .line 2936
    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 2939
    :sswitch_3
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v2, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "uri":Landroid/net/Uri;
    check-cast v0, Landroid/net/Uri;

    .line 2940
    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 2925
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public getLastActiveProfileKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1097
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v1

    .line 1098
    :try_start_0
    const-string v0, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastActiveProfileKey: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 1100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 1438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1439
    .local v0, "predefinedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1440
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPredefinedProfileKeys: keys = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    return-object v0
.end method

.method public getProfileCount()I
    .locals 5

    .prologue
    .line 1369
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 1370
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1371
    .local v0, "count":I
    const-string v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProfileCount: count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    monitor-exit v2

    return v0

    .line 1373
    .end local v0    # "count":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProfileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 2001
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2002
    .local v0, "profileName":Ljava/lang/String;
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProfileName: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", profileName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    return-object v0
.end method

.method public getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;
    .locals 2
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1958
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    return-object v0
.end method

.method public getProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "simId"    # J

    .prologue
    .line 1926
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 1927
    :try_start_0
    iget v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v4, v1

    cmp-long v1, p2, v4

    if-eqz v1, :cond_0

    .line 1928
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->readNewProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    monitor-exit v2

    .line 1938
    :goto_0
    return-object v0

    .line 1931
    :cond_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 1932
    .local v0, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 1934
    const-string v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProfileState of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is null, so create new one instead!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->readNewProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;

    .line 1936
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 1938
    .restart local v0    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 1939
    .end local v0    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProfileStateString(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
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
    .line 1970
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 1971
    .local v0, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->values()[Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    move-result-object v3

    array-length v1, v3

    .line 1972
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1973
    .local v2, "state":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1974
    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1975
    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1976
    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1978
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1979
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1980
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1982
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->vibration_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget-boolean v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1983
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->dtmftone_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget-boolean v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1984
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->soundeffect_enbled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget-boolean v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1985
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->lockscreensound_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget-boolean v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1986
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->hapticfeedback_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    iget-boolean v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1988
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProfileStateString for profileKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    return-object v2
.end method

.method public getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 1668
    if-nez p1, :cond_0

    .line 1669
    const-string v2, "AudioProfileService"

    const-string v3, "getRingtoneUri with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1704
    :goto_0
    return-object v0

    .line 1673
    :cond_0
    const/4 v0, 0x0

    .line 1674
    .local v0, "uri":Landroid/net/Uri;
    sparse-switch p2, :sswitch_data_0

    .line 1692
    const-string v2, "AudioProfileService"

    const-string v3, "getRingtoneUri with unsupport type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1693
    goto :goto_0

    .line 1676
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 1695
    :goto_1
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1698
    const/4 v0, 0x0

    .line 1703
    :cond_1
    :goto_2
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRingtoneUri: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1680
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 1681
    goto :goto_1

    .line 1684
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 1685
    goto :goto_1

    .line 1688
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .line 1689
    goto :goto_1

    .line 1699
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->isRingtoneExist(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1701
    :cond_3
    invoke-virtual {p0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    .line 1674
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public getRingtoneUriWithSIM(Ljava/lang/String;IJ)Landroid/net/Uri;
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "simId"    # J

    .prologue
    const/4 v1, 0x0

    .line 1708
    if-nez p1, :cond_0

    .line 1709
    const-string v2, "AudioProfileService"

    const-string v3, "getRingtoneUri with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1744
    :goto_0
    return-object v0

    .line 1712
    :cond_0
    iput-wide p3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSimId:J

    .line 1713
    const/4 v0, 0x0

    .line 1714
    .local v0, "uri":Landroid/net/Uri;
    sparse-switch p2, :sswitch_data_0

    .line 1732
    const-string v2, "AudioProfileService"

    const-string v3, "getRingtoneUri with unsupport type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1733
    goto :goto_0

    .line 1716
    :sswitch_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 1735
    :goto_1
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1738
    const/4 v0, 0x0

    .line 1743
    :cond_1
    :goto_2
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRingtoneUriWithSIM: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1720
    :sswitch_1
    invoke-virtual {p0, p1, p3, p4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 1721
    goto :goto_1

    .line 1724
    :sswitch_2
    invoke-virtual {p0, p1, p3, p4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 1725
    goto :goto_1

    .line 1728
    :sswitch_3
    invoke-virtual {p0, p1, p3, p4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .line 1729
    goto :goto_1

    .line 1739
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->isRingtoneExist(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1741
    :cond_3
    invoke-virtual {p0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    .line 1714
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public getStreamMaxVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 1759
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public getStreamVolume(Ljava/lang/String;I)I
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "streamType"    # I

    .prologue
    const/4 v0, 0x0

    .line 1797
    if-nez p1, :cond_0

    .line 1798
    const-string v2, "AudioProfileService"

    const-string v3, "getStreamVolume with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    :goto_0
    return v0

    .line 1802
    :cond_0
    const/4 v1, 0x0

    .line 1803
    .local v1, "volume":I
    packed-switch p2, :pswitch_data_0

    .line 1817
    :pswitch_0
    const-string v2, "AudioProfileService"

    const-string v3, "getStreamVolume with unsupport type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1805
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 1820
    :goto_1
    invoke-direct {p0, p2, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamValidVolume(II)I

    move-result v0

    .line 1821
    .local v0, "validVolume":I
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStreamVolume: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1809
    .end local v0    # "validVolume":I
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 1810
    goto :goto_1

    .line 1813
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 1814
    goto :goto_1

    .line 1803
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public isActiveProfile(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 2896
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v2

    .line 2897
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 2898
    .local v0, "actived":Z
    :goto_0
    const-string v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActiveProfile: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", actived = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    monitor-exit v2

    return v0

    .line 2897
    .end local v0    # "actived":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2900
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDtmfToneEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1853
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1854
    .local v0, "audioProfileState":Lcom/mediatek/audioprofile/AudioProfileState;
    const/4 v1, 0x0

    .line 1855
    .local v1, "enabled":Z
    if-eqz v0, :cond_0

    .line 1856
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 1858
    :cond_0
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDtmfToneEnabled: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    return v1
.end method

.method public isLockScreenEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1889
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1890
    .local v0, "audioProfileState":Lcom/mediatek/audioprofile/AudioProfileState;
    const/4 v1, 0x0

    .line 1891
    .local v1, "enabled":Z
    if-eqz v0, :cond_0

    .line 1892
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    .line 1894
    :cond_0
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLockScreenEnabled: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    return v1
.end method

.method public isNameExist(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1356
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    .line 1357
    .local v0, "isExisted":Z
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNameExist: name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isExisted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCustomProfileName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    return v0
.end method

.method public isRingtoneExist(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2911
    const/4 v0, 0x1

    return v0
.end method

.method public isSoundEffectEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1871
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1872
    .local v0, "audioProfileState":Lcom/mediatek/audioprofile/AudioProfileState;
    const/4 v1, 0x0

    .line 1873
    .local v1, "enabled":Z
    if-eqz v0, :cond_0

    .line 1874
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    .line 1876
    :cond_0
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSoundEffectEnabled: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    return v1
.end method

.method public isVibrateOnTouchEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1907
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1908
    .local v0, "audioProfileState":Lcom/mediatek/audioprofile/AudioProfileState;
    const/4 v1, 0x0

    .line 1909
    .local v1, "enabled":Z
    if-eqz v0, :cond_0

    .line 1910
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 1912
    :cond_0
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVibrateOnTouchEnabled: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    return v1
.end method

.method public isVibrationEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1835
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1836
    .local v0, "audioProfileState":Lcom/mediatek/audioprofile/AudioProfileState;
    const/4 v1, 0x0

    .line 1837
    .local v1, "enabled":Z
    if-eqz v0, :cond_0

    .line 1838
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    .line 1840
    :cond_0
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVibrationEnabled: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    return v1
.end method

.method public listenAudioProfie(Lcom/mediatek/common/audioprofile/IAudioProfileListener;I)V
    .locals 10
    .param p1, "callback"    # Lcom/mediatek/common/audioprofile/IAudioProfileListener;
    .param p2, "event"    # I

    .prologue
    .line 3359
    if-nez p2, :cond_0

    .line 3360
    invoke-interface {p1}, Lcom/mediatek/common/audioprofile/IAudioProfileListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->remove(Landroid/os/IBinder;)V

    .line 3361
    const-string v6, "AudioProfileService"

    const-string v7, "listenAudioProfie with LISTEN_NONE, so remove this listener\'s callback!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3407
    :goto_0
    return-void

    .line 3365
    :cond_0
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v7

    .line 3368
    const/4 v3, 0x0

    .line 3370
    .local v3, "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :try_start_0
    invoke-interface {p1}, Lcom/mediatek/common/audioprofile/IAudioProfileListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3371
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 3372
    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v4, v3

    .end local v3    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .local v4, "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :goto_1
    if-ge v2, v5, :cond_3

    .line 3373
    :try_start_1
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3374
    .end local v4    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .restart local v3    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :try_start_2
    iget-object v6, v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    if-ne v0, v6, :cond_2

    .line 3383
    :goto_2
    iput p2, v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mEvent:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3385
    const/4 v6, 0x1

    if-ne p2, v6, :cond_1

    .line 3387
    :try_start_3
    iget-object v6, v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mCallback:Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-interface {v6, v8}, Lcom/mediatek/common/audioprofile/IAudioProfileListener;->onProfileChanged(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3403
    :cond_1
    :goto_3
    :try_start_4
    const-string v6, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "listenAudioProfie with event = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " sucessed, record.mBinder = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,clients = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3405
    monitor-exit v7

    goto :goto_0

    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "i":I
    .end local v5    # "size":I
    :catchall_0
    move-exception v6

    :goto_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 3372
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v2    # "i":I
    .restart local v5    # "size":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .restart local v4    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    goto :goto_1

    .line 3378
    :cond_3
    :try_start_5
    new-instance v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/mediatek/audioprofile/AudioProfileService$Record;-><init>(Lcom/mediatek/audioprofile/AudioProfileService$1;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3379
    .end local v4    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .restart local v3    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :try_start_6
    iput-object v0, v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    .line 3380
    iput-object p1, v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mCallback:Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    .line 3381
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3388
    :catch_0
    move-exception v1

    .line 3389
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v6, v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->remove(Landroid/os/IBinder;)V

    .line 3390
    const-string v6, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dead object in listenAudioProfie, remove listener\'s callback!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 3405
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .restart local v4    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .restart local v3    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    goto :goto_4
.end method

.method public notifyRingerVolumeChanged(IILjava/lang/String;)V
    .locals 7
    .param p1, "oldVolume"    # I
    .param p2, "newVolume"    # I
    .param p3, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1141
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1142
    const-string v3, "AudioProfileService"

    const-string v4, "notifyRingerVolumeChanged falled, because active profile key is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :goto_0
    return-void

    .line 1146
    :cond_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1147
    const-string v3, "AudioProfileService"

    const-string v4, "notifyRingerVolumeChanged falled, because there are no listener!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1151
    :cond_1
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyRingerVolumeChanged: oldVolume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newVolume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", profile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", client = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1154
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1155
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1156
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;

    .line 1157
    .local v2, "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    iget v3, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mEvent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x4

    if-ne v3, v5, :cond_2

    .line 1159
    :try_start_1
    iget-object v3, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mCallback:Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/common/audioprofile/IAudioProfileListener;->onRingerVolumeChanged(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1160
    :catch_0
    move-exception v0

    .line 1161
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1162
    const-string v3, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dead object in notifyAudioProfileChanged, remove listener\'s callback: record.mBinder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", clients = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1168
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    .end local v2    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2516
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v4, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 2517
    return-void
.end method

.method public reset()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 1285
    const-string v7, "AudioProfileService"

    const-string v8, "reset start!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    iput-boolean v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mResetFlag:Z

    .line 1287
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v8, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v8}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1288
    .local v1, "generalKey":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActiveProfile(Ljava/lang/String;)Z

    move-result v3

    .line 1289
    .local v3, "isGeneralActive":Z
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v8

    .line 1294
    :try_start_0
    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;)V

    .line 1295
    if-eqz v3, :cond_0

    .line 1296
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->persistValues(Z)V

    .line 1306
    :goto_0
    const-string v7, "AudioProfileService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reset: profileKey = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1312
    .local v0, "allKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1313
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1314
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1315
    .local v4, "profileKey":Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v6

    .line 1316
    .local v6, "scenaria":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7, v6}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1317
    invoke-virtual {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->deleteProfile(Ljava/lang/String;)Z

    .line 1321
    :goto_2
    const-string v7, "AudioProfileService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reset: profileKey = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1325
    .end local v0    # "allKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "profileKey":Ljava/lang/String;
    .end local v6    # "scenaria":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1298
    :cond_0
    :try_start_1
    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->setActiveKey(Ljava/lang/String;)Z

    .line 1299
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v5

    .line 1300
    .local v5, "ringerMode":I
    if-eq v5, v10, :cond_1

    .line 1301
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 1303
    :cond_1
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->persistValues(Z)V

    .line 1304
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->notifyAudioProfileChanged()V

    goto/16 :goto_0

    .line 1319
    .end local v5    # "ringerMode":I
    .restart local v0    # "allKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "profileKey":Ljava/lang/String;
    .restart local v6    # "scenaria":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_2
    invoke-direct {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;)V

    goto :goto_2

    .line 1324
    .end local v4    # "profileKey":Ljava/lang/String;
    .end local v6    # "scenaria":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_3
    const-string v7, "AudioProfileService"

    const-string v9, "reset end!"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1326
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mResetFlag:Z

    .line 1327
    return-void
.end method

.method public setActiveProfile(Ljava/lang/String;)V
    .locals 1
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1039
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;Z)V

    .line 1040
    return-void
.end method

.method public setActiveProfile(Ljava/lang/String;Z)V
    .locals 17
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "shouldSetRingerMode"    # Z

    .prologue
    .line 894
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v6

    .line 895
    .local v6, "oldProfileKey":Ljava/lang/String;
    move-object/from16 v4, p1

    .line 896
    .local v4, "newProfileKey":Ljava/lang/String;
    const-string v13, "AudioProfileService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setActiveProfile>>>: oldProfileKey = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newProfileKey = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", shouldSetRingerMode = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 901
    const-string v13, "AudioProfileService"

    const-string v14, "setActiveProfile with same profile key with active profile, do nothing!"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :goto_0
    return-void

    .line 905
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v14

    .line 906
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->setActiveKey(Ljava/lang/String;)Z

    .line 907
    const/4 v8, 0x1

    .line 909
    .local v8, "overrideSystem":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    move/from16 v0, p2

    invoke-interface {v13, v0, v6, v4, v15}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->getActiveProfileChangeInfo(ZLjava/lang/String;Ljava/lang/String;Z)Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;

    move-result-object v2

    .line 913
    .local v2, "apcInfo":Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;
    if-nez v2, :cond_6

    .line 914
    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v5

    .line 915
    .local v5, "newScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v7

    .line 917
    .local v7, "oldScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v13}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v9

    .line 918
    .local v9, "ringerMode":I
    sget-object v13, Lcom/mediatek/audioprofile/AudioProfileService$9;->$SwitchMap$com$mediatek$audioprofile$AudioProfileManager$Scenario:[I

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v15

    aget v13, v13, v15

    packed-switch v13, :pswitch_data_0

    .line 941
    const/4 v13, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/mediatek/audioprofile/AudioProfileService;->setRingerModeMatchProfile(ZI)V

    .line 945
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v13

    iget v13, v13, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    if-nez v13, :cond_1

    .line 946
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v15, 0x2

    invoke-virtual {v13, v15}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v12

    .line 947
    .local v12, "volume":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12}, Lcom/mediatek/audioprofile/AudioProfileService;->syncRingerVolumeToProfile(Ljava/lang/String;I)V

    .line 948
    const-string v13, "AudioProfileService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setActiveProfile: profile volume is 0, change to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    .end local v12    # "volume":I
    :cond_1
    sget-object v13, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v13, v7}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    sget-object v13, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v13, v7}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 957
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldOverrideSystem:Z

    if-eqz v13, :cond_5

    :cond_3
    const/4 v8, 0x1

    .line 961
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->syncVolumeToSystem()V

    .line 962
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->syncRingtoneToSystem()V

    .line 964
    :cond_4
    sget-object v13, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v13, v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldOverrideSystem:Z

    .line 994
    .end local v5    # "newScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v7    # "oldScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v9    # "ringerMode":I
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->persistValues(Z)V

    .line 996
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->notifyAudioProfileChanged()V

    .line 998
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v13

    iget v11, v13, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 999
    .local v11, "ringerVolume":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v11, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->notifyRingerVolumeChanged(IILjava/lang/String;)V

    .line 1000
    const-string v13, "AudioProfileService"

    const-string v15, "setActiveProfile<<<"

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    monitor-exit v14

    goto/16 :goto_0

    .end local v2    # "apcInfo":Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;
    .end local v8    # "overrideSystem":Z
    .end local v11    # "ringerVolume":I
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 921
    .restart local v2    # "apcInfo":Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;
    .restart local v5    # "newScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .restart local v7    # "oldScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .restart local v8    # "overrideSystem":Z
    .restart local v9    # "ringerMode":I
    :pswitch_0
    const/4 v13, 0x0

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/mediatek/audioprofile/AudioProfileService;->setRingerModeMatchProfile(ZI)V

    .line 924
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->setOldProfileSettings(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;Ljava/lang/String;)V

    .line 926
    const/4 v8, 0x0

    .line 927
    goto :goto_2

    .line 931
    :pswitch_1
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/mediatek/audioprofile/AudioProfileService;->setRingerModeMatchProfile(ZI)V

    .line 934
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->setOldProfileSettings(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;Ljava/lang/String;)V

    .line 936
    const/4 v8, 0x0

    .line 937
    goto :goto_2

    .line 957
    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    .line 968
    .end local v5    # "newScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v7    # "oldScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v9    # "ringerMode":I
    :cond_6
    invoke-interface {v2}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;->getRingerModeToUpdate()I

    move-result v10

    .line 969
    .local v10, "ringerModeToUpdate":I
    const/16 v13, -0x3e7

    if-eq v10, v13, :cond_7

    .line 970
    move-object/from16 v0, p0

    iput v10, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 971
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v13, v10}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 972
    const-string v13, "AudioProfileService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CMCC: setActiveProfile: RingerMode now set "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_7
    invoke-interface {v2}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;->shouldSetLastActiveKey()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 977
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->setLastActiveKey(Ljava/lang/String;)Z

    move-result v3

    .line 978
    .local v3, "lastActiveChanged":Z
    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    if-eqz v13, :cond_8

    .line 979
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/audioprofile/AudioProfileService;->setLastCustomActiveDeleted(Z)Z

    .line 983
    .end local v3    # "lastActiveChanged":Z
    :cond_8
    invoke-interface {v2}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;->shouldSyncToSystem()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 987
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->syncVolumeToSystem()V

    .line 988
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->syncRingtoneToSystem()V

    .line 990
    :cond_9
    invoke-interface {v2}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;->shouldOverrideSystem()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    goto/16 :goto_2

    .line 918
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setBesSurroundMode(I)I
    .locals 2
    .param p1, "besSurroundMode"    # I

    .prologue
    .line 3726
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsBesSurroundEnable:Z

    if-nez v0, :cond_0

    .line 3727
    const/4 v0, -0x1

    .line 3739
    :goto_0
    return v0

    .line 3730
    :cond_0
    if-nez p1, :cond_2

    .line 3731
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "BesSurround_Mode=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 3736
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "mtk_audioprofile_bessuround_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3737
    iput p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mBesSurroundMode:I

    .line 3739
    const/4 v0, 0x0

    goto :goto_0

    .line 3732
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3733
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "BesSurround_Mode=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setBesSurroundState(Z)I
    .locals 3
    .param p1, "isEnableBes"    # Z

    .prologue
    .line 3695
    const/4 v0, 0x0

    .line 3696
    .local v0, "stateCode":I
    if-eqz p1, :cond_0

    .line 3697
    const/4 v0, 0x1

    .line 3698
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "BesSurround_OnOff=1"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 3703
    :goto_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "mtk_audioprofile_bessuround"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3704
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsBesSurroundEnable:Z

    .line 3706
    const/4 v1, 0x0

    return v1

    .line 3700
    :cond_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "BesSurround_OnOff=0"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDtmfToneEnabled(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 2367
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2368
    .local v0, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 2369
    const-string v1, "AudioProfileService"

    const-string v2, "setDtmfToneEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    :cond_0
    :goto_0
    return-void

    .line 2373
    :cond_1
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    if-eq v1, p2, :cond_0

    .line 2375
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistDtmfToneToDatabase(Ljava/lang/String;Z)V

    .line 2376
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 2377
    :try_start_0
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 2378
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2380
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActiveProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2381
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistDtmfToneToSystem()V

    .line 2383
    :cond_2
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDtmfToneEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2378
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setLockScreenEnabled(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 2427
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2428
    .local v0, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 2429
    const-string v1, "AudioProfileService"

    const-string v2, "setLockScreenEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    :cond_0
    :goto_0
    return-void

    .line 2433
    :cond_1
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    if-eq v1, p2, :cond_0

    .line 2435
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistLockScreenToDatabase(Ljava/lang/String;Z)V

    .line 2436
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 2437
    :try_start_0
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    .line 2438
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2440
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActiveProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2441
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistLockScreenToSystem()V

    .line 2443
    :cond_2
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLockScreenEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2438
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setProfileName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 2487
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2488
    .local v0, "profileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 2490
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistProfileNameToDatabase(Ljava/lang/String;Ljava/lang/String;)V

    .line 2491
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2492
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProfileName: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    :goto_0
    return-void

    .line 2494
    :cond_2
    const-string v1, "AudioProfileService"

    const-string v2, "setProfileName with Null name!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRingtoneUri(Ljava/lang/String;IJLandroid/net/Uri;)V
    .locals 9
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "simId"    # J
    .param p5, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 2040
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2041
    .local v0, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_0

    .line 2042
    const-string v1, "AudioProfileService"

    const-string v2, "setRingtoneUri profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    :goto_0
    return-void

    .line 2046
    :cond_0
    iput-wide p3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSimId:J

    .line 2048
    invoke-direct {p0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->isValidRingtoneType(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2049
    const-string v1, "AudioProfileService"

    const-string v2, "setRingtoneUri with undefined stream type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    :cond_1
    move-object v6, p5

    .line 2053
    .local v6, "newRingtoneUri":Landroid/net/Uri;
    invoke-direct {p0, v0, p2, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->isRingtoneUriChanged(Lcom/mediatek/audioprofile/AudioProfileState;ILandroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2054
    const-string v1, "AudioProfileService"

    const-string v2, "setRingtoneUri with ringtone uri unchanged!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    :cond_2
    const/4 v1, 0x2

    if-ne v1, p2, :cond_3

    .line 2060
    if-nez v6, :cond_3

    .line 2061
    sget-object v6, Lcom/mediatek/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    :cond_3
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    .line 2066
    invoke-direct/range {v1 .. v6}, Lcom/mediatek/audioprofile/AudioProfileService;->doRingtoneUriSetting(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 2070
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2071
    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->setShouldSyncToSystemFlag(IZ)V

    .line 2075
    :cond_4
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->shouldSyncGeneralRingtoneToOutdoor()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-wide v7, p3

    .line 2076
    invoke-direct/range {v3 .. v8}, Lcom/mediatek/audioprofile/AudioProfileService;->syncGeneralRingtoneToOutdoor(Ljava/lang/String;ILandroid/net/Uri;J)V

    .line 2079
    :cond_5
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRingtoneUri: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRingtoneUri(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 2023
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v4, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/audioprofile/AudioProfileService;->setRingtoneUri(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 2024
    return-void
.end method

.method public setShouldSyncToSystemFlag(IZ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "shouldSync"    # Z

    .prologue
    .line 2112
    sparse-switch p1, :sswitch_data_0

    .line 2132
    :goto_0
    return-void

    .line 2114
    :sswitch_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v1, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2118
    :sswitch_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v1, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2122
    :sswitch_2
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v1, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2126
    :sswitch_3
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v1, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2112
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public setSoundEffectEnabled(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 2397
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2398
    .local v0, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 2399
    const-string v1, "AudioProfileService"

    const-string v2, "setSoundEffectEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    :cond_0
    :goto_0
    return-void

    .line 2403
    :cond_1
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    if-eq v1, p2, :cond_0

    .line 2405
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistSoundEffectToDatabase(Ljava/lang/String;Z)V

    .line 2406
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 2407
    :try_start_0
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    .line 2408
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2410
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActiveProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2411
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistSoundEffectToSystem()V

    .line 2413
    :cond_2
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSoundEffectEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2408
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setStreamVolume(Ljava/lang/String;II)V
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "streamType"    # I
    .param p3, "index"    # I

    .prologue
    const/4 v4, 0x1

    .line 2226
    invoke-direct {p0, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamValidVolume(II)I

    move-result v1

    .line 2227
    .local v1, "validIndex":I
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2228
    .local v0, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_0

    .line 2229
    const-string v2, "AudioProfileService"

    const-string v3, "setStreamVolume profile state not exist!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    :goto_0
    return-void

    .line 2233
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 2286
    :pswitch_0
    const-string v2, "AudioProfileService"

    const-string v3, "setStreamVolume with undefind stream type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    :cond_1
    :goto_1
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setStreamVolume: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2235
    :pswitch_1
    iget v2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    if-eq v2, v1, :cond_1

    .line 2238
    invoke-direct {p0, p1, p2, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 2239
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v3

    .line 2240
    :try_start_0
    iput v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 2241
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2245
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2246
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2241
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2252
    :pswitch_2
    iget v2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    if-eq v2, v1, :cond_1

    .line 2255
    invoke-direct {p0, p1, p2, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 2256
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v3

    .line 2257
    :try_start_2
    iput v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 2258
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2262
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2263
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2258
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 2269
    :pswitch_3
    iget v2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    if-eq v2, v1, :cond_1

    .line 2272
    invoke-direct {p0, p1, p2, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 2273
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v3

    .line 2274
    :try_start_4
    iput v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 2275
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2279
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2280
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2275
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .line 2233
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 3415
    iput p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    .line 3416
    return-void
.end method

.method public setVibrateOnTouchEnabled(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 2457
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2458
    .local v0, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 2459
    const-string v1, "AudioProfileService"

    const-string v2, "setVibrateOnTouchEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    :cond_0
    :goto_0
    return-void

    .line 2463
    :cond_1
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    if-eq v1, p2, :cond_0

    .line 2465
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistHapticFeedbackToDatabase(Ljava/lang/String;Z)V

    .line 2466
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 2467
    :try_start_0
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 2468
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2470
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActiveProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2471
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistHapticFeedbackToSystem()V

    .line 2473
    :cond_2
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVibrateOnTouchEnabled: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2468
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setVibrationEnabled(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 2304
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->setVibrationEnabled(Ljava/lang/String;ZZ)V

    .line 2305
    return-void
.end method

.method public setVibrationEnabled(Ljava/lang/String;ZZ)V
    .locals 8
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "shouldSetRingerMode"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2317
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2318
    .local v0, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 2319
    const-string v1, "AudioProfileService"

    const-string v4, "setVibrationEnabled profile state not exist!"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    :cond_0
    :goto_0
    return-void

    .line 2323
    :cond_1
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    if-eq v1, p2, :cond_0

    .line 2326
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2327
    .local v2, "token":J
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2328
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "vibrate_in_silent"

    if-eqz p2, :cond_4

    move v1, v4

    :goto_1
    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2330
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActiveProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    .line 2331
    if-eqz p2, :cond_5

    .line 2332
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 2333
    iput v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 2334
    const-string v1, "AudioProfileService"

    const-string v4, "setVibrationEnabled true,change RingerMode to VIBRATE"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    :cond_2
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2344
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistVibrationToDatabase(Ljava/lang/String;Z)V

    .line 2345
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v4

    .line 2346
    :try_start_0
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    .line 2347
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2349
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActiveProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2350
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistVibrationToSystem()V

    .line 2352
    :cond_3
    const-string v1, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVibrationEnabled: profileKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", shouldSetRingerMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v1, v5

    .line 2328
    goto :goto_1

    .line 2336
    :cond_5
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 2337
    iput v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 2338
    const-string v1, "AudioProfileService"

    const-string v4, "setVibrationEnabled false,change RingerMode to SILENT"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2347
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public syncRingerVolumeToProfile(Ljava/lang/String;I)V
    .locals 3
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "volume"    # I

    .prologue
    .line 3258
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    iget v0, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    if-eq v0, p2, :cond_0

    .line 3259
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3260
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3261
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 3262
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 3263
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    iput p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 3264
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    iput p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 3265
    const-string v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncRingerVolumeToProfile: profileKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3267
    :cond_0
    return-void
.end method
