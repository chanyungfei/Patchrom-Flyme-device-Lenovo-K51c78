.class public final Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;
.super Ljava/lang/Object;
.source "GsmCallTrackerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$1;,
        Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;
    }
.end annotation


# static fields
.field protected static final EVENT_CALL_INFO_INDICATION:I = 0x21

.field protected static final EVENT_CALL_STATE_CHANGE:I = 0x2

.field protected static final EVENT_CALL_WAITING_INFO_CDMA:I = 0xf

.field protected static final EVENT_CDMA_CALL_ACCEPTED:I = 0x1b

.field protected static final EVENT_CDMA_DIAL_THREEWAY_DELAY:I = 0x1c

.field protected static final EVENT_CNAP_INDICATION:I = 0x19

.field protected static final EVENT_CONFERENCE_RESULT:I = 0xb

.field protected static final EVENT_DIAL_CALL_RESULT:I = 0x16

.field protected static final EVENT_ECONF_RESULT_INDICATION:I = 0x1f

.field protected static final EVENT_ECONF_SRVCC_INDICATION:I = 0x1e

.field protected static final EVENT_ECT_RESULT:I = 0xd

.field protected static final EVENT_EXIT_ECM_RESPONSE_CDMA:I = 0xe

.field protected static final EVENT_EXIT_ECM_RESPONSE_DIAL_THREEWAY:I = 0x1d

.field protected static final EVENT_GET_LAST_CALL_FAIL_CAUSE:I = 0x5

.field protected static final EVENT_HANG_UP_RESULT:I = 0x15

.field protected static final EVENT_INCOMING_CALL_INDICATION:I = 0x18

.field protected static final EVENT_OPERATION_COMPLETE:I = 0x4

.field protected static final EVENT_POLL_CALLS_RESULT:I = 0x1

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x9

.field protected static final EVENT_RADIO_NOT_AVAILABLE:I = 0xa

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x17

.field protected static final EVENT_REPOLL_AFTER_DELAY:I = 0x3

.field protected static final EVENT_RETRIEVE_HELD_CALL_RESULT:I = 0x20

.field protected static final EVENT_SEPARATE_RESULT:I = 0xc

.field protected static final EVENT_SPEECH_CODEC_INFO:I = 0x1a

.field protected static final EVENT_SWITCH_RESULT:I = 0x8

.field protected static final EVENT_THREE_WAY_DIAL_BLANK_FLASH:I = 0x14

.field protected static final EVENT_THREE_WAY_DIAL_L2_RESULT_CDMA:I = 0x10

.field static final LOG_TAG:Ljava/lang/String; = "GsmCallTracker"

.field private static final MTK_SWITCH_ANTENNA_SUPPORT:Z


# instance fields
.field private hasPendingHangupRequest:Z

.field public isFullLock:Z

.field public isInLock:Z

.field private mContainForwardingAddress:Z

.field private mContext:Landroid/content/Context;

.field private mDmAgent:Lcom/mediatek/common/dm/DmAgent;

.field private mForwardingAddress:Ljava/lang/String;

.field private mForwardingAddressCallId:I

.field public mIsRejectedByMoms:Z

.field private mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

.field public needHangupMOCall:Z

.field public needHangupMTCall:Z

.field private pendingHangupRequest:I

.field private pendingMTCallId:I

.field private pendingMTSeqNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 142
    const-string v0, "ro.mtk_switch_antenna"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->MTK_SWITCH_ANTENNA_SUPPORT:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmCallTracker;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tracker"    # Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mIsRejectedByMoms:Z

    .line 117
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isInLock:Z

    .line 118
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isFullLock:Z

    .line 119
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMOCall:Z

    .line 120
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMTCall:Z

    .line 127
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    .line 128
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    .line 131
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    .line 132
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    .line 136
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContainForwardingAddress:Z

    .line 137
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    .line 138
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddressCallId:I

    .line 148
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContext:Landroid/content/Context;

    .line 149
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 152
    const-string v3, "DmAgent"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 153
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/dm/DmAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mDmAgent:Lcom/mediatek/common/dm/DmAgent;

    .line 155
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$1;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.mediatek.dm.LAWMO_LOCK"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v3, "com.mediatek.ppl.NOTIFY_LOCK"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v3, "com.mediatek.ppl.NOTIFY_UNLOCK"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 164
    .local v2, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->DmUpdateStatus()V

    .line 166
    return-void
.end method

.method private DmUpdateStatus()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mDmAgent:Lcom/mediatek/common/dm/DmAgent;

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mDmAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v1}, Lcom/mediatek/common/dm/DmAgent;->isLockFlagSet()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isInLock:Z

    .line 307
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mDmAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v1}, Lcom/mediatek/common/dm/DmAgent;->getLockType()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isFullLock:Z

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInLock = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isInLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFullLock = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isFullLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mDmAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v0}, Lcom/mediatek/common/dm/DmAgent;->isHangMoCallLocking()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMOCall:Z

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mDmAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v0}, Lcom/mediatek/common/dm/DmAgent;->isHangMtCallLocking()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMTCall:Z

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needHangupMOCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMOCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needHangupMTCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMTCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :cond_0
    :goto_1
    return-void

    .line 307
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->DmUpdateStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)Lcom/android/internal/telephony/gsm/GsmCallTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    return-object v0
.end method

.method private shouldNotifyMtCall()Z
    .locals 8

    .prologue
    .line 660
    sget-boolean v5, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->MTK_SWITCH_ANTENNA_SUPPORT:Z

    if-eqz v5, :cond_1

    .line 661
    const-string v5, "GsmCallTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shouldNotifyMtCall, mTracker.mPhone:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 663
    .local v4, "phones":[Lcom/android/internal/telephony/Phone;
    move-object v0, v4

    .local v0, "arr$":[Lcom/android/internal/telephony/Phone;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 664
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    const-string v5, "GsmCallTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "phone:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eq v3, v5, :cond_0

    .line 666
    const-string v5, "GsmCallTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shouldNotifyMtCall, another phone active, phone:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const/4 v5, 0x0

    .line 672
    .end local v0    # "arr$":[Lcom/android/internal/telephony/Phone;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "phones":[Lcom/android/internal/telephony/Phone;
    :goto_1
    return v5

    .line 663
    .restart local v0    # "arr$":[Lcom/android/internal/telephony/Phone;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v4    # "phones":[Lcom/android/internal/telephony/Phone;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 672
    .end local v0    # "arr$":[Lcom/android/internal/telephony/Phone;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "phones":[Lcom/android/internal/telephony/Phone;
    :cond_1
    const/4 v5, 0x1

    goto :goto_1
.end method


# virtual methods
.method public CallIndicationEnd()V
    .locals 3

    .prologue
    .line 625
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 626
    .local v0, "pid":I
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 627
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current priority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 630
    :cond_0
    return-void
.end method

.method public CallIndicationGetId()I
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    return v0
.end method

.method public CallIndicationGetSeqNo()I
    .locals 1

    .prologue
    .line 495
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    return v0
.end method

.method public CallIndicationProcess(Landroid/os/AsyncResult;)V
    .locals 14
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 499
    const/4 v7, 0x0

    .line 500
    .local v7, "mode":I
    iget-object v10, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [Ljava/lang/String;

    move-object v6, v10

    check-cast v6, [Ljava/lang/String;

    .line 501
    .local v6, "incomingCallInfo":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 502
    .local v1, "callId":I
    const/4 v10, 0x3

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 503
    .local v2, "callMode":I
    const/4 v10, 0x4

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 505
    .local v8, "seqNumber":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CallIndicationProcess "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " pendingMTCallId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " pendingMTSeqNum "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 509
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v11, "persist.radio.terminal-based.cw"

    const-string v12, "disabled_tbcw"

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 512
    .local v9, "tbcwMode":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-nez v10, :cond_2

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 514
    .local v5, "fgState":Lcom/android/internal/telephony/Call$State;
    :goto_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-nez v10, :cond_3

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 517
    .local v0, "bgState":Lcom/android/internal/telephony/Call$State;
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PROPERTY_TERMINAL_BASED_CALL_WAITING_MODE = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , ForgroundCall State = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , BackgroundCall State = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 520
    const-string v10, "enabled_tbcw_off"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v10, :cond_0

    sget-object v10, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v10, :cond_4

    .line 522
    :cond_0
    const-string v10, "PROPERTY_TERMINAL_BASED_CALL_WAITING_MODE = TERMINAL_BASED_CALL_WAITING_ENABLED_OFF. Reject the call as UDUB "

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 525
    const/4 v7, 0x1

    .line 526
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v11, 0x0

    invoke-interface {v10, v7, v1, v8, v11}, Lcom/android/internal/telephony/CommandsInterface;->setCallIndication(IIILandroid/os/Message;)V

    .line 592
    :cond_1
    :goto_2
    return-void

    .line 512
    .end local v0    # "bgState":Lcom/android/internal/telephony/Call$State;
    .end local v5    # "fgState":Lcom/android/internal/telephony/Call$State;
    :cond_2
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    goto :goto_0

    .line 514
    .restart local v5    # "fgState":Lcom/android/internal/telephony/Call$State;
    :cond_3
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    goto :goto_1

    .line 535
    .restart local v0    # "bgState":Lcom/android/internal/telephony/Call$State;
    :cond_4
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    .line 536
    const/4 v10, 0x5

    aget-object v10, v6, v10

    if-eqz v10, :cond_5

    const/4 v10, 0x5

    aget-object v10, v6, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 538
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContainForwardingAddress:Z

    .line 539
    const/4 v10, 0x5

    aget-object v10, v6, v10

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    .line 540
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddressCallId:I

    .line 541
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EAIC message contains forwarding address - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 546
    :cond_5
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v10, v11, :cond_6

    .line 547
    const/4 v7, 0x1

    .line 553
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->MobileManagermentResetIsBlocking()V

    .line 554
    if-nez v7, :cond_8

    .line 555
    const/4 v10, 0x1

    aget-object v10, v6, v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v11

    int-to-long v12, v11

    invoke-virtual {p0, v10, v2, v12, v13}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->MobileManagermentQueryPermission(Ljava/lang/String;IJ)V

    .line 556
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->MobileManagermentGetIsBlocking()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->shouldNotifyMtCall()Z

    move-result v10

    if-nez v10, :cond_a

    .line 557
    :cond_7
    const/4 v7, 0x1

    .line 566
    :cond_8
    :goto_3
    if-nez v7, :cond_9

    .line 567
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    .line 568
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    .line 569
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v10}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 570
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notify mVoiceCallIncomingIndicationRegistrants "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 574
    :cond_9
    const/4 v10, 0x1

    if-ne v7, v10, :cond_1

    .line 575
    new-instance v4, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v4}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 576
    .local v4, "dc":Lcom/android/internal/telephony/DriverCall;
    const/4 v10, 0x1

    iput-boolean v10, v4, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 577
    iput v1, v4, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 578
    sget-object v10, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    iput-object v10, v4, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 580
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v11, 0x0

    invoke-interface {v10, v7, v1, v8, v11}, Lcom/android/internal/telephony/CommandsInterface;->setCallIndication(IIILandroid/os/Message;)V

    .line 582
    const/4 v10, 0x1

    iput-boolean v10, v4, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 583
    const/4 v10, 0x1

    aget-object v10, v6, v10

    iput-object v10, v4, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 584
    const/4 v10, 0x1

    iput v10, v4, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 585
    const/4 v10, 0x2

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 586
    iget-object v10, v4, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v11, v4, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v10, v11}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 588
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {v3, v10, v4, v11, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    .line 589
    .local v3, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/android/internal/telephony/gsm/GsmConnection;->onReplaceDisconnect(I)V

    goto/16 :goto_2

    .line 560
    .end local v3    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v4    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_a
    const/4 v7, 0x0

    goto :goto_3
.end method

.method public CallIndicationResponse(Z)V
    .locals 7
    .param p1, "accept"    # Z

    .prologue
    const/4 v6, 0x0

    .line 595
    const/4 v0, 0x0

    .line 597
    .local v0, "mode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIncomingCallIndicationResponse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pendingMTCallId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pendingMTSeqNum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 599
    if-eqz p1, :cond_1

    .line 600
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 602
    .local v1, "pid":I
    const/4 v0, 0x0

    .line 603
    const/16 v2, -0xa

    invoke-static {v1, v2}, Landroid/os/Process;->setThreadPriority(II)V

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adjust the priority of process - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 609
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 610
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContainForwardingAddress:Z

    .line 617
    .end local v1    # "pid":I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    const/4 v5, 0x0

    invoke-interface {v2, v0, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setCallIndication(IIILandroid/os/Message;)V

    .line 618
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    .line 619
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    .line 620
    return-void

    .line 615
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public DmCheckIfCallCanComing(Lcom/android/internal/telephony/gsm/GsmConnection;)Z
    .locals 3
    .param p1, "c"    # Lcom/android/internal/telephony/gsm/GsmConnection;

    .prologue
    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isInLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isFullLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isFullLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 320
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isInLock:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isFullLock:Z

    if-eqz v1, :cond_0

    .line 321
    const-string v1, "hang up MT call because of in DM lock state"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    const/4 v1, 0x0

    .line 330
    :goto_1
    return v1

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "GsmCallTracker"

    const-string v2, "unexpected error on hangup"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    .end local v0    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public ForceReleaseAllConnection(Lcom/android/internal/telephony/gsm/GsmCall;)Z
    .locals 5
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;

    .prologue
    .line 388
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->ForceReleaseConnection(Lcom/android/internal/telephony/gsm/GsmCall;Lcom/android/internal/telephony/gsm/GsmCall;)Z

    move-result v1

    .line 389
    .local v1, "forceReleaseFg":Z
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->ForceReleaseConnection(Lcom/android/internal/telephony/gsm/GsmCall;Lcom/android/internal/telephony/gsm/GsmCall;)Z

    move-result v0

    .line 390
    .local v0, "forceReleaseBg":Z
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->ForceReleaseConnection(Lcom/android/internal/telephony/gsm/GsmCall;Lcom/android/internal/telephony/gsm/GsmCall;)Z

    move-result v2

    .line 393
    .local v2, "forceReleaseRing":Z
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    .line 394
    :cond_0
    const-string v3, "GsmCallTracker"

    const-string v4, "hangup(GsmCall)Hang up disconnecting call, return directly"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v3, 0x1

    .line 398
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public ForceReleaseConnection(Lcom/android/internal/telephony/gsm/GsmCall;Lcom/android/internal/telephony/gsm/GsmCall;)Z
    .locals 5
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;
    .param p2, "hangupCall"    # Lcom/android/internal/telephony/gsm/GsmCall;

    .prologue
    .line 374
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 375
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 376
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 377
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v3, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->forceReleaseCall(ILandroid/os/Message;)V

    .line 375
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    if-ne p1, p2, :cond_1

    .line 381
    const/4 v2, 0x1

    .line 384
    .end local v1    # "i":I
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public ForceReleaseNotRingingConnection(Lcom/android/internal/telephony/gsm/GsmCall;)Z
    .locals 5
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;

    .prologue
    const/4 v4, 0x1

    .line 402
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->ForceReleaseConnection(Lcom/android/internal/telephony/gsm/GsmCall;Lcom/android/internal/telephony/gsm/GsmCall;)Z

    move-result v1

    .line 403
    .local v1, "forceReleaseFg":Z
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->ForceReleaseConnection(Lcom/android/internal/telephony/gsm/GsmCall;Lcom/android/internal/telephony/gsm/GsmCall;)Z

    move-result v0

    .line 406
    .local v0, "forceReleaseBg":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 407
    :cond_0
    const-string v2, "GsmCallTracker"

    const-string v3, "hangup(GsmCall)Hang up disconnecting call, return directly"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_1
    return v4
.end method

.method LogState()V
    .locals 7

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "callId":I
    const/4 v1, 0x0

    .line 253
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/4 v3, 0x7

    .local v3, "s":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 254
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v4, v4, v2

    if-eqz v4, :cond_0

    .line 255
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    add-int/lit8 v0, v4, 0x1

    .line 256
    add-int/lit8 v1, v1, 0x1

    .line 257
    const-string v4, "GsmCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "* conn id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " existed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    :cond_1
    const-string v4, "GsmCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "* GsmCT has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " connection"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void
.end method

.method public LogerMessage(I)V
    .locals 1
    .param p1, "msgType"    # I

    .prologue
    .line 174
    packed-switch p1, :pswitch_data_0

    .line 242
    :pswitch_0
    const-string v0, "handle XXXXX"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void

    .line 176
    :pswitch_1
    const-string v0, "handle EVENT_POLL_CALLS_RESULT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :pswitch_2
    const-string v0, "handle EVENT_CALL_STATE_CHANGE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :pswitch_3
    const-string v0, "handle EVENT_REPOLL_AFTER_DELAY"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :pswitch_4
    const-string v0, "handle EVENT_OPERATION_COMPLETE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :pswitch_5
    const-string v0, "handle EVENT_GET_LAST_CALL_FAIL_CAUSE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :pswitch_6
    const-string v0, "handle EVENT_SWITCH_RESULT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :pswitch_7
    const-string v0, "handle EVENT_RADIO_AVAILABLE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :pswitch_8
    const-string v0, "handle EVENT_RADIO_NOT_AVAILABLE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :pswitch_9
    const-string v0, "handle EVENT_CONFERENCE_RESULT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :pswitch_a
    const-string v0, "handle EVENT_SEPARATE_RESULT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :pswitch_b
    const-string v0, "handle EVENT_ECT_RESULT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :pswitch_c
    const-string v0, "handle EVENT_HANG_UP_RESULT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :pswitch_d
    const-string v0, "handle EVENT_DIAL_CALL_RESULT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :pswitch_e
    const-string v0, "handle EVENT_INCOMING_CALL_INDICATION"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :pswitch_f
    const-string v0, "handle EVENT_RADIO_OFF_OR_NOT_AVAILABLE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :pswitch_10
    const-string v0, "handle EVENT_CNAP_INDICATION"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_10
    .end packed-switch
.end method

.method public MobileManagermentGetIsBlocking()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mIsRejectedByMoms:Z

    return v0
.end method

.method public MobileManagermentQueryPermission(Ljava/lang/String;IJ)V
    .locals 7
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "CallMode"    # I
    .param p3, "subId"    # J

    .prologue
    const/4 v4, 0x0

    .line 267
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 269
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    if-nez v3, :cond_0

    .line 270
    const-string v3, "mobile"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    .line 273
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInterceptionEnabledSetting = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v4}, Lcom/mediatek/common/mom/IMobileManagerService;->getInterceptionEnabledSetting()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 274
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v3}, Lcom/mediatek/common/mom/IMobileManagerService;->getInterceptionEnabledSetting()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 275
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 276
    .local v1, "parameter":Landroid/os/Bundle;
    const-string v3, "phoneNumber"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v3, "callType"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 278
    const-string v3, "slotId"

    long-to-int v4, p3

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v5}, Lcom/mediatek/common/mom/IMobileManagerService;->triggerManagerApListener(ILandroid/os/Bundle;I)I

    move-result v2

    .line 280
    .local v2, "result":I
    if-nez v2, :cond_2

    .line 281
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mIsRejectedByMoms:Z

    .line 291
    .end local v1    # "parameter":Landroid/os/Bundle;
    .end local v2    # "result":I
    :cond_1
    :goto_0
    return-void

    .line 283
    .restart local v1    # "parameter":Landroid/os/Bundle;
    .restart local v2    # "result":I
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mIsRejectedByMoms:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    .end local v1    # "parameter":Landroid/os/Bundle;
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MoMS, Suppressing notification faild!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mIsRejectedByMoms:Z

    goto :goto_0
.end method

.method public MobileManagermentResetIsBlocking()V
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mIsRejectedByMoms:Z

    .line 295
    return-void
.end method

.method public PendingHangupRequestDec()V
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    if-eqz v0, :cond_0

    .line 474
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    .line 475
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    if-nez v0, :cond_0

    .line 476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    .line 479
    :cond_0
    return-void
.end method

.method public PendingHangupRequestInc()V
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    .line 469
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    .line 470
    return-void
.end method

.method public PendingHangupRequestReset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 482
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    .line 483
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    .line 484
    return-void
.end method

.method protected PendingHangupRequestUpdate()V
    .locals 2

    .prologue
    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePendingHangupRequest - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    if-eqz v0, :cond_0

    .line 458
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    if-eqz v0, :cond_0

    .line 459
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    .line 460
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    if-nez v0, :cond_0

    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    .line 465
    :cond_0
    return-void
.end method

.method public clearForwardingAddressVariables(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 637
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContainForwardingAddress:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddressCallId:I

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    .line 639
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContainForwardingAddress:Z

    .line 640
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    .line 641
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddressCallId:I

    .line 643
    :cond_0
    return-void
.end method

.method protected getCurrentTotalConnections()I
    .locals 3

    .prologue
    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    .line 448
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 449
    add-int/lit8 v0, v0, 0x1

    .line 447
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 452
    :cond_1
    return v0
.end method

.method public hangupBgConnectionByIndex(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Z

    move-result v0

    return v0
.end method

.method public hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Z
    .locals 6
    .param p1, "c"    # Lcom/android/internal/telephony/gsm/GsmCall;
    .param p2, "index"    # I

    .prologue
    .line 415
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 416
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 417
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 419
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 420
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, p2, v5}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    const/4 v4, 0x1

    .line 429
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :goto_1
    return v4

    .line 423
    .restart local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :catch_0
    move-exception v2

    .line 426
    .local v2, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v4, "GsmCallTracker"

    const-string v5, "GsmCallTracker hangupConnectionByIndex() on absent connection "

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .end local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 429
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public hangupFgConnectionByIndex(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Z

    move-result v0

    return v0
.end method

.method public hangupRingingConnectionByIndex(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Z

    move-result v0

    return v0
.end method

.method public hasPendingHangupRequest()Z
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    return v0
.end method

.method log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 169
    const-string v0, "GsmCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CC][GsmCT][Helper] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method public setForwardingAddressToConnection(ILcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 649
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContainForwardingAddress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddressCallId:I

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    .line 652
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/Connection;->setForwardingAddress(Ljava/lang/String;)V

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Store forwarding address - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get forwarding address - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getForwardingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->clearForwardingAddressVariables(I)V

    .line 657
    :cond_0
    return-void
.end method
