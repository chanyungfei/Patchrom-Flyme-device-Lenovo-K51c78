.class Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingFactory;
.super Ljava/lang/Object;
.source "SvlteRoamingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IrSwitchingFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;
    .locals 1
    .param p0, "lteDcPhoneProxy"    # Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .param p1, "phoneProxyIndex"    # I

    .prologue
    .line 84
    packed-switch p1, :pswitch_data_0

    .line 92
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 86
    :pswitch_0
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1;-><init>(Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;I)V

    goto :goto_0

    .line 88
    :pswitch_1
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy2;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy2;-><init>(Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;I)V

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
