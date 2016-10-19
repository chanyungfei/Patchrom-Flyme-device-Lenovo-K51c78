.class abstract Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;
.super Landroid/os/Handler;
.source "SvlteIrController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Strategy"
.end annotation


# instance fields
.field protected mCdmaController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

.field protected mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

.field protected mIsCdmaRadioOn:Z

.field protected mIsEnabled:Z

.field protected mIsLwgRadioOn:Z

.field protected mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;)V
    .locals 1
    .param p2, "controller"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;
    .param p3, "lteController"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;
    .param p4, "cdmaController"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    .prologue
    const/4 v0, 0x0

    .line 1321
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1311
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;->mIsEnabled:Z

    .line 1316
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;->mIsCdmaRadioOn:Z

    .line 1317
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;->mIsLwgRadioOn:Z

    .line 1322
    iput-object p2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    .line 1323
    iput-object p3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;->mLteController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    .line 1324
    iput-object p4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;->mCdmaController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkController;

    .line 1325
    return-void
.end method


# virtual methods
.method public getIfEnabled()Z
    .locals 1

    .prologue
    .line 1333
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;->mIsEnabled:Z

    return v0
.end method

.method protected onSetIfEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1336
    return-void
.end method

.method public setIfEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1328
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;->mIsEnabled:Z

    .line 1329
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;->onSetIfEnabled(Z)V

    .line 1330
    return-void
.end method
