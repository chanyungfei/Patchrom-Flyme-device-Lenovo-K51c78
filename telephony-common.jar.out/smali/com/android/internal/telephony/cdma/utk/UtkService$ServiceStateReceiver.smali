.class public Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UtkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/utk/UtkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceStateReceiver"
.end annotation


# instance fields
.field mOldState:I

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/utk/UtkService;)V
    .locals 1

    .prologue
    .line 1875
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1876
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->mOldState:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1879
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1905
    :cond_0
    :goto_0
    return-void

    .line 1882
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1883
    const-string v2, "phone"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1884
    .local v0, "phoneId":I
    const-string v2, "UtkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service state changed phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    # getter for: Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/UtkService;->access$300()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 1886
    const-string v2, "UtkService"

    const-string v3, "ignore unuseful service state"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1889
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v1

    .line 1890
    .local v1, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_4

    .line 1891
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkService;->access$402(Lcom/android/internal/telephony/cdma/utk/UtkService;I)I

    .line 1898
    :cond_3
    :goto_1
    const-string v2, "UtkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service state changed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;

    # getter for: Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/utk/UtkService;->access$400(Lcom/android/internal/telephony/cdma/utk/UtkService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->mOldState:I

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;

    # getter for: Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/utk/UtkService;->access$400(Lcom/android/internal/telephony/cdma/utk/UtkService;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1900
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;

    # getter for: Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/utk/UtkService;->access$400(Lcom/android/internal/telephony/cdma/utk/UtkService;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->mOldState:I

    .line 1902
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;

    # invokes: Lcom/android/internal/telephony/cdma/utk/UtkService;->checkLocationEvent()V
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/utk/UtkService;->access$500(Lcom/android/internal/telephony/cdma/utk/UtkService;)V

    goto/16 :goto_0

    .line 1892
    :cond_4
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 1893
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;

    # setter for: Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I
    invoke-static {v2, v6}, Lcom/android/internal/telephony/cdma/utk/UtkService;->access$402(Lcom/android/internal/telephony/cdma/utk/UtkService;I)I

    goto :goto_1

    .line 1894
    :cond_5
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 1895
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;

    # setter for: Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I
    invoke-static {v2, v5}, Lcom/android/internal/telephony/cdma/utk/UtkService;->access$402(Lcom/android/internal/telephony/cdma/utk/UtkService;I)I

    goto :goto_1
.end method
