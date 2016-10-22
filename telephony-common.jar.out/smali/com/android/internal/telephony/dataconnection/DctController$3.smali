.class Lcom/android/internal/telephony/dataconnection/DctController$3;
.super Landroid/os/Handler;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DctController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 281
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x320

    if-lt v0, v1, :cond_1

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    add-int/lit16 v1, v1, -0x320

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_RESTORE."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    iget v1, p1, Landroid/os/Message;->what:I

    add-int/lit16 v1, v1, -0x320

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->restorePendingRequest(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->access$400(Lcom/android/internal/telephony/dataconnection/DctController;I)V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2bc

    if-lt v0, v1, :cond_2

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_PHONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    add-int/lit16 v1, v1, -0x2bc

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_SET_DATA_ALLOWED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    iget v1, p1, Landroid/os/Message;->what:I

    add-int/lit16 v1, v1, -0x2bc

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->transitToAttachingState(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->access$500(Lcom/android/internal/telephony/dataconnection/DctController;I)V

    goto :goto_0

    .line 289
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_3

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_PHONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    add-int/lit16 v1, v1, -0x258

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_DATA_DETACH."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->access$600(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    add-int/lit16 v1, v1, -0x258

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->notifyDataDetached()V

    goto :goto_0

    .line 293
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_PHONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    add-int/lit16 v1, v1, -0x1f4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_DATA_ATTACH."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->access$600(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    add-int/lit16 v1, v1, -0x1f4

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->notifyDataAttached()V

    goto/16 :goto_0
.end method
