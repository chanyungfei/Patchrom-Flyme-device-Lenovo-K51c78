.class Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;
.super Landroid/os/Handler;
.source "SSRequestDecisionMaker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SSRequestDecisionMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SSRequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SSRequestDecisionMaker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SSRequestDecisionMaker;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;->this$0:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    .line 122
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 123
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;->this$0:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    # getter for: Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->access$000(Lcom/android/internal/telephony/SSRequestDecisionMaker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-nez v0, :cond_0

    .line 134
    const-string v0, "SSDecisonMaker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSRequestDecisionMaker-Received message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] while being destroyed. Ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return-void

    .line 139
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 150
    const-string v0, "SSDecisonMaker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSRequestDecisionMaker:msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;->this$0:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Lcom/android/internal/telephony/SSRequestDecisionMaker;->processSendRequest(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->access$100(Lcom/android/internal/telephony/SSRequestDecisionMaker;Ljava/lang/Object;)V

    goto :goto_0

    .line 144
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;->this$0:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Lcom/android/internal/telephony/SSRequestDecisionMaker;->processResponse(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->access$200(Lcom/android/internal/telephony/SSRequestDecisionMaker;Ljava/lang/Object;)V

    goto :goto_0

    .line 147
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;->this$0:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/telephony/SSRequestDecisionMaker;->mIsTempVolteUser:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->access$302(Lcom/android/internal/telephony/SSRequestDecisionMaker;Z)Z

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public run()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method
