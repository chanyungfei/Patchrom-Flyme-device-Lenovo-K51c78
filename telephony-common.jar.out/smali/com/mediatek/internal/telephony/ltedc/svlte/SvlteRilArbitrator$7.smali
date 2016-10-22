.class Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$7;
.super Ljava/lang/Object;
.source "SvlteRilArbitrator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->getDataRegistrationState(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;

.field final synthetic val$result:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$7;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;

    iput-object p2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$7;->val$result:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$7;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$7;->val$result:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    .line 239
    return-void
.end method
