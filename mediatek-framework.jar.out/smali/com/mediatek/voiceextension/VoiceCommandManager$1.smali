.class Lcom/mediatek/voiceextension/VoiceCommandManager$1;
.super Landroid/os/Handler;
.source "VoiceCommandManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/voiceextension/VoiceCommandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/voiceextension/VoiceCommandManager;


# direct methods
.method constructor <init>(Lcom/mediatek/voiceextension/VoiceCommandManager;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager$1;->this$0:Lcom/mediatek/voiceextension/VoiceCommandManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager$1;->this$0:Lcom/mediatek/voiceextension/VoiceCommandManager;

    # getter for: Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;
    invoke-static {v0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->access$100(Lcom/mediatek/voiceextension/VoiceCommandManager;)Lcom/mediatek/voiceextension/VoiceCommandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 126
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 108
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager$1;->this$0:Lcom/mediatek/voiceextension/VoiceCommandManager;

    # getter for: Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;
    invoke-static {v0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->access$100(Lcom/mediatek/voiceextension/VoiceCommandManager;)Lcom/mediatek/voiceextension/VoiceCommandListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/mediatek/voiceextension/VoiceCommandListener;->onSetCommands(I)V

    goto :goto_0

    .line 111
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager$1;->this$0:Lcom/mediatek/voiceextension/VoiceCommandManager;

    # getter for: Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;
    invoke-static {v0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->access$100(Lcom/mediatek/voiceextension/VoiceCommandManager;)Lcom/mediatek/voiceextension/VoiceCommandListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/mediatek/voiceextension/VoiceCommandListener;->onStartRecognition(I)V

    goto :goto_0

    .line 114
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager$1;->this$0:Lcom/mediatek/voiceextension/VoiceCommandManager;

    # getter for: Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;
    invoke-static {v0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->access$100(Lcom/mediatek/voiceextension/VoiceCommandManager;)Lcom/mediatek/voiceextension/VoiceCommandListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/mediatek/voiceextension/VoiceCommandListener;->onPauseRecognition(I)V

    goto :goto_0

    .line 117
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager$1;->this$0:Lcom/mediatek/voiceextension/VoiceCommandManager;

    # getter for: Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;
    invoke-static {v0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->access$100(Lcom/mediatek/voiceextension/VoiceCommandManager;)Lcom/mediatek/voiceextension/VoiceCommandListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/mediatek/voiceextension/VoiceCommandListener;->onResumeRecognition(I)V

    goto :goto_0

    .line 120
    :pswitch_5
    iget-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager$1;->this$0:Lcom/mediatek/voiceextension/VoiceCommandManager;

    # getter for: Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;
    invoke-static {v0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->access$100(Lcom/mediatek/voiceextension/VoiceCommandManager;)Lcom/mediatek/voiceextension/VoiceCommandListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/mediatek/voiceextension/VoiceCommandListener;->onStopRecognition(I)V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
