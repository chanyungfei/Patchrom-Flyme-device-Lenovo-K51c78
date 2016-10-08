.class Lcom/android/internal/telephony/uicc/RuimRecords$1;
.super Landroid/content/BroadcastReceiver;
.source "RuimRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0

    .prologue
    .line 1417
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1419
    if-nez p2, :cond_1

    .line 1449
    :cond_0
    :goto_0
    return-void

    .line 1420
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1421
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receive action "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1423
    const-string v3, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1424
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v6, "ACTION_SHUTDOWN_IPO: clear PHB_READY systemproperties"

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1425
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v3, :cond_2

    .line 1426
    sget-object v3, Lcom/android/internal/telephony/uicc/RuimRecords;->SIMRECORD_PROPERTY_RIL_PHB_READY:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v6, v6, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getSlotId()I

    move-result v6

    aget-object v3, v3, v6

    const-string v6, "false"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    # setter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z
    invoke-static {v3, v5}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$1902(Lcom/android/internal/telephony/uicc/RuimRecords;Z)Z

    .line 1431
    :cond_2
    const-string v3, "ro.operator.optr"

    const-string v6, "OM"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1432
    .local v2, "operator":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mHandlePhbReadyReceiver ro.operator.optr = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1434
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "OM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1435
    const-string v3, "state"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1436
    .local v1, "enabled":Z
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mHandlePhbReadyReceiver MTK_FLIGHT_MODE_POWER_OFF_MD flightmode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1437
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    and-int/2addr v3, v1

    if-eqz v3, :cond_4

    .line 1438
    sget-object v3, Lcom/android/internal/telephony/uicc/RuimRecords;->SIMRECORD_PROPERTY_RIL_PHB_READY:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v4, v4, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getSlotId()I

    move-result v4

    aget-object v3, v3, v4

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    # setter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z
    invoke-static {v3, v5}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$1902(Lcom/android/internal/telephony/uicc/RuimRecords;Z)Z

    .line 1441
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    # getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$1900(Lcom/android/internal/telephony/uicc/RuimRecords;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->broadcastPhbStateChangedIntent(Z)V

    goto/16 :goto_0

    :cond_3
    move v3, v5

    .line 1437
    goto :goto_1

    .line 1442
    :cond_4
    if-nez v1, :cond_6

    move v3, v4

    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v6, v6, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v6, :cond_5

    move v5, v4

    :cond_5
    and-int/2addr v3, v5

    if-eqz v3, :cond_0

    .line 1443
    sget-object v3, Lcom/android/internal/telephony/uicc/RuimRecords;->SIMRECORD_PROPERTY_RIL_PHB_READY:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getSlotId()I

    move-result v5

    aget-object v3, v3, v5

    const-string v5, "true"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    # setter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z
    invoke-static {v3, v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$1902(Lcom/android/internal/telephony/uicc/RuimRecords;Z)Z

    .line 1446
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    # getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$1900(Lcom/android/internal/telephony/uicc/RuimRecords;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->broadcastPhbStateChangedIntent(Z)V

    goto/16 :goto_0

    :cond_6
    move v3, v5

    .line 1442
    goto :goto_2
.end method
