.class Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ConfigModemRunnable;
.super Ljava/lang/Object;
.source "SvlteModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigModemRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V
    .locals 0

    .prologue
    .line 893
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ConfigModemRunnable;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$ConfigModemRunnable;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->configModemStatus()V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V

    .line 899
    return-void
.end method
