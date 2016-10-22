.class Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization$1;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x1

    .line 89
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;

    const-string v1, "Observer Onchange"

    # invokes: Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->access$000(Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->removeMessages(I)V

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization$1;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataRoamingCustomization;->sendEmptyMessage(I)Z

    .line 92
    return-void
.end method
