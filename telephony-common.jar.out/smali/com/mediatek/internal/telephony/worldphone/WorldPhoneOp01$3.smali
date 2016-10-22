.class Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$3;
.super Ljava/lang/Object;
.source "WorldPhoneOp01.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V
    .locals 0

    .prologue
    .line 935
    iput-object p1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$3;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 937
    # operator++ for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$3908()I

    .line 938
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$3900()I

    move-result v0

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$4000()[I

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 939
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->FDD_STANDBY_TIMER:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$4000()[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFddStandByCounter:I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$3902(I)I

    .line 941
    :cond_0
    const-string v0, "FDD time out!"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 942
    const/4 v0, 0x1

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1102(I)I

    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sSwitchModemCauseType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1100()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 944
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$3;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    const/16 v1, 0x65

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1300(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;I)V

    .line 945
    return-void
.end method
