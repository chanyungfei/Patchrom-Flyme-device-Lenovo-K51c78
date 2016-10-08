.class Lcom/mediatek/internal/telephony/ims/ImsService$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ims/ImsService;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ims/ImsService;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsService$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 154
    const-string v2, "android.net.conn.CONNECTIVITY_ACTION_HANDOVER_END"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$000(Lcom/mediatek/internal/telephony/ims/ImsService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsService$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$000(Lcom/mediatek/internal/telephony/ims/ImsService;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xe

    invoke-virtual {v3, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 171
    :goto_0
    return-void

    .line 157
    :cond_0
    const-string v2, "android.intent.action.NOTIFY_CONNECTION_ERROR"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    const-string v3, "error_code"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/mediatek/internal/telephony/ims/ImsService;->mWfcRegErrorCode:I

    .line 159
    const-string v2, "ImsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connectivity error updated : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsService$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    iget v4, v4, Lcom/mediatek/internal/telephony/ims/ImsService;->mWfcRegErrorCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    const-string v5, "registry"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegistry:Z
    invoke-static {v2, v5}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$102(Lcom/mediatek/internal/telephony/ims/ImsService;Z)Z

    .line 163
    const-string v2, "ImsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Simulate IMS Registration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ims/ImsService$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegistry:Z
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$100(Lcom/mediatek/internal/telephony/ims/ImsService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v2, 0x3

    new-array v1, v2, [I

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegistry:Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$100(Lcom/mediatek/internal/telephony/ims/ImsService;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    aput v2, v1, v4

    const/16 v2, 0xf

    aput v2, v1, v3

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsService$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$200(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v4

    aput v4, v1, v2

    .line 168
    .local v1, "result":[I
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v7, v1, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 169
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsService$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$000(Lcom/mediatek/internal/telephony/ims/ImsService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsService$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$000(Lcom/mediatek/internal/telephony/ims/ImsService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "result":[I
    :cond_2
    move v2, v4

    .line 164
    goto :goto_1
.end method
