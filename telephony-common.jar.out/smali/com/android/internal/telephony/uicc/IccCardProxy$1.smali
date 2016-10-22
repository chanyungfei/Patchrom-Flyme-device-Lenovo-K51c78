.class Lcom/android/internal/telephony/uicc/IccCardProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "IccCardProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccCardProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/IccCardProxy;)V
    .locals 0

    .prologue
    .line 1369
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$1;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1372
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$1;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    const-string v2, "[Receiver]+"

    # invokes: Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$000(Lcom/android/internal/telephony/uicc/IccCardProxy;Ljava/lang/String;)V

    .line 1373
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1374
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$1;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$000(Lcom/android/internal/telephony/uicc/IccCardProxy;Ljava/lang/String;)V

    .line 1376
    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1377
    # getter for: Lcom/android/internal/telephony/uicc/IccCardProxy;->sInternalIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$100()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1378
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$1;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    # getter for: Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$200(Lcom/android/internal/telephony/uicc/IccCardProxy;)Landroid/content/Context;

    move-result-object v1

    # getter for: Lcom/android/internal/telephony/uicc/IccCardProxy;->sInternalIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$100()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 1381
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$1;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    const-string v2, "[Receiver]-"

    # invokes: Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$000(Lcom/android/internal/telephony/uicc/IccCardProxy;Ljava/lang/String;)V

    .line 1382
    return-void
.end method
