.class interface abstract Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;
.super Ljava/lang/Object;
.source "SvlteIrController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "INetworkController"
.end annotation


# virtual methods
.method public abstract cancelAvailableNetworks()V
.end method

.method public abstract dispose()V
.end method

.method public abstract findAvailabeNetwork()V
.end method

.method public abstract registerListener(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;)V
.end method

.method public abstract registerNetworkManually(Lcom/android/internal/telephony/OperatorInfo;)V
.end method

.method public abstract resumeNetwork()V
.end method

.method public abstract setIfEnabled(Z)V
.end method

.method public abstract setRoamingMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V
.end method

.method public abstract startNewSearchRound()V
.end method
