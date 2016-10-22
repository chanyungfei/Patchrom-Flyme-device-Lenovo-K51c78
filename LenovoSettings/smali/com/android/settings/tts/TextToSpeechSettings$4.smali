.class Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings$4;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;)V
    .locals 0

    .prologue
    .line 777
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings$4;->this$0:Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    .line 779
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings$4;->this$0:Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTtsHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->access$100(Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 781
    return-void
.end method
