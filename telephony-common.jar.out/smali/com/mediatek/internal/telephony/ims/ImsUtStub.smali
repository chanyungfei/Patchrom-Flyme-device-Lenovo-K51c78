.class public Lcom/mediatek/internal/telephony/ims/ImsUtStub;
.super Lcom/android/ims/internal/IImsUt$Stub;
.source "ImsUtStub.java"


# static fields
.field private static final DBG:Z = true

.field static final HTTP_ERROR_CODE_403:I = 0x193

.field static final IMS_UT_EVENT_GET_CB:I = 0x3e8

.field static final IMS_UT_EVENT_GET_CF:I = 0x3e9

.field static final IMS_UT_EVENT_GET_CF_TIME_SLOT:I = 0x3f6

.field static final IMS_UT_EVENT_GET_CLIP:I = 0x3ec

.field static final IMS_UT_EVENT_GET_CLIR:I = 0x3eb

.field static final IMS_UT_EVENT_GET_COLP:I = 0x3ee

.field static final IMS_UT_EVENT_GET_COLR:I = 0x3ed

.field static final IMS_UT_EVENT_GET_CW:I = 0x3ea

.field static final IMS_UT_EVENT_SET_CB:I = 0x3ef

.field static final IMS_UT_EVENT_SET_CF:I = 0x3f0

.field static final IMS_UT_EVENT_SET_CF_TIME_SLOT:I = 0x3f7

.field static final IMS_UT_EVENT_SET_CLIP:I = 0x3f3

.field static final IMS_UT_EVENT_SET_CLIR:I = 0x3f2

.field static final IMS_UT_EVENT_SET_COLP:I = 0x3f5

.field static final IMS_UT_EVENT_SET_COLR:I = 0x3f4

.field static final IMS_UT_EVENT_SET_CW:I = 0x3f1

.field private static final TAG:Ljava/lang/String; = "ImsUtService"

.field private static final mLock:Ljava/lang/Object;

.field private static sRequestId:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/ims/internal/IImsUtListener;

.field private mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    .line 82
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/ims/internal/IImsUt$Stub;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;

    .line 120
    new-instance v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ims/ImsUtStub$1;-><init>(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    .line 115
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mContext:Landroid/content/Context;

    .line 116
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->getInstance()Lcom/android/internal/telephony/MMTelSSTransport;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    .line 117
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->registerUtService(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/ims/ImsUtStub;)Lcom/android/ims/internal/IImsUtListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsUtStub;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/ims/ImsUtStub;Lcom/android/internal/telephony/CallForwardInfo;)Lcom/android/ims/ImsCallForwardInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsUtStub;
    .param p1, "x1"    # Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getImsCallForwardInfo(Lcom/android/internal/telephony/CallForwardInfo;)Lcom/android/ims/ImsCallForwardInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/ims/ImsUtStub;I)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsUtStub;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getConditionFromCFReason(I)I

    move-result v0

    return v0
.end method

.method private getCFActionFromAction(I)I
    .locals 1
    .param p1, "cfAction"    # I

    .prologue
    const/4 v0, 0x0

    .line 600
    packed-switch p1, :pswitch_data_0

    .line 613
    :goto_0
    :pswitch_0
    return v0

    .line 604
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 606
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 608
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 600
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getCFReasonFromCondition(I)I
    .locals 1
    .param p1, "condition"    # I

    .prologue
    const/4 v0, 0x3

    .line 617
    packed-switch p1, :pswitch_data_0

    .line 636
    :goto_0
    :pswitch_0
    return v0

    .line 619
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 621
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 623
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 627
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 629
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 631
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 617
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getConditionFromCFReason(I)I
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 640
    packed-switch p1, :pswitch_data_0

    .line 659
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 642
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 644
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 646
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 648
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 650
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 652
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 654
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 640
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getFacilityFromCBType(I)Ljava/lang/String;
    .locals 1
    .param p1, "cbType"    # I

    .prologue
    .line 571
    packed-switch p1, :pswitch_data_0

    .line 595
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 573
    :pswitch_0
    const-string v0, "AI"

    goto :goto_0

    .line 575
    :pswitch_1
    const-string v0, "AO"

    goto :goto_0

    .line 577
    :pswitch_2
    const-string v0, "OI"

    goto :goto_0

    .line 579
    :pswitch_3
    const-string v0, "OX"

    goto :goto_0

    .line 581
    :pswitch_4
    const-string v0, "IR"

    goto :goto_0

    .line 584
    :pswitch_5
    const-string v0, "ACR"

    goto :goto_0

    .line 586
    :pswitch_6
    const-string v0, "AB"

    goto :goto_0

    .line 588
    :pswitch_7
    const-string v0, "AG"

    goto :goto_0

    .line 590
    :pswitch_8
    const-string v0, "AC"

    goto :goto_0

    .line 593
    :pswitch_9
    const-string v0, "BS_MT"

    goto :goto_0

    .line 571
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private getImsCallForwardInfo(Lcom/android/internal/telephony/CallForwardInfo;)Lcom/android/ims/ImsCallForwardInfo;
    .locals 2
    .param p1, "info"    # Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    .line 663
    new-instance v0, Lcom/android/ims/ImsCallForwardInfo;

    invoke-direct {v0}, Lcom/android/ims/ImsCallForwardInfo;-><init>()V

    .line 664
    .local v0, "imsCfInfo":Lcom/android/ims/ImsCallForwardInfo;
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getConditionFromCFReason(I)I

    move-result v1

    iput v1, v0, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    .line 665
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    iput v1, v0, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    .line 667
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    iput v1, v0, Lcom/android/ims/ImsCallForwardInfo;->mToA:I

    .line 668
    iget-object v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 669
    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iput v1, v0, Lcom/android/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 670
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 568
    return-void
.end method

.method public queryCLIP()I
    .locals 6

    .prologue
    .line 770
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 771
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 772
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 773
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 775
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCLIP(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ec

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 779
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCLIP(Landroid/os/Message;)V

    .line 781
    return v1

    .line 773
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public queryCLIR()I
    .locals 6

    .prologue
    .line 749
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 750
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 751
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 752
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCLIR(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3eb

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 758
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->getCLIR(Landroid/os/Message;)V

    .line 760
    return v1

    .line 752
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public queryCOLP()I
    .locals 6

    .prologue
    .line 812
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 813
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 814
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 815
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCOLP(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ee

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 821
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->getCOLP(Landroid/os/Message;)V

    .line 823
    return v1

    .line 815
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public queryCOLR()I
    .locals 6

    .prologue
    .line 791
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 792
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 793
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 794
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCOLR(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ed

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 800
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->getCOLR(Landroid/os/Message;)V

    .line 802
    return v1

    .line 794
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public queryCallBarring(I)I
    .locals 7
    .param p1, "cbType"    # I

    .prologue
    const/4 v6, 0x0

    .line 682
    sget-object v4, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 683
    :try_start_0
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 684
    .local v2, "requestId":I
    sget v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 685
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    const-string v3, "ImsUtService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryCallBarring(): requestId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getFacilityFromCBType(I)Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, "facility":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 692
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v6, v4, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 694
    return v2

    .line 685
    .end local v0    # "facility":Ljava/lang/String;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "requestId":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .locals 6
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 706
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 707
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 708
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 709
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCallForward(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 715
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getCFReasonFromCondition(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, p2, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 718
    return v1

    .line 709
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public queryCallForwardInTimeSlot(I)I
    .locals 6
    .param p1, "condition"    # I

    .prologue
    .line 1047
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1048
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 1049
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 1050
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCallForwardInTimeSlot(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1057
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getCFReasonFromCondition(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V

    .line 1062
    return v1

    .line 1050
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public queryCallWaiting()I
    .locals 6

    .prologue
    .line 728
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 729
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 730
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 731
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryCallWaiting(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ea

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 737
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCallWaiting(ILandroid/os/Message;)V

    .line 739
    return v1

    .line 731
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setListener(Lcom/android/ims/internal/IImsUtListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/internal/IImsUtListener;

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mListener:Lcom/android/ims/internal/IImsUtListener;

    .line 1014
    return-void
.end method

.method public transact(Landroid/os/Bundle;)I
    .locals 3
    .param p1, "ssInfo"    # Landroid/os/Bundle;

    .prologue
    .line 834
    sget-object v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 835
    :try_start_0
    sget v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 836
    .local v0, "requestId":I
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 837
    monitor-exit v2

    .line 839
    return v0

    .line 837
    .end local v0    # "requestId":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateCLIP(Z)I
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 948
    sget-object v4, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 949
    :try_start_0
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 950
    .local v2, "requestId":I
    sget v5, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 951
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    const-string v4, "ImsUtService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCLIP(): requestId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 957
    .local v0, "enableClip":I
    :goto_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3f3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 958
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->setCLIP(ILandroid/os/Message;)V

    .line 960
    return v2

    .line 951
    .end local v0    # "enableClip":I
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "requestId":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .restart local v2    # "requestId":I
    :cond_0
    move v0, v3

    .line 956
    goto :goto_0
.end method

.method public updateCLIR(I)I
    .locals 6
    .param p1, "clirMode"    # I

    .prologue
    .line 926
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 927
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 928
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 929
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCLIR(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 935
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->setCLIR(ILandroid/os/Message;)V

    .line 937
    return v1

    .line 929
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public updateCOLP(Z)I
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 993
    sget-object v4, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 994
    :try_start_0
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 995
    .local v2, "requestId":I
    sget v5, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 996
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    const-string v4, "ImsUtService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCOLP(): requestId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1002
    .local v0, "enableColp":I
    :goto_0
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3f5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1003
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/telephony/MMTelSSTransport;->setCOLP(ILandroid/os/Message;)V

    .line 1005
    return v2

    .line 996
    .end local v0    # "enableColp":I
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "requestId":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .restart local v2    # "requestId":I
    :cond_0
    move v0, v3

    .line 1001
    goto :goto_0
.end method

.method public updateCOLR(I)I
    .locals 6
    .param p1, "presentation"    # I

    .prologue
    .line 971
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 972
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 973
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 974
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCOLR(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 980
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->setCOLR(ILandroid/os/Message;)V

    .line 982
    return v1

    .line 974
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public updateCallBarring(IZ[Ljava/lang/String;)I
    .locals 7
    .param p1, "cbType"    # I
    .param p2, "enable"    # Z
    .param p3, "barrList"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 853
    sget-object v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 854
    :try_start_0
    sget v6, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 855
    .local v6, "requestId":I
    sget v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 856
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    const-string v0, "ImsUtService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallBarring(): requestId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getFacilityFromCBType(I)Ljava/lang/String;

    move-result-object v1

    .line 862
    .local v1, "facility":Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ef

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v6, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 863
    .local v5, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v4, 0x1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/MMTelSSTransport;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 866
    return v6

    .line 856
    .end local v1    # "facility":Ljava/lang/String;
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "requestId":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateCallForward(IILjava/lang/String;I)I
    .locals 8
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "timeSeconds"    # I

    .prologue
    .line 880
    sget-object v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 881
    :try_start_0
    sget v7, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 882
    .local v7, "requestId":I
    sget v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 883
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    const-string v0, "ImsUtService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallForward(): requestId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 889
    .local v6, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getCFActionFromAction(I)I

    move-result v1

    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getCFReasonFromCondition(I)I

    move-result v2

    const/4 v3, 0x1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 893
    return v7

    .line 883
    .end local v6    # "msg":Landroid/os/Message;
    .end local v7    # "requestId":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateCallForwardInTimeSlot(IILjava/lang/String;I[J)I
    .locals 9
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "timeSeconds"    # I
    .param p5, "timeSlot"    # [J

    .prologue
    .line 1072
    sget-object v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1073
    :try_start_0
    sget v8, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 1074
    .local v8, "requestId":I
    sget v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 1075
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1077
    const-string v0, "ImsUtService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallForwardInTimeSlot(): requestId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1081
    .local v7, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getCFActionFromAction(I)I

    move-result v1

    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->getCFReasonFromCondition(I)I

    move-result v2

    const/4 v3, 0x1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/MMTelSSTransport;->setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;)V

    .line 1086
    return v8

    .line 1075
    .end local v7    # "msg":Landroid/os/Message;
    .end local v8    # "requestId":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateCallWaiting(Z)I
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 904
    sget-object v3, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 905
    :try_start_0
    sget v1, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 906
    .local v1, "requestId":I
    sget v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->sRequestId:I

    .line 907
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    const-string v2, "ImsUtService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallWaiting(): requestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 913
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsUtStub;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, v0}, Lcom/android/internal/telephony/MMTelSSTransport;->setCallWaiting(ZILandroid/os/Message;)V

    .line 915
    return v1

    .line 907
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "requestId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method xcapExceptionToImsReasonInfo(Lcom/mediatek/simservs/xcap/XcapException;)Lcom/android/ims/ImsReasonInfo;
    .locals 5
    .param p1, "xcapEx"    # Lcom/mediatek/simservs/xcap/XcapException;

    .prologue
    const/4 v4, 0x0

    .line 1024
    if-eqz p1, :cond_0

    .line 1025
    const-string v1, "ImsUtService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xcapExceptionToImsReasonInfo(): XcapException: code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/simservs/xcap/XcapException;->getExceptionCodeCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", http error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isConnectionError = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/simservs/xcap/XcapException;->isConnectionError()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v1

    const/16 v2, 0x193

    if-ne v1, v2, :cond_1

    .line 1032
    new-instance v0, Lcom/android/ims/ImsReasonInfo;

    const/16 v1, 0x33e

    invoke-direct {v0, v1, v4}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .line 1037
    .local v0, "reason":Lcom/android/ims/ImsReasonInfo;
    :goto_0
    return-object v0

    .line 1034
    .end local v0    # "reason":Lcom/android/ims/ImsReasonInfo;
    :cond_1
    new-instance v0, Lcom/android/ims/ImsReasonInfo;

    const/16 v1, 0x324

    invoke-direct {v0, v1, v4}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    .restart local v0    # "reason":Lcom/android/ims/ImsReasonInfo;
    goto :goto_0
.end method
