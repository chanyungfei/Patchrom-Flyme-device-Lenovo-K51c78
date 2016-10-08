.class public abstract Lcom/mediatek/voiceextension/VoiceCommandListener;
.super Ljava/lang/Object;
.source "VoiceCommandListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCommandRecognized(IILjava/lang/String;)V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onPauseRecognition(I)V
.end method

.method public abstract onResumeRecognition(I)V
.end method

.method public abstract onSetCommands(I)V
.end method

.method public abstract onStartRecognition(I)V
.end method

.method public abstract onStopRecognition(I)V
.end method
