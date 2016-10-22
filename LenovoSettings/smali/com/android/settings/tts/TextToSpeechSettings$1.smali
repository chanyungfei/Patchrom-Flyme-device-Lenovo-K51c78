.class Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings$1;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


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
    .line 150
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;

    invoke-virtual {v0, p1}, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->onInitEngine(I)V

    .line 154
    const-string v0, "tts"

    const-string v1, "on init"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method
