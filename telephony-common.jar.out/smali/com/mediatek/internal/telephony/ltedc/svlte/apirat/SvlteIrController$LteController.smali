.class Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;
.super Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;
.source "SvlteIrController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LteController"
.end annotation


# static fields
.field private static final EVENT_DUAL_PHONE_AVAILABLE:I = 0x65

.field private static final EVENT_DUAL_PHONE_POWER_ON:I = 0x66

.field private static final EVENT_GSM_GET_AVAILABLE_NETWORKS_COMPLETED:I = 0x8c

.field private static final EVENT_GSM_PLMN_CHANGED:I = 0x68

.field private static final EVENT_GSM_SUSPENDED:I = 0x69

.field private static final EVENT_RADIO_OFF_NOT_AVAILABLE:I = 0x67


# instance fields
.field private mIsFindingAvailableNW:Z

.field private mModemResumeSessionId:I

.field final synthetic this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 1
    .param p2, "controller"    # Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;
    .param p3, "ltePhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p4, "activePhoneId"    # I

    .prologue
    .line 661
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    .line 662
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/android/internal/telephony/PhoneBase;I)V

    .line 659
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFindingAvailableNW:Z

    .line 663
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->registerBaseListener()V

    .line 664
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setState(I)V

    .line 665
    return-void
.end method

.method private enableSuspend(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 933
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " enableSuspend: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 934
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 935
    .local v0, "enableVal":I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPhoneControllerActivePhoneId:I

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->isCtDualModeSimCard(I)Z
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 936
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableSuspend(), enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not ct dual mode sim, return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Ljava/lang/String;)V

    .line 940
    :goto_1
    return-void

    .line 934
    .end local v0    # "enableVal":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 939
    .restart local v0    # "enableVal":I
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRegistrationSuspendEnabled(ILandroid/os/Message;)V

    goto :goto_1
.end method

.method private isNoServiceState(I)Z
    .locals 1
    .param p1, "regState"    # I

    .prologue
    .line 985
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 987
    :cond_0
    const/4 v0, 0x1

    .line 989
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPreStateBeforeNoService(I)Z
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 979
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerBaseListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 909
    const-string v0, " registerBaseListener"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 910
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x65

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 911
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x66

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 912
    return-void
.end method

.method private registerSpecialCasesListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 943
    const-string v0, " registerSpecialCasesListener"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 944
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v1, 0x137

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 945
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x67

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 946
    return-void
.end method

.method private registerSuspendListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 921
    const-string v0, " registerSuspendListener"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 922
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x68

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnPlmnChangeNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 923
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x69

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnRegistrationSuspended(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 924
    return-void
.end method

.method private selectedPlmn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 955
    const/4 v0, 0x0

    .line 958
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v1, :cond_0

    .line 959
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPlmns:[Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onPreSelectPlmn([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 962
    :cond_0
    if-nez v0, :cond_1

    .line 963
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPlmns:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 965
    :cond_1
    return-object v0
.end method

.method private unregisterBaseListener()V
    .locals 1

    .prologue
    .line 915
    const-string v0, " unregisterBaseListener"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 917
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 918
    return-void
.end method

.method private unregisterSpecialCasesListener()V
    .locals 1

    .prologue
    .line 949
    const-string v0, " unregisterSpecialCasesListener"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 950
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneBase;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 951
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 952
    return-void
.end method

.method private unregisterSuspendListener()V
    .locals 1

    .prologue
    .line 927
    const-string v0, " unregisterSuspendListener"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 928
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnPlmnChangeNotification(Landroid/os/Handler;)V

    .line 929
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnRegistrationSuspended(Landroid/os/Handler;)V

    .line 930
    return-void
.end method


# virtual methods
.method public cancelAvailableNetworks()V
    .locals 2

    .prologue
    .line 697
    const-string v0, " cancelAvailableNetworks"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 698
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFindingAvailableNW:Z

    if-eqz v0, :cond_0

    .line 699
    const-string v0, " really cancelAvailableNetworks"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->cancelAvailableNetworks(Landroid/os/Message;)V

    .line 701
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFindingAvailableNW:Z

    .line 703
    :cond_0
    return-void
.end method

.method protected defaultMessageHandler(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x4

    const/16 v10, 0x136

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 713
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->getState()I

    move-result v5

    if-ne v5, v7, :cond_1

    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x137

    if-eq v5, v6, :cond_0

    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x69

    if-eq v5, v6, :cond_0

    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x68

    if-ne v5, v6, :cond_1

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 720
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 808
    invoke-super {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->defaultMessageHandler(Landroid/os/Message;)V

    goto :goto_0

    .line 722
    :sswitch_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->removeNoServiceMessage()V

    .line 723
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->registerSpecialCasesListener()V

    .line 724
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v5, :cond_2

    .line 725
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    invoke-interface {v5, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onRadioStateChanged(Z)V

    .line 727
    :cond_2
    iput v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreVoiceState:I

    .line 728
    iput v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreDataState:I

    .line 729
    iput-boolean v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFindingAvailableNW:Z

    .line 730
    iput-boolean v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFirstRoundSearch:Z

    goto :goto_0

    .line 733
    :sswitch_1
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/telephony/ServiceState;

    .line 734
    .local v4, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilVoiceRegState()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->convertVoiceRegState(I)I

    move-result v3

    .line 735
    .local v3, "regState":I
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilDataRegState()I

    move-result v2

    .line 736
    .local v2, "regDataState":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " EVENT_SERVICE_STATE_CHANGED-VoiceState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " DataState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mIsFirstRoundSearch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFirstRoundSearch:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 739
    if-eq v3, v7, :cond_3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_3

    if-eq v2, v7, :cond_3

    const/4 v5, 0x5

    if-ne v2, v5, :cond_5

    .line 743
    :cond_3
    sget-object v5, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->IN_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setServiceType(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;)V

    .line 744
    iput-boolean v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFirstRoundSearch:Z

    .line 759
    :cond_4
    :goto_1
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreVoiceState:I

    .line 760
    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreDataState:I

    goto :goto_0

    .line 745
    :cond_5
    iget v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreVoiceState:I

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->isPreStateBeforeNoService(I)Z

    move-result v5

    if-nez v5, :cond_6

    iget v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreDataState:I

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->isPreStateBeforeNoService(I)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->isNoServiceState(I)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->isNoServiceState(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 749
    sget-object v5, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->OUT_OF_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setServiceType(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;)V

    .line 750
    iput-boolean v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFirstRoundSearch:Z

    goto :goto_1

    .line 751
    :cond_7
    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFirstRoundSearch:Z

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mServiceType:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    sget-object v6, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->OUT_OF_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    if-ne v5, v6, :cond_4

    invoke-virtual {p0, v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 754
    :cond_8
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->mSwitchStrategy:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1200(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;

    move-result-object v5

    iget-boolean v5, v5, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$Strategy;->mIsLwgRadioOn:Z

    if-eqz v5, :cond_4

    .line 755
    sget-object v5, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->IN_SEARCHING:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setServiceType(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;)V

    goto :goto_1

    .line 763
    .end local v2    # "regDataState":I
    .end local v3    # "regState":I
    .end local v4    # "serviceState":Landroid/telephony/ServiceState;
    :sswitch_2
    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->sNoServiceDelayTime:I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$900()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->postponeNoServiceMessageIfNeeded(I)V

    .line 764
    invoke-virtual {p0, v11}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setState(I)V

    .line 765
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_9

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_9

    .line 766
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    aget v5, v5, v9

    iput v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mModemResumeSessionId:I

    .line 767
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v5, :cond_9

    .line 768
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->selectedPlmn()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onPlmnChanged(Ljava/lang/String;)V

    .line 771
    :cond_9
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPlmns:[Ljava/lang/String;

    goto/16 :goto_0

    .line 774
    :sswitch_3
    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->sNoServiceDelayTime:I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$900()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->postponeNoServiceMessageIfNeeded(I)V

    .line 775
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_a

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_a

    .line 776
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPlmns:[Ljava/lang/String;

    .line 777
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPlmns:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_a

    .line 778
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_GSM_PLMN_CHANGED: i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mPlmns="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPlmns:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 777
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 782
    .end local v1    # "i":I
    :cond_a
    invoke-virtual {p0, v11}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setState(I)V

    goto/16 :goto_0

    .line 785
    :sswitch_4
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->removeNoServiceMessage()V

    .line 786
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->unregisterSpecialCasesListener()V

    .line 787
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_c

    .line 788
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->unregisterSuspendListener()V

    .line 789
    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setState(I)V

    .line 793
    :goto_3
    iput v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreVoiceState:I

    .line 794
    iput v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPreDataState:I

    .line 795
    iput-boolean v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFirstRoundSearch:Z

    .line 796
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v5, :cond_b

    .line 797
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    invoke-interface {v5, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onRadioStateChanged(Z)V

    .line 799
    :cond_b
    sget-object v5, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->OUT_OF_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setServiceType(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;)V

    .line 800
    invoke-virtual {p0, v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 801
    invoke-virtual {p0, v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->removeMessages(I)V

    .line 802
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v5, :cond_0

    .line 803
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    sget-object v6, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;->OUT_OF_SERVICE:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;

    invoke-interface {v5, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onServiceStateChanged(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$ServiceType;)V

    goto/16 :goto_0

    .line 791
    :cond_c
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setState(I)V

    goto :goto_3

    .line 720
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_0
        0x67 -> :sswitch_4
        0x68 -> :sswitch_3
        0x69 -> :sswitch_2
        0x137 -> :sswitch_1
    .end sparse-switch
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 672
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->unregisterBaseListener()V

    .line 673
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->unregisterSuspendListener()V

    .line 674
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->unregisterSpecialCasesListener()V

    .line 675
    return-void
.end method

.method public findAvailabeNetwork()V
    .locals 2

    .prologue
    .line 690
    const-string v0, " findAvailabeNetwork"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 691
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFindingAvailableNW:Z

    .line 692
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v1, 0x8c

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->getAvailableNetworks(Landroid/os/Message;)V

    .line 693
    return-void
.end method

.method protected logdForController(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 995
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->this$0:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " LteController, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Ljava/lang/String;)V

    .line 996
    return-void
.end method

.method protected msgToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "msgWhat"    # I

    .prologue
    .line 867
    const-string v0, "[LteController]-"

    .line 868
    .local v0, "msg":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 899
    :goto_0
    return-object v0

    .line 870
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EVENT_DUAL_PHONE_AVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 871
    goto :goto_0

    .line 873
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EVENT_DUAL_PHONE_POWER_ON"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 874
    goto :goto_0

    .line 876
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EVENT_GSM_PLMN_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 877
    goto :goto_0

    .line 879
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EVENT_GSM_SUSPENDED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 880
    goto :goto_0

    .line 882
    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EVENT_SERVICE_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 883
    goto :goto_0

    .line 885
    :sswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EVENT_RADIO_OFF_NOT_AVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 886
    goto :goto_0

    .line 888
    :sswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EVENT_RADIO_NO_SERVICE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 889
    goto/16 :goto_0

    .line 891
    :sswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EVENT_GSM_GET_AVAILABLE_NETWORKS_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 892
    goto/16 :goto_0

    .line 894
    :sswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EVENT_ROAMING_MODE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 895
    goto/16 :goto_0

    .line 868
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x67 -> :sswitch_5
        0x68 -> :sswitch_2
        0x69 -> :sswitch_3
        0x8c -> :sswitch_7
        0x136 -> :sswitch_6
        0x137 -> :sswitch_4
        0x138 -> :sswitch_8
    .end sparse-switch
.end method

.method protected processInitState(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 815
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 826
    invoke-super {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->processInitState(Landroid/os/Message;)V

    .line 829
    :goto_0
    return-void

    .line 817
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->removeNoServiceMessage()V

    .line 818
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->getIfEnabled()Z
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1300(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->enableSuspend(Z)V

    .line 820
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->resetToInitialState()V

    .line 822
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->registerSuspendListener()V

    .line 823
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setState(I)V

    goto :goto_0

    .line 815
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method protected processSelectingNWState(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 833
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 834
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 860
    invoke-super {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$PhoneController;->processSelectingNWState(Landroid/os/Message;)V

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 836
    :pswitch_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIsFindingAvailableNW:Z

    .line 837
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_3

    .line 838
    const-string v4, " no exception while getting networks"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 839
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 840
    .local v2, "networkInfoArray":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    if-eqz v2, :cond_2

    .line 841
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 842
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/OperatorInfo;

    .line 843
    .local v3, "oi":Lcom/android/internal/telephony/OperatorInfo;
    if-eqz v3, :cond_1

    .line 844
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "available networks: i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", plmn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 841
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 849
    .end local v1    # "i":I
    .end local v3    # "oi":Lcom/android/internal/telephony/OperatorInfo;
    :cond_2
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v4, :cond_0

    .line 850
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    invoke-interface {v4, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onNetworkInfoReady(Ljava/util/List;)V

    goto :goto_0

    .line 853
    .end local v2    # "networkInfoArray":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    :cond_3
    const-string v4, " exception happen while getting networks"

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 854
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    if-eqz v4, :cond_0

    .line 855
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mListener:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$INetworkControllerListener;->onNetworkInfoReady(Ljava/util/List;)V

    goto :goto_0

    .line 834
    nop

    :pswitch_data_0
    .packed-switch 0x8c
        :pswitch_0
    .end packed-switch
.end method

.method public registerNetworkManually(Lcom/android/internal/telephony/OperatorInfo;)V
    .locals 2
    .param p1, "oi"    # Lcom/android/internal/telephony/OperatorInfo;

    .prologue
    .line 707
    const-string v0, " registerNetworkManually"

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/PhoneBase;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 709
    return-void
.end method

.method public resumeNetwork()V
    .locals 4

    .prologue
    .line 903
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->getRoamingMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v0

    .line 904
    .local v0, "currentRoamingMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " resumeNetwork:  currentRoamingMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 905
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mModemResumeSessionId:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    .line 906
    return-void
.end method

.method public setIfEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 970
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->enableSuspend(Z)V

    .line 971
    return-void
.end method

.method public setRoamingMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V
    .locals 2
    .param p1, "roamingMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setRoamingMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->logdForController(Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->getRoamingMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    const/16 v1, 0x138

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->setRoaming(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)V
    invoke-static {v0, p1, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1100(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)V

    .line 685
    :goto_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->setState(I)V

    .line 686
    return-void

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController$LteController;->mIrController:Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;

    const/4 v1, 0x0

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->setRoaming(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)V
    invoke-static {v0, p1, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;->access$1100(Lcom/mediatek/internal/telephony/ltedc/svlte/apirat/SvlteIrController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)V

    goto :goto_0
.end method
