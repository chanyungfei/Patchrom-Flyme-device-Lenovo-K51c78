.class Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$3;
.super Ljava/lang/Object;
.source "WorldPhoneOm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V
    .locals 0

    .prologue
    .line 1144
    iput-object p1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$3;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1146
    # operator++ for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$4408()I

    .line 1147
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$4400()I

    move-result v0

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$4500()[I

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1148
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->FDD_STANDBY_TIMER:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$4500()[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFddStandByCounter:I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$4402(I)I

    .line 1150
    :cond_0
    const-string v0, "FDD time out!"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 1151
    iget-object v0, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$3;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    const/16 v1, 0x65

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1200(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)V

    .line 1152
    return-void
.end method
