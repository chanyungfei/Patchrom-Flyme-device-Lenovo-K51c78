.class Lcom/android/internal/telephony/cat/CatService$1;
.super Landroid/os/Handler;
.source "CatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CatService;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 313
    const-string v0, "ro.mtk_bsp_package"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 339
    :cond_0
    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 340
    const-string v0, "[Reset Disable Display Text flag because timeout"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/telephony/cat/CatService;->isDisplayTextDisabled:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->access$602(Lcom/android/internal/telephony/cat/CatService;Z)Z

    .line 343
    :cond_1
    return-void

    .line 316
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache DISPLAY_TEXT time out, sim_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mSlotId:I
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mSlotId:I
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v1

    # invokes: Lcom/android/internal/telephony/cat/CatService;->clearCachedDisplayText(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->access$100(Lcom/android/internal/telephony/cat/CatService;I)V

    goto :goto_0

    .line 320
    :sswitch_1
    const-string v0, "modem MODEM_EVDL_CALL_CONN_TIMEOUT timout"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$200(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v0

    if-lez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # operator-- for: Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$210(Lcom/android/internal/telephony/cat/CatService;)I

    goto :goto_0

    .line 325
    :sswitch_2
    const-string v0, "modem MODEM_EVDL_CALL_DISCONN_TIMEOUT timout"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$300(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v0

    if-lez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # operator-- for: Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$310(Lcom/android/internal/telephony/cat/CatService;)I

    goto :goto_0

    .line 330
    :sswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_ID_SEND_STATUS_INTERVAL mSendStatusCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mSendStatusCount:I
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$400(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mSendStatusCount:I
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$400(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # invokes: Lcom/android/internal/telephony/cat/CatService;->sendStatusCmd()V
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$500(Lcom/android/internal/telephony/cat/CatService;)V

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # operator++ for: Lcom/android/internal/telephony/cat/CatService;->mSendStatusCount:I
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$408(Lcom/android/internal/telephony/cat/CatService;)I

    goto/16 :goto_0

    .line 314
    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x2e -> :sswitch_0
        0x32 -> :sswitch_3
    .end sparse-switch
.end method
