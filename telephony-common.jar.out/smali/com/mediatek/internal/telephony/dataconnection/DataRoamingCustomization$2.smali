.class Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization$2;
.super Landroid/content/BroadcastReceiver;
.source "DataRoamingCustomization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 187
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;Ljava/lang/String;)V

    .line 189
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization$2;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->onSubInfoReady()V
    invoke-static {v1}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->access$100(Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;)V

    .line 192
    :cond_0
    return-void
.end method
