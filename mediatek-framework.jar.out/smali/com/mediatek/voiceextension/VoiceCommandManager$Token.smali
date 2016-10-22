.class Lcom/mediatek/voiceextension/VoiceCommandManager$Token;
.super Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub;
.source "VoiceCommandManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/voiceextension/VoiceCommandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Token"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/voiceextension/VoiceCommandManager;


# direct methods
.method constructor <init>(Lcom/mediatek/voiceextension/VoiceCommandManager;)V
    .locals 0

    .prologue
    .line 864
    iput-object p1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager$Token;->this$0:Lcom/mediatek/voiceextension/VoiceCommandManager;

    invoke-direct {p0}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommandRecognized(IILjava/lang/String;)V
    .locals 3
    .param p1, "retCode"    # I
    .param p2, "commandId"    # I
    .param p3, "commandStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 872
    const-string v0, "VieCmdMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCommandRecognized result retCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " commandId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " commandStr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager$Token;->this$0:Lcom/mediatek/voiceextension/VoiceCommandManager;

    # getter for: Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;
    invoke-static {v0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->access$100(Lcom/mediatek/voiceextension/VoiceCommandManager;)Lcom/mediatek/voiceextension/VoiceCommandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager$Token;->this$0:Lcom/mediatek/voiceextension/VoiceCommandManager;

    # getter for: Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;
    invoke-static {v0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->access$100(Lcom/mediatek/voiceextension/VoiceCommandManager;)Lcom/mediatek/voiceextension/VoiceCommandListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/voiceextension/VoiceCommandListener;->onCommandRecognized(IILjava/lang/String;)V

    .line 882
    :goto_0
    return-void

    .line 880
    :cond_0
    const-string v0, "VieCmdMgr"

    const-string v1, "onCommandRecognized drop result"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onError(I)V
    .locals 3
    .param p1, "retCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 887
    const-string v0, "VieCmdMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager$Token;->this$0:Lcom/mediatek/voiceextension/VoiceCommandManager;

    # getter for: Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;
    invoke-static {v0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->access$100(Lcom/mediatek/voiceextension/VoiceCommandManager;)Lcom/mediatek/voiceextension/VoiceCommandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager$Token;->this$0:Lcom/mediatek/voiceextension/VoiceCommandManager;

    # getter for: Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;
    invoke-static {v0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->access$100(Lcom/mediatek/voiceextension/VoiceCommandManager;)Lcom/mediatek/voiceextension/VoiceCommandListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/voiceextension/VoiceCommandListener;->onError(I)V

    .line 894
    :goto_0
    return-void

    .line 892
    :cond_0
    const-string v0, "VieCmdMgr"

    const-string v1, "onError drop result "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPauseRecognition(I)V
    .locals 3
    .param p1, "retCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 899
    const-string v0, "VieCmdMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPauseRecognition result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager$Token;->this$0:Lcom/mediatek/voiceextension/VoiceCommandManager;

    # getter for: Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;
    invoke-static {v0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->access$100(Lcom/mediatek/voiceextension/VoiceCommandManager;)Lcom/mediatek/voiceextension/VoiceCommandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager$Token;->this$0:Lcom/mediatek/voiceextension/VoiceCommandManager;

    # getter for: Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;
    invoke-static {v0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->access$100(Lcom/mediatek/voiceextension/VoiceCommandManager;)Lcom/mediatek/voiceextension/VoiceCommandListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/voiceextension/VoiceCommandListener;->onPauseRecognition(I)V

    .line 906
    :goto_0
    return-void

    .line 904
    :cond_0
    const-string v0, "VieCmdMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPauseRecognition drop result retCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResumeRecognition(I)V
    .locals 3
    .param p1, "retCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 911
    const-string v0, "VieCmdMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResumeRecognition result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager$Token;->this$0:Lcom/mediatek/voiceextension/VoiceCommandManager;

    # getter for: Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;
    invoke-static {v0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->access$100(Lcom/mediatek/voiceextension/VoiceCommandManager;)Lcom/mediatek/voiceextension/VoiceCommandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager$Token;->this$0:Lcom/mediatek/voiceextension/VoiceCommandManager;

    # getter for: Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;
    invoke-static {v0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->access$100(Lcom/mediatek/voiceextension/VoiceCommandManager;)Lcom/mediatek/voiceextension/VoiceCommandListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/voiceextension/VoiceCommandListener;->onResumeRecognition(I)V

    .line 920
    :goto_0
    return-void

    .line 916
    :cond_0
    const-string v0, "VieCmdMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResumeRecognition drop result retCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSetCommands(I)V
    .locals 3
    .param p1, "retCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 925
    const-string v0, "VieCmdMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetCommands result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager$Token;->this$0:Lcom/mediatek/voiceextension/VoiceCommandManager;

    # getter for: Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;
    invoke-static {v0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->access$100(Lcom/mediatek/voiceextension/VoiceCommandManager;)Lcom/mediatek/voiceextension/VoiceCommandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager$Token;->this$0:Lcom/mediatek/voiceextension/VoiceCommandManager;

    # getter for: Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;
    invoke-static {v0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->access$100(Lcom/mediatek/voiceextension/VoiceCommandManager;)Lcom/mediatek/voiceextension/VoiceCommandListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/voiceextension/VoiceCommandListener;->onSetCommands(I)V

    .line 932
    :goto_0
    return-void

    .line 930
    :cond_0
    const-string v0, "VieCmdMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetCommands drop result retCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStartRecognition(I)V
    .locals 3
    .param p1, "retCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 937
    const-string v0, "VieCmdMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartRecognition result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager$Token;->this$0:Lcom/mediatek/voiceextension/VoiceCommandManager;

    # getter for: Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;
    invoke-static {v0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->access$100(Lcom/mediatek/voiceextension/VoiceCommandManager;)Lcom/mediatek/voiceextension/VoiceCommandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager$Token;->this$0:Lcom/mediatek/voiceextension/VoiceCommandManager;

    # getter for: Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;
    invoke-static {v0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->access$100(Lcom/mediatek/voiceextension/VoiceCommandManager;)Lcom/mediatek/voiceextension/VoiceCommandListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/voiceextension/VoiceCommandListener;->onStartRecognition(I)V

    .line 944
    :goto_0
    return-void

    .line 942
    :cond_0
    const-string v0, "VieCmdMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartRecognition drop result retCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStopRecognition(I)V
    .locals 3
    .param p1, "retCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 949
    const-string v0, "VieCmdMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopRecognition result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager$Token;->this$0:Lcom/mediatek/voiceextension/VoiceCommandManager;

    # getter for: Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;
    invoke-static {v0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->access$100(Lcom/mediatek/voiceextension/VoiceCommandManager;)Lcom/mediatek/voiceextension/VoiceCommandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager$Token;->this$0:Lcom/mediatek/voiceextension/VoiceCommandManager;

    # getter for: Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;
    invoke-static {v0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->access$100(Lcom/mediatek/voiceextension/VoiceCommandManager;)Lcom/mediatek/voiceextension/VoiceCommandListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/voiceextension/VoiceCommandListener;->onStopRecognition(I)V

    .line 956
    :goto_0
    return-void

    .line 954
    :cond_0
    const-string v0, "VieCmdMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopRecognition drop result retCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
