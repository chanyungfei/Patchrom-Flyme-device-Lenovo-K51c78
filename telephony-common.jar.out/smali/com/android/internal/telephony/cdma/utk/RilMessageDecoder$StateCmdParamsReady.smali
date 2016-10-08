.class Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;
.super Lcom/android/internal/util/State;
.source "RilMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateCmdParamsReady"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;
    .param p2, "x1"    # Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$1;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;-><init>(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 156
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    # getter for: Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cdma/utk/RilMessage;
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->access$500(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;)Lcom/android/internal/telephony/cdma/utk/RilMessage;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/ResultCode;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    # getter for: Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cdma/utk/RilMessage;
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->access$500(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;)Lcom/android/internal/telephony/cdma/utk/RilMessage;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mData:Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    # getter for: Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cdma/utk/RilMessage;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->access$500(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;)Lcom/android/internal/telephony/cdma/utk/RilMessage;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->access$600(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    # getter for: Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->access$700(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;)Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateStart;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->access$800(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/util/IState;)V

    .line 166
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StateCmdParamsReady expecting CMD_PARAMS_READY=2 got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    # invokes: Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->access$900(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Landroid/os/Message;)V

    goto :goto_0
.end method
