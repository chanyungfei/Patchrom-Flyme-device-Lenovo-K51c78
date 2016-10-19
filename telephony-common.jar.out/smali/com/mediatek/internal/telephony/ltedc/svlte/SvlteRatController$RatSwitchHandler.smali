.class Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;
.super Landroid/os/Handler;
.source "SvlteRatController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RatSwitchHandler"
.end annotation


# static fields
.field private static final EVENT_ACTIVE_PDP:I = 0x6d

.field private static final EVENT_ACTIVE_PDP_DONE:I = 0x6e

.field private static final EVENT_ALL_DATA_DISCONNECTED:I = 0x72

.field private static final EVENT_CDMA_RADIO_OFF:I = 0x6b

.field private static final EVENT_CDMA_RADIO_ON:I = 0x6a

.field private static final EVENT_CHECK_RADIO_CHANGE_DONE:I = 0x6f

.field private static final EVENT_CONFIG_EVDO_MODE:I = 0x67

.field private static final EVENT_DEACTIVE_PDP:I = 0x66

.field private static final EVENT_ECTMODE_CHANGED:I = 0x71

.field private static final EVENT_LTE_RADIO_OFF:I = 0x69

.field private static final EVENT_LTE_RADIO_ON:I = 0x68

.field private static final EVENT_NOTIFY_MODE_CHANGED:I = 0x70

.field private static final EVENT_SWITCH_SVLTE_MODE:I = 0x65

.field private static final EVENT_SWITCH_SVLTE_MODE_DONE:I = 0x6c


# instance fields
.field private mByEngineerMode:Z

.field private mCdmaRadioChanged:Z

.field private mLteRadioChanged:Z

.field private mNeedAllRadioChange:Z

.field private mRecordPriority:I

.field private mResponseMessage:Landroid/os/Message;

.field private mRoamingChanged:Z

.field private mSvlteRatChanged:Z

.field final synthetic this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .line 1022
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1023
    return-void
.end method

.method private isEnableOrDisable4GSwitch()Z
    .locals 2

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerRadioOnOff()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 1032
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerRadioOnOff, mRecordPriority = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mRecordPriority:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1033
    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mRecordPriority:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1082
    :cond_0
    :goto_0
    return v0

    .line 1037
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerRadioOnOff, lteon = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cdmaon= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1040
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCdma4GSim()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 1041
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v2, v3, :cond_5

    .line 1042
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1044
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x69

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1045
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v2, v3, :cond_4

    .line 1046
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mNeedAllRadioChange:Z

    .line 1062
    :cond_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v2, v3, :cond_7

    .line 1063
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1065
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x6b

    invoke-interface {v0, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1066
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v0

    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v0, v2, :cond_3

    .line 1067
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mNeedAllRadioChange:Z

    :cond_3
    move v0, v1

    .line 1069
    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 1048
    goto/16 :goto_0

    .line 1051
    :cond_5
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v2, v3, :cond_2

    .line 1052
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1054
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x68

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1056
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 1057
    goto/16 :goto_0

    .line 1070
    :cond_6
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 1071
    goto/16 :goto_0

    .line 1073
    :cond_7
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/RadioManager;->isSvlteTestSimAllowPowerOn(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1076
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x6a

    invoke-interface {v0, p0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    move v0, v1

    .line 1079
    goto/16 :goto_0
.end method


# virtual methods
.method public doSwitch(ZLandroid/os/Message;I)V
    .locals 7
    .param p1, "forceSwitch"    # Z
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "recordPriority"    # I

    .prologue
    const/16 v6, 0x65

    .line 1086
    iput p3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mRecordPriority:I

    .line 1087
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1088
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1089
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1090
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

    .line 1091
    .local v2, "lis":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;
    if-eqz v2, :cond_0

    .line 1092
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$900(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;->onRoamingModeChange(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    .line 1093
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;->onSvlteRatModeChangeStarted(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;)V

    .line 1089
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1097
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "lis":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;
    :cond_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setRadioTechMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V
    invoke-static {v3, v4, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    .line 1098
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[doSwitch] mNewRadioTechMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mNewSvlteRatMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mNewRoamingMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1101
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mResponseMessage:Landroid/os/Message;

    if-eqz v3, :cond_2

    .line 1102
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[doSwitch] mResponseMessage= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mResponseMessage:Landroid/os/Message;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1106
    :goto_1
    iput-object p2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mResponseMessage:Landroid/os/Message;

    .line 1108
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->resetRadioPowerOff(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V
    invoke-static {v3, v4, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    .line 1109
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isUseNetworkTypeDirectly()Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1110
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1123
    :goto_2
    return-void

    .line 1104
    :cond_2
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v4, "[doSwitch] mResponseMessage= null"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    goto :goto_1

    .line 1111
    :cond_3
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->isEnableOrDisable4GSwitch()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1113
    const/16 v3, 0x66

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 1116
    :cond_4
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v3

    sget-object v4, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v3, v4, :cond_5

    .line 1118
    const/16 v3, 0x67

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 1120
    :cond_5
    invoke-virtual {p0, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1127
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1385
    :cond_0
    :goto_0
    return-void

    .line 1129
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_DEACTIVE_PDP, mNewSvlteRatMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSvlteRatMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 1133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v2, v3, :cond_1

    .line 1134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/16 v3, 0x72

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1136
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v2

    int-to-long v4, v2

    const/4 v6, 0x0

    const-string v7, "SvlteRatControll"

    const-wide/32 v8, 0x50910

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/dataconnection/DctController;->setDataAllowed(JZLjava/lang/String;J)V

    goto :goto_0

    .line 1139
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v2, v3, :cond_2

    .line 1140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    const/16 v3, 0x72

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1142
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v2

    int-to-long v4, v2

    const/4 v6, 0x0

    const-string v7, "SvlteRatControll"

    const-wide/32 v8, 0x50910

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/dataconnection/DctController;->setDataAllowed(JZLjava/lang/String;J)V

    goto/16 :goto_0

    .line 1146
    :cond_2
    const/16 v2, 0x67

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1149
    :cond_3
    const/16 v2, 0x67

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1154
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v3, "event EVENT_ALL_DATA_DISCONNECTED"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v3

    if-eq v2, v3, :cond_4

    .line 1156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v2, v3, :cond_5

    .line 1157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    .line 1162
    :cond_4
    :goto_1
    const/16 v2, 0x67

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1158
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v2, v3, :cond_4

    .line 1159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    goto :goto_1

    .line 1167
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v3, "EVENT_CONFIG_EVDO_MODE.config eHPRD"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq v2, v3, :cond_7

    .line 1170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v3, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v4, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v2, v4, :cond_6

    const/4 v2, 0x1

    :goto_2
    const/16 v4, 0x65

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->configEvdoMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 1175
    :cond_7
    const/16 v2, 0x65

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1180
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v3, "EVENT_SWITCH_SVLTE_MODE."

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v2, v3, :cond_8

    .line 1184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$900(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v7

    const/4 v8, 0x0

    const/16 v9, 0x71

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface/range {v2 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->setSvlteRatMode(IIIIIZLandroid/os/Message;)V

    .line 1245
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    .line 1246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setStkSwitchMode(I)V

    goto/16 :goto_0

    .line 1187
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->containsCdmaApp()Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->isEnableOrDisable4GSwitch()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1189
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$900(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->setSvlteRatMode(IIIIIZLandroid/os/Message;)V

    .line 1196
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$900(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v7

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I
    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v8

    const/16 v9, 0x71

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface/range {v2 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->setSvlteRatMode(IIIIIZLandroid/os/Message;)V

    goto/16 :goto_3

    .line 1202
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getCardType()I
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v10

    .line 1203
    .local v10, "cardType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->containsCdmaApp()Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z

    move-result v13

    .line 1204
    .local v13, "hasCdmaApp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->containsUsimApp(I)Z
    invoke-static {v2, v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;I)Z

    move-result v14

    .line 1205
    .local v14, "hasUsimApp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isFixedSvlteMode()Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z

    move-result v2

    if-nez v2, :cond_b

    if-eqz v13, :cond_e

    .line 1206
    :cond_b
    if-eqz v14, :cond_c

    .line 1207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v3, "cardType: CDMA CSIM, handled by GMSS"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$900(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v7

    const/4 v8, 0x0

    const/16 v9, 0x71

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface/range {v2 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->setSvlteRatMode(IIIIIZLandroid/os/Message;)V

    goto/16 :goto_3

    .line 1215
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v3, "cardType: CDMA UIM"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1216
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$900(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->setSvlteRatMode(IIIIIZLandroid/os/Message;)V

    .line 1226
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$900(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v7

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I
    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v8

    const/16 v9, 0x71

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface/range {v2 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->setSvlteRatMode(IIIIIZLandroid/os/Message;)V

    goto/16 :goto_3

    .line 1235
    :cond_e
    if-eqz v14, :cond_f

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v3, "cardType: USIM"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1241
    :goto_4
    const/16 v2, 0x6e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3

    .line 1238
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v3, "cardType: SIM"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    goto :goto_4

    .line 1248
    .end local v10    # "cardType":I
    .end local v13    # "hasCdmaApp":Z
    .end local v14    # "hasUsimApp":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setStkSwitchMode(I)V

    goto/16 :goto_0

    .line 1253
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v3, "EVENT_ACTIVE_PDP."

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v3

    if-eq v2, v3, :cond_11

    .line 1256
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v2

    int-to-long v4, v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/dataconnection/DctController;->setDataAllowed(JZLjava/lang/String;J)V

    .line 1259
    :cond_11
    const/16 v2, 0x6e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1263
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v3, "EVENT_ACTIVE_PDP_DONE."

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->toggleActivePhone(I)V

    .line 1266
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->registerRadioOnOff()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1267
    const/16 v2, 0x6c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1270
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v3

    if-eq v2, v3, :cond_14

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mSvlteRatChanged:Z

    .line 1271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$900(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v3

    if-eq v2, v3, :cond_15

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mRoamingChanged:Z

    .line 1273
    const/16 v2, 0x70

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    .line 1274
    .local v18, "notifyModeMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 1276
    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    .line 1278
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mByEngineerMode:Z

    if-nez v2, :cond_13

    .line 1279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v3

    # setter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$502(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 1280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v3

    # setter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$902(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I

    move-result v3

    # setter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRadioTechMode:I
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$1902(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;I)I

    .line 1283
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update values. mSvlteRatMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRoamingMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$900(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->blockByRadioPowerOff()Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$2000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v3, "EVENT_SWITCH_SVLTE_MODE, not in airplane mode, set radio power"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1287
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isLteOn()Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$2100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    .line 1288
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCdmaOn()Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$2200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    goto/16 :goto_0

    .line 1270
    .end local v18    # "notifyModeMsg":Landroid/os/Message;
    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 1271
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1293
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v3, "EVENT_LTE_RADIO_OFF."

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1294
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mLteRadioChanged:Z

    .line 1295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 1296
    const/16 v2, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1300
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v3, "EVENT_LTE_RADIO_ON."

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1301
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mLteRadioChanged:Z

    .line 1302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 1303
    const/16 v2, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1307
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v3, "EVENT_CDMA_RADIO_OFF."

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1308
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mCdmaRadioChanged:Z

    .line 1309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 1310
    const/16 v2, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1314
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v3, "EVENT_CDMA_RADIO_ON."

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1315
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mCdmaRadioChanged:Z

    .line 1316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 1317
    const/16 v2, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1321
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_CHECK_RADIO_CHANGE_DONE. mNeedAllRadioChange = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mNeedAllRadioChange:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mCdmaRadioChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mCdmaRadioChanged:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mLteRadioChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mLteRadioChanged:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1325
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mNeedAllRadioChange:Z

    if-eqz v2, :cond_16

    .line 1326
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mCdmaRadioChanged:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mLteRadioChanged:Z

    if-eqz v2, :cond_0

    .line 1327
    const/16 v2, 0x6c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1330
    :cond_16
    const/16 v2, 0x6c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1335
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v3, "EVENT_SWITCH_SVLTE_MODE_DONE."

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1336
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mNeedAllRadioChange:Z

    .line 1337
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mCdmaRadioChanged:Z

    .line 1338
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mLteRadioChanged:Z

    .line 1340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mResponseMessage:Landroid/os/Message;

    move-object/from16 v17, v0

    .line 1341
    .local v17, "message":Landroid/os/Message;
    if-eqz v17, :cond_17

    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 1342
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    .line 1345
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mRecordPriority:I

    move/from16 v20, v0

    .line 1346
    .local v20, "recordPriority":I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mRecordPriority:I

    .line 1347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mSvlteRatChanged:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->mRoamingChanged:Z

    move/from16 v0, v20

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->finishSwitchMode(ZZZI)V
    invoke-static {v2, v3, v4, v5, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$2300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;ZZZI)V

    goto/16 :goto_0

    .line 1350
    .end local v17    # "message":Landroid/os/Message;
    .end local v20    # "recordPriority":I
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v3, "EVENT_NOTIFY_MODE_CHANGED."

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1352
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->values()[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    aget-object v19, v2, v3

    .line 1353
    .local v19, "preMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->values()[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    aget-object v12, v2, v3

    .line 1354
    .local v12, "curMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    .line 1355
    .local v11, "count":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_7
    if-ge v15, v11, :cond_0

    .line 1356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

    .line 1357
    .local v16, "lis":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;
    if-eqz v16, :cond_18

    .line 1358
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v12}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;->onSvlteRatModeChangeDone(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;)V

    .line 1355
    :cond_18
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 1364
    .end local v11    # "count":I
    .end local v12    # "curMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .end local v15    # "i":I
    .end local v16    # "lis":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;
    .end local v19    # "preMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    const-string v3, "EVENT_ECTMODE_CHANGED."

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V

    .line 1365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    .line 1367
    .restart local v11    # "count":I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_8
    if-ge v15, v11, :cond_1a

    .line 1368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

    .line 1369
    .restart local v16    # "lis":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;
    if-eqz v16, :cond_19

    .line 1370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;->onSvlteEctModeChangeDone(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;)V

    .line 1367
    :cond_19
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 1374
    .end local v11    # "count":I
    .end local v15    # "i":I
    .end local v16    # "lis":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v2, v3, :cond_1b

    .line 1375
    const/16 v2, 0x6e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1376
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->isEnableOrDisable4GSwitch()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1377
    const/16 v2, 0x6d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1379
    :cond_1c
    const/16 v2, 0x6e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1127
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_b
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_1
    .end packed-switch
.end method
