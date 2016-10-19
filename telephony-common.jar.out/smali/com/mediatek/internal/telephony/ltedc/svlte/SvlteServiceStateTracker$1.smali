.class Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$1;
.super Ljava/lang/Object;
.source "SvlteServiceStateTracker.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRoamingModeChange(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V
    .locals 3
    .param p1, "preMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .param p2, "curMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    .line 715
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preRoamingMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "curRoamingMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 716
    if-eq p1, p2, :cond_0

    .line 717
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker$1;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 719
    :cond_0
    return-void
.end method

.method public onSvlteEctModeChangeDone(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;)V
    .locals 0
    .param p1, "curMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "newMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .prologue
    .line 705
    return-void
.end method

.method public onSvlteRatModeChangeDone(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;)V
    .locals 0
    .param p1, "preMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "curMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .prologue
    .line 710
    return-void
.end method

.method public onSvlteRatModeChangeStarted(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;)V
    .locals 0
    .param p1, "curMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "newMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .prologue
    .line 700
    return-void
.end method
