.class Lcom/android/internal/telephony/dataconnection/DcController;
.super Lcom/android/internal/util/StateMachine;
.source "DcController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcController$1;,
        Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;
    }
.end annotation


# static fields
.field static final DATA_CONNECTION_ACTIVE_PH_LINK_DORMANT:I = 0x1

.field static final DATA_CONNECTION_ACTIVE_PH_LINK_INACTIVE:I = 0x0

.field static final DATA_CONNECTION_ACTIVE_PH_LINK_UP:I = 0x2

.field static final DATA_CONNECTION_ACTIVE_UNKNOWN:I = 0x7fffffff

.field private static final DATA_CONNECTION_PC_MODEM_CONNECTED:I = 0x3

.field private static final DATA_CONNECTION_PC_MODEM_DISCONNECTED:I = 0x4

.field private static final DBG:Z = true

.field private static final REASON_PC_MODEM_CONNECTED:Ljava/lang/String; = "pcModemConnected"

.field private static final REASON_PC_MODEM_DISCONNECTED:Ljava/lang/String; = "pcModemDisconnected"

.field private static final VDBG:Z


# instance fields
.field private mDcListActiveByCid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field mDcListAll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mDcTesterDeactivateAll:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

.field private mDccDefaultState:Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;

.field private mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

.field mOverallDataConnectionActiveState:I

.field private mPcModemConnected:Z

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p3, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 110
    invoke-direct {p0, p1, p4}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    .line 89
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mOverallDataConnectionActiveState:I

    .line 91
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DcController;Lcom/android/internal/telephony/dataconnection/DcController$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDccDefaultState:Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;

    .line 111
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->setLogRecSize(I)V

    .line 112
    const-string v0, "E ctor"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 113
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 114
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDccDefaultState:Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->addState(Lcom/android/internal/util/State;)V

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDccDefaultState:Lcom/android/internal/telephony/dataconnection/DcController$DccDefaultState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->setInitialState(Lcom/android/internal/util/State;)V

    .line 117
    const-string v0, "X ctor"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcController;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcController;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcTesterDeactivateAll:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/dataconnection/DcController;Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;)Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcController;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcTesterDeactivateAll:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcController;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/dataconnection/DcController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcController;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/dataconnection/DcController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcController;->lr(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/dataconnection/DcController;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcController;->updateDcInfo(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/dataconnection/DcController;Ljava/util/ArrayList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcController;->preCheckDataState(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/dataconnection/DcController;Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcController;
    .param p1, "x1"    # Landroid/net/LinkProperties;
    .param p2, "x2"    # Landroid/net/LinkProperties;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcController;->isIpMatched(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z

    move-result v0

    return v0
.end method

.method private getIfIdFromIfName(Ljava/lang/String;)I
    .locals 5
    .param p1, "ifName"    # Ljava/lang/String;

    .prologue
    .line 671
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IRAT_DcController] getIfIdFromIfName, ifName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 672
    const/4 v1, -0x1

    .line 673
    .local v1, "ifIdInt":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 674
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 675
    .local v2, "ifIdString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IRAT_DcController] updateDcInfo: ifIdString = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 677
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 683
    .end local v2    # "ifIdString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 678
    .restart local v2    # "ifIdString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "[IRAT_DcController] updateDcInfo, the last char of interface id is not a number!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcController;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isIpMatched(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z
    .locals 2
    .param p1, "oldLp"    # Landroid/net/LinkProperties;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    .prologue
    .line 559
    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->isIdenticalAddresses(Landroid/net/LinkProperties;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    const/4 v0, 0x1

    .line 563
    :goto_0
    return v0

    .line 562
    :cond_0
    const-string v0, "isIpMatched: address count is different but matched"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method private lr(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 515
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcController;->logAndAddLogRec(Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method static makeDcc(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;)Lcom/android/internal/telephony/dataconnection/DcController;
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p1, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 121
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcController;

    const-string v1, "Dcc"

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcController;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;)V

    .line 122
    .local v0, "dcc":Lcom/android/internal/telephony/dataconnection/DcController;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcController;->start()V

    .line 123
    return-object v0
.end method

.method private preCheckDataState(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataCallResponse;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "dcsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 576
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preCheckForC2K  active = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 580
    const-string v0, "preCheckForC2K PC Modem enabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 582
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPcModemConnected:Z

    .line 583
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v3, 0x4201d

    const-string v4, "pcModemConnected"

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    .line 594
    :goto_0
    return v0

    .line 586
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 587
    const-string v0, "preCheckForC2K PC Modem disconnected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 588
    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPcModemConnected:Z

    .line 589
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v3, 0x42003

    const-string v4, "pcModemDisconnected"

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    .line 591
    goto :goto_0

    :cond_1
    move v0, v2

    .line 594
    goto :goto_0
.end method

.method private updateDcInfo(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 629
    .local p1, "dcsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataCallResponse;>;"
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 634
    .local v0, "changeCids":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 635
    .local v2, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    .line 636
    .local v6, "newState":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iget-object v7, v6, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcController;->getIfIdFromIfName(Ljava/lang/String;)I

    move-result v5

    .line 637
    .local v5, "ifId":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    .line 638
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getDataConnectionId()I

    move-result v7

    if-ne v7, v5, :cond_3

    .line 639
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[IRAT_DcController] updateDcInfo: ifId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", dc.getCid() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", newState.cid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCid()I

    move-result v7

    iget v8, v6, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    if-eq v7, v8, :cond_3

    .line 642
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, v6, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 649
    .end local v2    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "ifId":I
    .end local v6    # "newState":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :cond_4
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 650
    .local v1, "cid":I
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 651
    .restart local v2    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    if-eqz v2, :cond_5

    .line 655
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->removeActiveDcByCid(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 656
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[IRAT_DcController] updateDcInfo: cid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " change to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 658
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    .line 659
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcController;->addActiveDcByCid(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    goto :goto_2

    .line 662
    .end local v1    # "cid":I
    .end local v2    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[IRAT_DcController] updateDcInfo: mDcListActiveByCid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method addActiveDcByCid(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 2
    .param p1, "dc"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 141
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    if-gez v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addActiveDcByCid dc.mCid < 0 dc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-void
.end method

.method addDc(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 1
    .param p1, "dc"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method dispose()V
    .locals 1

    .prologue
    .line 127
    const-string v0, "dispose: call quiteNow()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcController;->quitNow()V

    .line 129
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 548
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDcListAll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDcListActiveByCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method getDataCallListForSimLoaded()V
    .locals 2

    .prologue
    .line 161
    const-string v0, "getDataCallList"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x4000e

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 164
    return-void
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, "info":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->cmdToString(I)Ljava/lang/String;

    move-result-object v0

    .line 535
    if-nez v0, :cond_0

    .line 536
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->cmdToString(I)Ljava/lang/String;

    move-result-object v0

    .line 538
    :cond_0
    return-object v0
.end method

.method isPcModemConnected()Z
    .locals 1

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPcModemConnected:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcController;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcController;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return-void
.end method

.method removeActiveDcByCid(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 5
    .param p1, "dc"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 148
    const/4 v2, 0x0

    .line 150
    .local v2, "removedDc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    iget v4, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object v2, v0

    .line 151
    if-nez v2, :cond_0

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeActiveDcByCid removedDc=null dc.mCid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/util/ConcurrentModificationException;
    const-string v3, "concurrentModificationException happened!!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method removeDc(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 2
    .param p1, "dc"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDcListAll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListAll:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDcListActiveByCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcListActiveByCid:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updatePhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .param p1, "newPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v3, 0x0

    .line 607
    const-string v0, "DcController, updatePhone"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcController;->log(Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRilConnected(Landroid/os/Handler;)V

    .line 610
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V

    .line 612
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 613
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x40005

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 615
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x40007

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 618
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcTesterDeactivateAll:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    if-eqz v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcController;->mDcTesterDeactivateAll:Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTesterDeactivateAll;->updatePhone(Lcom/android/internal/telephony/PhoneBase;)V

    .line 621
    :cond_1
    return-void
.end method
