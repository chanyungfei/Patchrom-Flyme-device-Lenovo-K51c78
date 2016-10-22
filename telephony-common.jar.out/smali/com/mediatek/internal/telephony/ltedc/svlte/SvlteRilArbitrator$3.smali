.class Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$3;
.super Ljava/lang/Object;
.source "SvlteRilArbitrator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->deactivateDataCall(IILandroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;

.field final synthetic val$cid:I

.field final synthetic val$reason:I

.field final synthetic val$result:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;IILandroid/os/Message;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$3;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;

    iput p2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$3;->val$cid:I

    iput p3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$3;->val$reason:I

    iput-object p4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$3;->val$result:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$3;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->mPsCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$3;->val$cid:I

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$3;->val$reason:I

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRilArbitrator$3;->val$result:Landroid/os/Message;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(IILandroid/os/Message;)V

    .line 177
    return-void
.end method
