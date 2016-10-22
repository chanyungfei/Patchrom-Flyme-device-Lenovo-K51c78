.class Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1$1;
.super Landroid/os/Handler;
.source "SvlteRoamingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIRHandler--handleMessage, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1;->logdForController(Ljava/lang/String;)V

    .line 261
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 268
    :goto_0
    return-void

    .line 263
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1;->processEgmssResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 261
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
