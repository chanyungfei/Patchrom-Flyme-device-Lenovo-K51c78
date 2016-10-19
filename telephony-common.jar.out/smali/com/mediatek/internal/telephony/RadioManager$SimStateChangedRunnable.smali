.class Lcom/mediatek/internal/telephony/RadioManager$SimStateChangedRunnable;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimStateChangedRunnable"
.end annotation


# instance fields
.field retryIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/RadioManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/RadioManager;Landroid/content/Intent;)V
    .locals 0
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/mediatek/internal/telephony/RadioManager$SimStateChangedRunnable;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p2, p0, Lcom/mediatek/internal/telephony/RadioManager$SimStateChangedRunnable;->retryIntent:Landroid/content/Intent;

    .line 305
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$SimStateChangedRunnable;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/RadioManager$SimStateChangedRunnable;->retryIntent:Landroid/content/Intent;

    # invokes: Lcom/mediatek/internal/telephony/RadioManager;->onReceiveSimStateChangedIntent(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/RadioManager;->access$100(Lcom/mediatek/internal/telephony/RadioManager;Landroid/content/Intent;)V

    .line 309
    return-void
.end method
