.class public Lcom/mediatek/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;
.super Ljava/lang/Object;
.source "DefaultAudioProfileExtension.java"

# interfaces
.implements Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/DefaultAudioProfileExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActiveProfileChangeInfo"
.end annotation


# instance fields
.field public mRingerModeToUpdate:I

.field public mShouldOverrideSystem:Z

.field public mShouldSetLastActiveKey:Z

.field public mShouldSyncToSystem:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mShouldOverrideSystem:Z

    .line 51
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/mediatek/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mRingerModeToUpdate:I

    .line 52
    iput-boolean v1, p0, Lcom/mediatek/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mShouldSetLastActiveKey:Z

    .line 53
    iput-boolean v1, p0, Lcom/mediatek/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mShouldSyncToSystem:Z

    return-void
.end method


# virtual methods
.method public getRingerModeToUpdate()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/mediatek/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mRingerModeToUpdate:I

    return v0
.end method

.method public setRingerModeToUpdate(I)V
    .locals 0
    .param p1, "ringerModeToUpdate"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/mediatek/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mRingerModeToUpdate:I

    .line 57
    return-void
.end method

.method public setShouldOverrideSystem(Z)V
    .locals 0
    .param p1, "shouldOverrideSystem"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mShouldOverrideSystem:Z

    .line 73
    return-void
.end method

.method public setShouldSetLastActiveKey(Z)V
    .locals 0
    .param p1, "shouldSetLastActiveKey"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mShouldSetLastActiveKey:Z

    .line 65
    return-void
.end method

.method public setShouldSyncToSystem(Z)V
    .locals 0
    .param p1, "shouldSyncToSystem"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mShouldSyncToSystem:Z

    .line 81
    return-void
.end method

.method public shouldOverrideSystem()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mShouldOverrideSystem:Z

    return v0
.end method

.method public shouldSetLastActiveKey()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mShouldSetLastActiveKey:Z

    return v0
.end method

.method public shouldSyncToSystem()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mShouldSyncToSystem:Z

    return v0
.end method
