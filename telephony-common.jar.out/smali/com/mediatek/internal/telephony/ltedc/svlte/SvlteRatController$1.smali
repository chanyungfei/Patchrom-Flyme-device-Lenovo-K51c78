.class Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$1;
.super Landroid/content/BroadcastReceiver;
.source "SvlteRatController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 333
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v1, "onReceive: ACTION_AIRPLANE_MODE_CHANGED"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const/4 v1, 0x0

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->updateAirplaneMode(Landroid/content/Intent;Landroid/os/Message;)V
    invoke-static {v0, p2, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Landroid/content/Intent;Landroid/os/Message;)V

    .line 337
    :cond_0
    return-void
.end method
