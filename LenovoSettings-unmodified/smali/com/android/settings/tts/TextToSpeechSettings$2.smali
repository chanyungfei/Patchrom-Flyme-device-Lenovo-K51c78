.class Lcom/android/settings/tts/TextToSpeechSettings$2;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tts/TextToSpeechSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings$2;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings$2;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->onUpdateEngine(I)V

    .line 168
    const-string v0, "tts"

    const-string v1, "on init2"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method
