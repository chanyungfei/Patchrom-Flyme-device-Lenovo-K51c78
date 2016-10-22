.class Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;
.super Landroid/os/Handler;
.source "MtkHdmiManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/hdmi/MtkHdmiManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HdmiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;


# direct methods
.method public constructor <init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    .line 160
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 161
    return-void
.end method

.method private deinitHdmi()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 189
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->unregisterCallListener()V
    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$500(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V

    .line 190
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->enableHdmiImpl(Z)Z
    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$600(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)Z

    .line 191
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-virtual {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->isSignalOutputting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->handleCablePlugged(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$700(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)V

    .line 194
    :cond_0
    return-void
.end method

.method private initHdmi()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->loadHdmiSettings()V
    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$800(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V

    .line 198
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # getter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z
    invoke-static {v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$900(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z

    move-result v1

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->enableHdmiImpl(Z)Z
    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$600(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)Z

    .line 199
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # getter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCablePlugged:Z
    invoke-static {v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$1000(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z

    move-result v1

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->handleCablePlugged(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$700(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)V

    .line 200
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->registerCallListener()V
    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$1100(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V

    .line 201
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 165
    const-string v1, "MtkHdmiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$000(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # getter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$200(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Landroid/os/HandlerThread;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # getter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$200(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # getter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$200(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    :cond_0
    const-string v1, "MtkHdmiService"

    const-string v2, "handler thread is error"

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$000(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    :goto_0
    return-void

    .line 171
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 184
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 173
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->initHdmi()V

    .line 174
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    const/4 v2, 0x1

    # setter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mInitialized:Z
    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$302(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)Z

    goto :goto_0

    .line 177
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->deinitHdmi()V

    goto :goto_0

    .line 180
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 181
    .local v0, "state":I
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    # invokes: Lcom/mediatek/hdmi/MtkHdmiManagerService;->hdmiCableStateChanged(I)V
    invoke-static {v1, v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$400(Lcom/mediatek/hdmi/MtkHdmiManagerService;I)V

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
