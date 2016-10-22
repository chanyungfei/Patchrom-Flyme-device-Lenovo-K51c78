.class Lcom/android/internal/telephony/cat/CatService$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 360
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 363
    const-string v3, "android.intent.action.utk.setup_event_list"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received UTK_SETUP_EVENT_LIST_ACTION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mSlotId:I
    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    const-string v3, "UTK_EVENTS"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 366
    .local v0, "eventList":[B
    const-string v3, "PHONE_ID"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 369
    .local v2, "phoneId":I
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mSlotId:I
    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore this event list. phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    .end local v0    # "eventList":[B
    .end local v2    # "phoneId":I
    :cond_0
    :goto_0
    return-void

    .line 373
    .restart local v0    # "eventList":[B
    .restart local v2    # "phoneId":I
    :cond_1
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eventList length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mEventList:[B
    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->access$700(Lcom/android/internal/telephony/cat/CatService;)[B

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mEventList:[B
    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->access$700(Lcom/android/internal/telephony/cat/CatService;)[B

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_3

    .line 376
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # setter for: Lcom/android/internal/telephony/cat/CatService;->mEventList:[B
    invoke-static {v3, v0}, Lcom/android/internal/telephony/cat/CatService;->access$702(Lcom/android/internal/telephony/cat/CatService;[B)[B

    .line 377
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mEventList:[B
    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->access$700(Lcom/android/internal/telephony/cat/CatService;)[B

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEventList["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    # getter for: Lcom/android/internal/telephony/cat/CatService;->mEventList:[B
    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->access$700(Lcom/android/internal/telephony/cat/CatService;)[B

    move-result-object v4

    aget-byte v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 381
    .end local v1    # "i":I
    :cond_3
    const-string v3, "Just use Stk setup event list."

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
