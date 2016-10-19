.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcDefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0

    .prologue
    .line 1439
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DataConnection$1;

    .prologue
    .line 1439
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const v2, 0x4000b

    const/4 v3, 0x0

    .line 1442
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v1, "DcDefaultState: enter"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1445
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1446
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1453
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x4000c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1455
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x4000d

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1459
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcController;->addDc(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1460
    return-void

    .line 1449
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1463
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v1, "DcDefaultState: exit"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1466
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1467
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V

    .line 1472
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRoamingOn(Landroid/os/Handler;)V

    .line 1473
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRoamingOff(Landroid/os/Handler;)V

    .line 1476
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcController;->removeDc(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1478
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1479
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnected()V

    .line 1480
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$302(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 1482
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryAlarmController:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$400(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->dispose()V

    .line 1483
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryAlarmController:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$402(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    .line 1484
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    .line 1485
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 1486
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$502(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 1487
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$602(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 1488
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$102(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/PhoneBase;

    .line 1489
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$702(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 1490
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$802(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 1491
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mUserData:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$902(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$202(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcController;

    .line 1493
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;
    invoke-static {v0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1002(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    .line 1494
    return-void

    .line 1469
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V

    goto/16 :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 28
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1498
    const/16 v22, 0x1

    .line 1502
    .local v22, "retVal":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcDefault msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RefCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1505
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcDefaultState: shouldn\'t happen but ignore msg.what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1778
    :cond_0
    :goto_0
    return v22

    .line 1507
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disconnecting to previous connection mAc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x11002

    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto :goto_0

    .line 1512
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$302(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 1513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 1514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "DcDefaultState: FULL_CONNECTION reply connected"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v4, 0x11002

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mId:I
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1100(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v6

    const-string v7, "hi"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1522
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "DcDefault: CMD_CHANNEL_DISCONNECTED before quiting call dump"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->dumpToLog()V
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1200(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 1526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->quit()V
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1300(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    goto/16 :goto_0

    .line 1530
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getIsInactive()Z

    move-result v27

    .line 1531
    .local v27, "val":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQ_IS_INACTIVE  isInactive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v4, 0x41001

    if-eqz v27, :cond_2

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4, v2}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1536
    .end local v27    # "val":Z
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCid()I

    move-result v10

    .line 1537
    .local v10, "cid":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQ_GET_CID  cid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x41003

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v10}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 1542
    .end local v10    # "cid":I
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v8

    .line 1543
    .local v8, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQ_GET_APNSETTING  mApnSetting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x41005

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v8}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1548
    .end local v8    # "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCopyLinkProperties()Landroid/net/LinkProperties;

    move-result-object v16

    .line 1549
    .local v16, "lp":Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQ_GET_LINK_PROPERTIES linkProperties"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x41007

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1554
    .end local v16    # "lp":Landroid/net/LinkProperties;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/net/ProxyInfo;

    .line 1555
    .local v21, "proxy":Landroid/net/ProxyInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQ_SET_LINK_PROPERTIES_HTTP_PROXY proxy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setLinkPropertiesHttpProxy(Landroid/net/ProxyInfo;)V

    .line 1557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x41009

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 1561
    .end local v21    # "proxy":Landroid/net/ProxyInfo;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCopyNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v17

    .line 1562
    .local v17, "nc":Landroid/net/NetworkCapabilities;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQ_GET_NETWORK_CAPABILITIES networkCapabilities"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x4100b

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1567
    .end local v17    # "nc":Landroid/net/NetworkCapabilities;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "DcDefaultState: msg.what=REQ_RESET"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1400(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 1573
    :sswitch_9
    const/16 v20, 0x0

    .line 1574
    .local v20, "propertiesArray":[Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConcatenatedBearers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1575
    .local v12, "concatenatedNum":I
    if-lez v12, :cond_4

    .line 1576
    new-array v0, v12, [Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    move-object/from16 v20, v0

    .line 1577
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    if-ge v15, v12, :cond_3

    .line 1578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConcatenatedBearers:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    aput-object v2, v20, v15

    .line 1577
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1580
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQ_GET_CONCATENATED_PROPERTIES total="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1582
    .end local v15    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x4101f

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1586
    .end local v12    # "concatenatedNum":I
    .end local v20    # "propertiesArray":[Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQ_GET_PCSCF "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x41021

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPcscfInfo:Lcom/mediatek/internal/telephony/PcscfInfo;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1592
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQ_GET_DEFAULT_BEARER_PROPERTIES "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultBearer:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x41023

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultBearer:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1598
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REQ_GET_LAST_DATA_CONN_FAIL_CAUSE last fail cause is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$800(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x41027

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$800(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1604
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1605
    .local v9, "ar":Landroid/os/AsyncResult;
    iget-object v0, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/Message;

    .line 1606
    .local v19, "onCompletedMsg":Landroid/os/Message;
    if-eqz v19, :cond_0

    .line 1607
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Not in active state"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-static {v0, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1608
    invoke-virtual/range {v19 .. v19}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1614
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v19    # "onCompletedMsg":Landroid/os/Message;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "REQ_GET_DEFAULT_BEARER_DEACTIVATE_CID_ARRAY"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1615
    const/4 v11, 0x0

    .line 1616
    .local v11, "cidArray":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDeactivateCidArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 1617
    .local v24, "size":I
    if-lez v24, :cond_5

    .line 1618
    move/from16 v0, v24

    new-array v11, v0, [I

    .line 1619
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_3
    move/from16 v0, v24

    if-ge v15, v0, :cond_5

    .line 1620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDeactivateCidArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v11, v15

    .line 1619
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 1623
    .end local v15    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x41025

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v11}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1627
    .end local v11    # "cidArray":[I
    .end local v24    # "size":I
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "DcDefaultState: msg.what=EVENT_CONNECT, fail not expected"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1628
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1629
    .local v13, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const/4 v4, 0x0

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V
    invoke-static {v2, v13, v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1600(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V

    goto/16 :goto_0

    .line 1634
    .end local v13    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcDefaultState deferring msg.what=EVENT_DISCONNECT RefCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p1

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1700(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1642
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcDefaultState deferring msg.what=EVENT_DISCONNECT_ALL RefCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p1

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1800(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1649
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "DcDefaultState EVENT_TEAR_DOWN_NOW"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->deactivateDataCall(IILandroid/os/Message;)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1900(Lcom/android/internal/telephony/dataconnection/DataConnection;IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1656
    :sswitch_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcDefaultState ignore EVENT_LOST_CONNECTION tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":mTag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1658
    .local v23, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, v23

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->logAndAddLogRec(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2000(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1664
    .end local v23    # "s":Ljava/lang/String;
    :sswitch_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcDefaultState ignore EVENT_RETRY_CONNECTION tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":mTag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v3, v3, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1666
    .restart local v23    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, v23

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->logAndAddLogRec(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2100(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1671
    .end local v23    # "s":Ljava/lang/String;
    :sswitch_15
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1672
    .restart local v9    # "ar":Landroid/os/AsyncResult;
    iget-object v14, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Landroid/util/Pair;

    .line 1673
    .local v14, "drsRatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v2, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I
    invoke-static {v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2202(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I

    .line 1674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2300(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v3

    iget-object v2, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v3, v2, :cond_6

    .line 1675
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v2, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->updateTcpBufferSizes(I)V
    invoke-static {v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2400(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V

    .line 1677
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v2, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # setter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I
    invoke-static {v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2302(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I

    .line 1679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcDefaultState: EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED drs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2200(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mRilRat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2300(Lcom/android/internal/telephony/dataconnection/DataConnection;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v25

    .line 1689
    .local v25, "ss":Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 1691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getSvlteServiceState()Landroid/telephony/ServiceState;

    move-result-object v26

    .line 1693
    .local v26, "svlteSs":Landroid/telephony/ServiceState;
    if-eqz v26, :cond_7

    .line 1694
    move-object/from16 v25, v26

    .line 1697
    .end local v26    # "svlteSs":Landroid/telephony/ServiceState;
    :cond_7
    invoke-virtual/range {v25 .. v25}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v18

    .line 1699
    .local v18, "networkType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 1701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->makeNetworkCapabilities()Landroid/net/NetworkCapabilities;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2700(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 1703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 1704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$700(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    goto/16 :goto_0

    .line 1709
    .end local v9    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "drsRatPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v18    # "networkType":I
    .end local v25    # "ss":Landroid/telephony/ServiceState;
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    goto/16 :goto_0

    .line 1713
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    goto/16 :goto_0

    .line 1718
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "DcDefaultState: ignore EVENT_IPV4_ADDRESS_REMOVED not in ActiveState"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1724
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "DcDefaultState: ignore EVENT_IPV6_ADDRESS_REMOVED not in ActiveState"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1730
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "DcDefaultState: ignore EVENT_IPV4_ADDRESS_UPDATED not in ActiveState"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1736
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "DcDefaultState: ignore EVENT_IPV6_ADDRESS_UPDATED not in ActiveState"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1742
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcDefaultState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1749
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcDefaultState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1752
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataConnection$AddressInfo;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAddress(Lcom/android/internal/telephony/dataconnection/DataConnection$AddressInfo;)V
    invoke-static {v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2800(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$AddressInfo;)V

    goto/16 :goto_0

    .line 1757
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcDefaultState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1760
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataConnection$AddressInfo;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyUseDhcpAddress(Lcom/android/internal/telephony/dataconnection/DataConnection$AddressInfo;)V
    invoke-static {v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$2900(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$AddressInfo;)V

    goto/16 :goto_0

    .line 1765
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string v3, "DcDefaultState: EVENT_UPDATE_PHONE"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1767
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->onUpdatePhone(Lcom/android/internal/telephony/PhoneBase;)V

    .line 1768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1400(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$3000(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 1505
    nop

    :sswitch_data_0
    .sparse-switch
        0x11001 -> :sswitch_0
        0x11004 -> :sswitch_1
        0x40000 -> :sswitch_f
        0x40004 -> :sswitch_10
        0x40006 -> :sswitch_11
        0x40008 -> :sswitch_12
        0x40009 -> :sswitch_13
        0x4000a -> :sswitch_14
        0x4000b -> :sswitch_15
        0x4000c -> :sswitch_16
        0x4000d -> :sswitch_17
        0x4000f -> :sswitch_d
        0x40012 -> :sswitch_1f
        0x40013 -> :sswitch_18
        0x40014 -> :sswitch_19
        0x40015 -> :sswitch_1a
        0x40016 -> :sswitch_1b
        0x40017 -> :sswitch_1c
        0x40018 -> :sswitch_1d
        0x40019 -> :sswitch_1e
        0x41000 -> :sswitch_2
        0x41002 -> :sswitch_3
        0x41004 -> :sswitch_4
        0x41006 -> :sswitch_5
        0x41008 -> :sswitch_6
        0x4100a -> :sswitch_7
        0x4100c -> :sswitch_8
        0x4101e -> :sswitch_9
        0x41020 -> :sswitch_a
        0x41022 -> :sswitch_b
        0x41024 -> :sswitch_e
        0x41026 -> :sswitch_c
    .end sparse-switch
.end method
