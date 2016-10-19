.class interface abstract Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;
.super Ljava/lang/Object;
.source "SvlteIrController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "INetworkControllerListener"
.end annotation


# virtual methods
.method public abstract onNetworkInfoReady(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPlmnChanged(Ljava/lang/String;)V
.end method

.method public abstract onPreSelectPlmn([Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract onRadioStateChanged(Z)V
.end method

.method public abstract onRoamingModeSwitchDone()V
.end method

.method public abstract onServiceStateChanged(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;)V
.end method
