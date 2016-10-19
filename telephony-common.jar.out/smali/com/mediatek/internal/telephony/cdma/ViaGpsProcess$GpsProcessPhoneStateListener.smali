.class Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "ViaGpsProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GpsProcessPhoneStateListener"
.end annotation


# instance fields
.field private mSlotId:I

.field private mSubId:I

.field final synthetic this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;II)V
    .locals 0
    .param p2, "slotId"    # I
    .param p3, "subId"    # I

    .prologue
    .line 478
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    .line 479
    invoke-direct {p0, p3}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    .line 480
    iput p2, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->mSlotId:I

    .line 481
    iput p3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->mSubId:I

    .line 482
    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    const/4 v3, 0x0

    .line 485
    const-string v0, "VIA_GPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", notifiedType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    # getter for: Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNotifiedNetworkType:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->access$700(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->sendEmptyMessage(I)Z

    .line 493
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 494
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    # getter for: Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNotifiedNetworkType:I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->access$700(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    # getter for: Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mAgpsInterface:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->access$000(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->setMobileNetworkType(I)V

    .line 498
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    # setter for: Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNotifiedNetworkType:I
    invoke-static {v0, p2}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->access$702(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;I)I

    goto :goto_0

    .line 499
    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 501
    :cond_3
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    # getter for: Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNotifiedNetworkType:I
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->access$700(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    # getter for: Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mAgpsInterface:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->access$000(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->setMobileNetworkType(I)V

    .line 505
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    # setter for: Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNotifiedNetworkType:I
    invoke-static {v0, v3}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->access$702(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;I)I

    goto :goto_0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 513
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    # getter for: Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->access$800(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 514
    .local v0, "cdmaPhoneState":I
    const-string v1, "VIA_GPS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceStateChanged slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cdmaphone state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", notifyState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    # getter for: Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNotifiedStatus:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->access$900(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    # getter for: Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNotifiedStatus:I
    invoke-static {v1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->access$900(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    # getter for: Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mAgpsInterface:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->access$000(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->setCDMAPhoneStatus(I)V

    .line 524
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;->this$0:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;

    # setter for: Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNotifiedStatus:I
    invoke-static {v1, v0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->access$902(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;I)I

    goto :goto_0
.end method
