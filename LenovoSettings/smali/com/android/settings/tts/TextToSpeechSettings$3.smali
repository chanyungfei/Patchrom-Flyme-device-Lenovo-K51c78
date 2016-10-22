.class Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings$3;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "TextToSpeechSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->setTtsUtteranceProgressListener()V
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
    .line 219
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 2
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 228
    const-string v0, "tts"

    const-string v1, "onDone"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->mTtsAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->access$000(Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 230
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 234
    const-string v0, "tts"

    const-string v1, "Error while trying to synthesize sample text"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 2
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 222
    const-string v0, "tts"

    const-string v1, "onstart"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method
