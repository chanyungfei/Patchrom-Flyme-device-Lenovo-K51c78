.class public Lcom/mediatek/audioprofile/DefaultAudioProfileExtension;
.super Ljava/lang/Object;
.source "DefaultAudioProfileExtension.java"

# interfaces
.implements Lcom/mediatek/common/audioprofile/IAudioProfileExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;
    }
.end annotation


# instance fields
.field protected final IS_SUPPORT_OUTDOOR_EDITABLE:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/DefaultAudioProfileExtension;->IS_SUPPORT_OUTDOOR_EDITABLE:Z

    .line 49
    return-void
.end method


# virtual methods
.method public getActiveProfileChangeInfo(ZLjava/lang/String;Ljava/lang/String;Z)Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;
    .locals 1
    .param p1, "shouldSetRingerMode"    # Z
    .param p2, "oldProfileKey"    # Ljava/lang/String;
    .param p3, "newProfileKey"    # Ljava/lang/String;
    .param p4, "customActiveProfileDeleted"    # Z

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lcom/mediatek/common/audioprofile/IAudioProfileService;Landroid/content/Context;)V
    .locals 0
    .param p1, "service"    # Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    return-void
.end method

.method public onActiveProfileChange(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "shouldSetRingerMode"    # Z
    .param p2, "oldProfileKey"    # Ljava/lang/String;
    .param p3, "newProfileKey"    # Ljava/lang/String;

    .prologue
    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public onNotificationChange(Z)Z
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public onRingerModeChanged(I)Z
    .locals 1
    .param p1, "newRingerMode"    # I

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public onRingerVolumeChanged(IILjava/lang/String;)Z
    .locals 1
    .param p1, "oldVolume"    # I
    .param p2, "newVolume"    # I
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public onRingtoneChange(Z)Z
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public persistStreamVolumeToSystem(I)Z
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public shouldCheckDefaultProfiles()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public shouldSyncGeneralRingtoneToOutdoor()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method
