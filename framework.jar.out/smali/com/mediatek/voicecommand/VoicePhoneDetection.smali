.class public Lcom/mediatek/voicecommand/VoicePhoneDetection;
.super Ljava/lang/Object;
.source "VoicePhoneDetection.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private mCurHandler:Landroid/os/Handler;

.field private mNativeContext:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-string v1, "VoicePhoneDetection"

    sput-object v1, Lcom/mediatek/voicecommand/VoicePhoneDetection;->TAG:Ljava/lang/String;

    .line 55
    const-string/jumbo v1, "phonemotiondetector_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 57
    :try_start_0
    invoke-static {}, Lcom/mediatek/voicecommand/VoicePhoneDetection;->native_init()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    :goto_0
    return-void

    .line 59
    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v0

    .line 60
    .restart local v0    # "ex":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Handler;I)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "type"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/voicecommand/VoicePhoneDetection;->mNativeContext:I

    .line 50
    iput-object p1, p0, Lcom/mediatek/voicecommand/VoicePhoneDetection;->mCurHandler:Landroid/os/Handler;

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Lcom/mediatek/voicecommand/VoicePhoneDetection;->native_setup(Ljava/lang/Object;I)V

    .line 52
    return-void
.end method

.method private final native _release()V
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation
.end method

.method private final native native_setup(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 5
    .param p0, "voicePhoneDetection_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 117
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "voicePhoneDetection_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/voicecommand/VoicePhoneDetection;

    .line 120
    .local v0, "detection":Lcom/mediatek/voicecommand/VoicePhoneDetection;
    sget-object v2, Lcom/mediatek/voicecommand/VoicePhoneDetection;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message from native what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " arg1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " arg2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v2, v0, Lcom/mediatek/voicecommand/VoicePhoneDetection;->mCurHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, v0, Lcom/mediatek/voicecommand/VoicePhoneDetection;->mCurHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 126
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Lcom/mediatek/voicecommand/VoicePhoneDetection;->mCurHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 130
    .end local v1    # "m":Landroid/os/Message;
    :goto_0
    return-void

    .line 128
    :cond_0
    sget-object v2, Lcom/mediatek/voicecommand/VoicePhoneDetection;->TAG:Ljava/lang/String;

    const-string v3, "Message from native but handler is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native startPhoneDetect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native stopPhoneDetect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method


# virtual methods
.method public releaseSelf()V
    .locals 2

    .prologue
    .line 102
    iget v0, p0, Lcom/mediatek/voicecommand/VoicePhoneDetection;->mNativeContext:I

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/mediatek/voicecommand/VoicePhoneDetection;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "releaseSelf"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-direct {p0}, Lcom/mediatek/voicecommand/VoicePhoneDetection;->_release()V

    .line 106
    :cond_0
    return-void
.end method

.method public startPhoneDetection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 88
    iget v0, p0, Lcom/mediatek/voicecommand/VoicePhoneDetection;->mNativeContext:I

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/mediatek/voicecommand/VoicePhoneDetection;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPhoneDetectInNative"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-direct {p0}, Lcom/mediatek/voicecommand/VoicePhoneDetection;->startPhoneDetect()V

    .line 92
    :cond_0
    return-void
.end method

.method public stopPhoneDetection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 95
    iget v0, p0, Lcom/mediatek/voicecommand/VoicePhoneDetection;->mNativeContext:I

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/mediatek/voicecommand/VoicePhoneDetection;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPhoneDetectInNative"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-direct {p0}, Lcom/mediatek/voicecommand/VoicePhoneDetection;->stopPhoneDetect()V

    .line 99
    :cond_0
    return-void
.end method
