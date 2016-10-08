.class Lcom/android/internal/telephony/uicc/RuimRecords$RadioTechnologyChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RuimRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadioTechnologyChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0

    .prologue
    .line 1536
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RadioTechnologyChangedReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/RuimRecords$1;

    .prologue
    .line 1536
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$RadioTechnologyChangedReceiver;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, -0x1

    .line 1538
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1539
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1544
    const-string v6, "phone"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1545
    .local v4, "phoneid":I
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RadioTechnologyChangedReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ACTION_RADIO_TECHNOLOGY_CHANGED] phoneid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1546
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RadioTechnologyChangedReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v6, v6, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RadioTechnologyChangedReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v6, v6, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v6

    if-ne v6, v4, :cond_0

    .line 1547
    const-string v2, "CDMA"

    .line 1548
    .local v2, "cdmaPhoneName":Ljava/lang/String;
    const/16 v3, 0x1f4

    .line 1549
    .local v3, "delayedTime":I
    const-string v6, "phoneName"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1550
    .local v1, "activePhoneName":Ljava/lang/String;
    const-string v6, "subscription"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1551
    .local v5, "subid":I
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RadioTechnologyChangedReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ACTION_RADIO_TECHNOLOGY_CHANGED] activePhoneName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | subid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1553
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1554
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RadioTechnologyChangedReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RadioTechnologyChangedReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const/16 v8, 0xc8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    int-to-long v8, v3

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1556
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RadioTechnologyChangedReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v6, v6, Lcom/android/internal/telephony/uicc/RuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 1560
    .end local v1    # "activePhoneName":Ljava/lang/String;
    .end local v2    # "cdmaPhoneName":Ljava/lang/String;
    .end local v3    # "delayedTime":I
    .end local v4    # "phoneid":I
    .end local v5    # "subid":I
    :cond_0
    return-void
.end method
