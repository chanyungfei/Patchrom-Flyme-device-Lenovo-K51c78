.class public Lcom/android/internal/telephony/cdma/CdmaConnection;
.super Lcom/android/internal/telephony/Connection;
.source "CdmaConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaConnection$1;,
        Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;
    }
.end annotation


# static fields
.field static final EVENT_DTMF_DONE:I = 0x1

.field static final EVENT_NEXT_POST_DIAL:I = 0x3

.field static final EVENT_PAUSE_DONE:I = 0x2

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "CdmaConnection"

.field private static final MO_CALL_VIBRATE_TIME:I = 0x12c

.field static final PAUSE_DELAY_MILLIS:I = 0x7d0

.field private static final VDBG:Z = false

.field static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field mCause:I

.field mDisconnectTime:J

.field mDisconnected:Z

.field mHandler:Landroid/os/Handler;

.field mIndex:I

.field mIsRealConnected:Z

.field mIsVideo:Z

.field mNextPostDialChar:I

.field mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

.field mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field mPostDialString:Ljava/lang/String;

.field mPreciseCause:I

.field mRealAcceptTime:J


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/cdma/CdmaCallTracker;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;
    .param p3, "ct"    # Lcom/android/internal/telephony/cdma/CdmaCallTracker;
    .param p4, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 72
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    .line 73
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 74
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPreciseCause:I

    .line 124
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->createWakeLock(Landroid/content/Context;)V

    .line 125
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->acquireWakeLock()V

    .line 127
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 128
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/cdma/CdmaConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    .line 130
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    .line 132
    iget-boolean v0, p2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsIncoming:Z

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCreateTime:J

    .line 134
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    .line 135
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapNamePresentation:I

    .line 136
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNumberPresentation:I

    .line 138
    iput p4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    .line 140
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, p0, p2}, Lcom/android/internal/telephony/cdma/CdmaCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mRealAcceptTime:J

    .line 146
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cw"    # Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    .param p3, "ct"    # Lcom/android/internal/telephony/cdma/CdmaCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/cdma/CdmaCall;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 192
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 72
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    .line 73
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 74
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPreciseCause:I

    .line 193
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->createWakeLock(Landroid/content/Context;)V

    .line 194
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->acquireWakeLock()V

    .line 196
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 197
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/cdma/CdmaConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    .line 198
    iget-object v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    .line 199
    iget v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNumberPresentation:I

    .line 200
    iget-object v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    .line 201
    iget v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapNamePresentation:I

    .line 202
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsIncoming:Z

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCreateTime:J

    .line 205
    iput-wide v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConnectTime:J

    .line 206
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 207
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 210
    const-string v0, "CdmaConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create for call waiting, mAddress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iput-wide v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mRealAcceptTime:J

    .line 213
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "ct"    # Lcom/android/internal/telephony/cdma/CdmaCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/cdma/CdmaCall;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 150
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 72
    iput v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    .line 73
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 74
    iput v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPreciseCause:I

    .line 151
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->createWakeLock(Landroid/content/Context;)V

    .line 152
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->acquireWakeLock()V

    .line 154
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 155
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/cdma/CdmaConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    .line 157
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDialString:Ljava/lang/String;

    .line 158
    const-string v0, "CdmaConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CDMAConn] CdmaConnection: dialString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->formatDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 160
    const-string v0, "CdmaConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CDMAConn] CdmaConnection:formated dialString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    .line 163
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    .line 165
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    .line 167
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsIncoming:Z

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    .line 169
    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapNamePresentation:I

    .line 170
    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNumberPresentation:I

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCreateTime:J

    .line 173
    if-eqz p4, :cond_0

    .line 174
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 177
    iget-object v0, p4, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    .line 178
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 185
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsRealConnected:Z

    .line 186
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mRealAcceptTime:J

    .line 188
    return-void

    .line 180
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaConnection;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 2

    .prologue
    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acquireWakeLock, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 850
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 851
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 844
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 845
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "CdmaConnection"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 846
    return-void
.end method

.method private doDisconnect()V
    .locals 4

    .prologue
    .line 637
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    .line 638
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnectTime:J

    .line 639
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConnectTimeReal:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDuration:J

    .line 640
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnected:Z

    .line 641
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->clearPostDialListeners()V

    .line 642
    return-void
.end method

.method static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 220
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static findNextPCharOrNonPOrNonWCharIndex(Ljava/lang/String;I)I
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "currIndex"    # I

    .prologue
    .line 875
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isWait(C)Z

    move-result v3

    .line 876
    .local v3, "wMatched":Z
    add-int/lit8 v1, p1, 0x1

    .line 877
    .local v1, "index":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 878
    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 879
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 881
    .local v0, "cNext":C
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isWait(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 882
    const/4 v3, 0x1

    .line 886
    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isWait(C)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isPause(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 894
    .end local v0    # "cNext":C
    :cond_1
    if-ge v1, v2, :cond_2

    add-int/lit8 v4, p1, 0x1

    if-le v1, v4, :cond_2

    if-nez v3, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isPause(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 896
    add-int/lit8 v1, p1, 0x1

    .line 898
    .end local v1    # "index":I
    :cond_2
    return v1

    .line 889
    .restart local v0    # "cNext":C
    .restart local v1    # "index":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 890
    goto :goto_0
.end method

.method private static findPOrWCharToAppend(Ljava/lang/String;II)C
    .locals 3
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "currPwIndex"    # I
    .param p2, "nextNonPwCharIndex"    # I

    .prologue
    .line 906
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 910
    .local v0, "c":C
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isPause(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x2c

    .line 918
    .local v1, "ret":C
    :goto_0
    add-int/lit8 v2, p1, 0x1

    if-le p2, v2, :cond_0

    .line 919
    const/16 v1, 0x3b

    .line 921
    :cond_0
    return v1

    .line 910
    .end local v1    # "ret":C
    :cond_1
    const/16 v1, 0x3b

    goto :goto_0
.end method

.method public static formatDialString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 942
    if-nez p0, :cond_0

    .line 943
    const/4 v6, 0x0

    .line 976
    :goto_0
    return-object v6

    .line 945
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 946
    .local v2, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 948
    .local v5, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 950
    .local v1, "currIndex":I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 951
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 952
    .local v0, "c":C
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isPause(C)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isWait(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 953
    :cond_1
    add-int/lit8 v6, v2, -0x1

    if-ge v1, v6, :cond_2

    .line 955
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->findNextPCharOrNonPOrNonWCharIndex(Ljava/lang/String;I)I

    move-result v3

    .line 957
    .local v3, "nextIndex":I
    if-ge v3, v2, :cond_3

    .line 958
    invoke-static {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;->findPOrWCharToAppend(Ljava/lang/String;II)C

    move-result v4

    .line 959
    .local v4, "pC":C
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 963
    add-int/lit8 v6, v1, 0x1

    if-le v3, v6, :cond_2

    .line 964
    add-int/lit8 v1, v3, -0x1

    .line 974
    .end local v3    # "nextIndex":I
    .end local v4    # "pC":C
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 966
    .restart local v3    # "nextIndex":I
    :cond_3
    if-ne v3, v2, :cond_2

    .line 968
    add-int/lit8 v1, v2, -0x1

    goto :goto_2

    .line 972
    .end local v3    # "nextIndex":I
    :cond_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 976
    .end local v0    # "c":C
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private isConnectingInOrOut()Z
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInChina()Z
    .locals 5

    .prologue
    .line 1081
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1082
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 1083
    .local v0, "numeric":Ljava/lang/String;
    const-string v2, "CdmaConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInChina, numeric:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    const-string v2, "460"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isPause(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 863
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWait(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 867
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 980
    const-string v0, "CdmaConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CDMAConn] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    return-void
.end method

.method private parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/cdma/CdmaCall;
    .locals 3
    .param p1, "state"    # Lcom/android/internal/telephony/DriverCall$State;

    .prologue
    .line 796
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaConnection$1;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 813
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 809
    :goto_0
    return-object v0

    .line 804
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    goto :goto_0

    .line 809
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    goto :goto_0

    .line 796
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private processPostDialChar(C)Z
    .locals 6
    .param p1, "c"    # C

    .prologue
    const/4 v0, 0x1

    .line 655
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    .line 673
    :goto_0
    return v0

    .line 657
    :cond_0
    const/16 v1, 0x2c

    if-ne p1, v1, :cond_1

    .line 658
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 663
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 665
    :cond_1
    const/16 v1, 0x3b

    if-ne p1, v1, :cond_2

    .line 666
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 667
    :cond_2
    const/16 v1, 0x4e

    if-ne p1, v1, :cond_3

    .line 668
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 670
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseWakeLock()V
    .locals 3

    .prologue
    .line 854
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 855
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseWakeLock, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 859
    :cond_0
    monitor-exit v1

    .line 860
    return-void

    .line 859
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 6
    .param p1, "s"    # Lcom/android/internal/telephony/Connection$PostDialState;

    .prologue
    const/4 v2, 0x4

    .line 824
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v1, :cond_2

    .line 826
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 827
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 828
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 832
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 833
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 834
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 840
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->notifyPostDialListeners()V

    .line 841
    return-void

    .line 830
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->acquireWakeLock()V

    goto :goto_0

    .line 834
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 836
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 837
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    goto :goto_1
.end method

.method private vibrateForAccepted()V
    .locals 4

    .prologue
    .line 1089
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1091
    .local v0, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1092
    return-void
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    .prologue
    .line 342
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 343
    return-void
.end method

.method compareTo(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 4
    .param p1, "c"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    const/4 v1, 0x1

    .line 230
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsIncoming:Z

    if-nez v2, :cond_1

    iget-boolean v2, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-nez v2, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v1

    .line 235
    :cond_1
    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v3, p1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "cAddress":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsIncoming:Z

    iget-boolean v3, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method disconnectCauseFromCode(I)I
    .locals 11
    .param p1, "causeCode"    # I

    .prologue
    const/16 v10, 0x10

    const/4 v9, 0x1

    const/4 v6, 0x2

    .line 367
    sparse-switch p1, :sswitch_data_0

    .line 407
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v7, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 408
    .local v0, "phone":Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 410
    .local v1, "serviceState":I
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 411
    .local v5, "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 412
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v8

    invoke-virtual {v7, v8, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v4

    .line 415
    .local v4, "tempApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v4, :cond_1

    .line 416
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v5

    .line 423
    .end local v4    # "tempApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v7

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v3

    .line 424
    .local v3, "subId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSimStateForSubscriber(I)I

    move-result v2

    .line 425
    .local v2, "simState":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "disconnectCauseFromCode, causeCode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", serviceState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uiccAppState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", simState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 430
    const/4 v7, 0x3

    if-ne v1, v7, :cond_3

    .line 431
    const/16 v6, 0x11

    .line 447
    .end local v0    # "phone":Lcom/android/internal/telephony/cdma/CDMAPhone;
    .end local v1    # "serviceState":I
    .end local v2    # "simState":I
    .end local v3    # "subId":I
    .end local v5    # "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :cond_0
    :goto_1
    return v6

    .line 369
    :sswitch_0
    const/4 v6, 0x4

    goto :goto_1

    .line 371
    :sswitch_1
    const/4 v6, 0x5

    goto :goto_1

    .line 373
    :sswitch_2
    const/16 v6, 0xf

    goto :goto_1

    .line 375
    :sswitch_3
    const/16 v6, 0x14

    goto :goto_1

    .line 377
    :sswitch_4
    const/16 v6, 0x15

    goto :goto_1

    .line 379
    :sswitch_5
    const/16 v6, 0x2e

    goto :goto_1

    .line 381
    :sswitch_6
    const/16 v6, 0x2f

    goto :goto_1

    .line 383
    :sswitch_7
    const/16 v6, 0x30

    goto :goto_1

    .line 385
    :sswitch_8
    const/16 v6, 0x1a

    goto :goto_1

    .line 387
    :sswitch_9
    const/16 v6, 0x1b

    goto :goto_1

    .line 389
    :sswitch_a
    const/16 v6, 0x1c

    goto :goto_1

    .line 391
    :sswitch_b
    const/16 v6, 0x1d

    goto :goto_1

    .line 393
    :sswitch_c
    const/16 v6, 0x1e

    goto :goto_1

    .line 395
    :sswitch_d
    const/16 v6, 0x1f

    goto :goto_1

    .line 397
    :sswitch_e
    const/16 v6, 0x20

    goto :goto_1

    .line 399
    :sswitch_f
    const/16 v6, 0x21

    goto :goto_1

    .line 401
    :sswitch_10
    const/16 v6, 0x22

    goto :goto_1

    .line 403
    :sswitch_11
    const/16 v6, 0x23

    goto :goto_1

    .line 418
    .restart local v0    # "phone":Lcom/android/internal/telephony/cdma/CDMAPhone;
    .restart local v1    # "serviceState":I
    .restart local v4    # "tempApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v5    # "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :cond_1
    const-string v7, "tempApplication is null"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 421
    .end local v4    # "tempApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_2
    const-string v7, "UiccController.getInstance() is null"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 432
    .restart local v2    # "simState":I
    .restart local v3    # "subId":I
    :cond_3
    if-ne p1, v10, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eq v2, v9, :cond_0

    if-eq v2, v6, :cond_0

    .line 437
    :cond_4
    if-eq v1, v9, :cond_5

    if-ne v1, v6, :cond_6

    .line 439
    :cond_5
    const/16 v6, 0x12

    goto :goto_1

    .line 440
    :cond_6
    iget v7, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCdmaSubscriptionSource:I

    if-nez v7, :cond_7

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v5, v7, :cond_7

    .line 443
    const/16 v6, 0x13

    goto :goto_1

    .line 444
    :cond_7
    if-eq p1, v10, :cond_0

    .line 447
    const/16 v6, 0x24

    goto :goto_1

    .line 367
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x22 -> :sswitch_1
        0x44 -> :sswitch_2
        0xf0 -> :sswitch_3
        0xf1 -> :sswitch_4
        0xf4 -> :sswitch_5
        0xf5 -> :sswitch_6
        0xf6 -> :sswitch_7
        0x3e8 -> :sswitch_8
        0x3e9 -> :sswitch_9
        0x3ea -> :sswitch_a
        0x3eb -> :sswitch_b
        0x3ec -> :sswitch_c
        0x3ed -> :sswitch_d
        0x3ee -> :sswitch_e
        0x3ef -> :sswitch_f
        0x3f0 -> :sswitch_10
        0x3f1 -> :sswitch_11
    .end sparse-switch
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method fakeHoldBeforeDial()V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->detach(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 589
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 591
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onStartedHolding()V

    .line 592
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    const-string v0, "CdmaConnection"

    const-string v1, "[CdmaConn] UNEXPECTED; mPartialWakeLock is held when finalizing."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    .line 722
    return-void
.end method

.method getCDMAIndex()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 596
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    if-ltz v0, :cond_0

    .line 597
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 599
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "CDMA connection index not assigned"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/cdma/CdmaCall;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    return-object v0
.end method

.method public getDisconnectCause()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    return v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .prologue
    .line 252
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnectTime:J

    return-wide v0
.end method

.method public getHoldDurationMillis()J
    .locals 4

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 259
    const-wide/16 v0, 0x0

    .line 261
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHoldingStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 985
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNumberPresentation:I

    return v0
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 1000
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDialString:Ljava/lang/String;

    return-object v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    .prologue
    .line 995
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPreciseCause:I

    return v0
.end method

.method public getRealAcceptTime()J
    .locals 2

    .prologue
    .line 1062
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mRealAcceptTime:J

    return-wide v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 678
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v4, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v4, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNextPostDialChar:I

    if-gt v3, v4, :cond_2

    .line 682
    :cond_0
    const-string v1, ""

    .line 696
    :cond_1
    :goto_0
    return-object v1

    .line 685
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNextPostDialChar:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 686
    .local v1, "subStr":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 687
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 688
    .local v2, "wIndex":I
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 690
    .local v0, "pIndex":I
    if-lez v2, :cond_4

    if-lt v2, v0, :cond_3

    if-gtz v0, :cond_4

    .line 691
    :cond_3
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 692
    :cond_4
    if-lez v0, :cond_1

    .line 693
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnected:Z

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    .line 275
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    goto :goto_0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .prologue
    .line 991
    const/4 v0, 0x0

    return-object v0
.end method

.method public hangup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 286
    return-void

    .line 284
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hangup(I)V
    .locals 2
    .param p1, "discRingingConnCause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1015
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnected:Z

    if-nez v0, :cond_2

    .line 1016
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 1018
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->hasConnection(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1019
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hangup RingingConn with cause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", and ringCall state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 1022
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 1029
    :cond_1
    return-void

    .line 1027
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isMultiparty()Z
    .locals 1

    .prologue
    .line 1005
    const/4 v0, 0x0

    return v0
.end method

.method public isRealConnected()Z
    .locals 1

    .prologue
    .line 1036
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsRealConnected:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 1032
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsVideo:Z

    return v0
.end method

.method onCdmaCallAccept()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1041
    const-string v1, "CdmaConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCdmaCallAccept, mIsRealConnected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsRealConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsRealConnected:Z

    if-nez v1, :cond_0

    .line 1043
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConnectTimeReal:J

    .line 1044
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDuration:J

    .line 1045
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConnectTime:J

    .line 1046
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsRealConnected:Z

    .line 1048
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processNextPostDialChar()V

    .line 1052
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onConnectedInOrOut()V
    .locals 4

    .prologue
    .line 608
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConnectTime:J

    .line 609
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConnectTimeReal:J

    .line 610
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDuration:J

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectedInOrOut: connectTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConnectTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 618
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsIncoming:Z

    if-nez v0, :cond_1

    .line 622
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isInChina()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsRealConnected:Z

    if-nez v0, :cond_0

    .line 623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIsRealConnected:Z

    .line 624
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processNextPostDialChar()V

    .line 625
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->vibrateForAccepted()V

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    goto :goto_0
.end method

.method onDisconnect(I)Z
    .locals 2
    .param p1, "cause"    # I

    .prologue
    .line 464
    const/4 v0, 0x0

    .line 466
    .local v0, "changed":Z
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    .line 468
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnected:Z

    if-nez v1, :cond_0

    .line 469
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->doDisconnect()V

    .line 472
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 474
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eqz v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->connectionDisconnected(Lcom/android/internal/telephony/cdma/CdmaConnection;)Z

    move-result v0

    .line 478
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    .line 479
    return v0
.end method

.method onDisconnectByMom(I)Z
    .locals 2
    .param p1, "cause"    # I

    .prologue
    .line 1067
    const/4 v0, 0x0

    .line 1068
    .local v0, "changed":Z
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    .line 1069
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnected:Z

    if-nez v1, :cond_0

    .line 1070
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->doDisconnect()V

    .line 1072
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eqz v1, :cond_0

    .line 1073
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->connectionDisconnected(Lcom/android/internal/telephony/cdma/CdmaConnection;)Z

    move-result v0

    .line 1076
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    .line 1077
    return v0
.end method

.method onHangupLocal()V
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    .line 353
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPreciseCause:I

    .line 354
    return-void
.end method

.method onLocalDisconnect()V
    .locals 1

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 486
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->doDisconnect()V

    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->detach(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 493
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    .line 494
    return-void
.end method

.method onRemoteDisconnect(I)V
    .locals 1
    .param p1, "causeCode"    # I

    .prologue
    .line 454
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPreciseCause:I

    .line 455
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->disconnectCauseFromCode(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(I)Z

    .line 456
    return-void
.end method

.method onStartedHolding()V
    .locals 2

    .prologue
    .line 646
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHoldingStartTime:J

    .line 647
    return-void
.end method

.method public proceedAfterWaitChar()V
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 305
    const-string v0, "CdmaConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :goto_0
    return-void

    .line 310
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 312
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 317
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_0

    .line 318
    const-string v1, "CdmaConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :goto_0
    return-void

    .line 323
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    .line 331
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNextPostDialChar:I

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proceedAfterWildChar: new postDialString is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method processNextPostDialChar()V
    .locals 9

    .prologue
    .line 725
    const/4 v1, 0x0

    .line 728
    .local v1, "c":C
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v6, v7, :cond_1

    .line 729
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNextPostDialChar:I

    if-gt v6, v7, :cond_4

    .line 736
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 739
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    .line 742
    const/4 v1, 0x0

    .line 761
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->notifyPostDialListenersNextChar(C)V

    .line 764
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 768
    .local v4, "postDialHandler":Landroid/os/Registrant;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v3

    .local v3, "notifyMessage":Landroid/os/Message;
    if-eqz v3, :cond_0

    .line 771
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 772
    .local v5, "state":Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 773
    .local v0, "ar":Landroid/os/AsyncResult;
    iput-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 774
    iput-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 777
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 779
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 746
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "notifyMessage":Landroid/os/Message;
    .end local v4    # "postDialHandler":Landroid/os/Registrant;
    .end local v5    # "state":Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 748
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPostDialString:Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNextPostDialChar:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNextPostDialChar:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 750
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processPostDialChar(C)Z

    move-result v2

    .line 752
    .local v2, "isValid":Z
    if-nez v2, :cond_3

    .line 754
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 756
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processNextPostDialChar: c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isn\'t valid!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public separate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->separate(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 295
    return-void

    .line 293
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRealAcceptTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1058
    iput-wide p1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mRealAcceptTime:J

    .line 1059
    return-void
.end method

.method update(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 10
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 500
    const/4 v0, 0x0

    .line 501
    .local v0, "changed":Z
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isConnectingInOrOut()Z

    move-result v4

    .line 502
    .local v4, "wasConnectingInOrOut":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_6

    move v5, v6

    .line 504
    .local v5, "wasHolding":Z
    :goto_0
    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v1

    .line 506
    .local v1, "newParent":Lcom/android/internal/telephony/cdma/CdmaCall;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parent= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", newParent= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 508
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mNumberConverted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNumberConverted:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 509
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cdma/CdmaConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNumberConverted:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mConvertedNumber:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cdma/CdmaConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 511
    :cond_0
    const-string v8, "update: phone # changed!"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 514
    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 515
    .local v2, "number":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    const-string v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "+"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 518
    const-string v8, "update: do not update number according because pluscode transfer!"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 528
    .end local v2    # "number":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 529
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 530
    const/4 v0, 0x1

    .line 531
    const-string v8, ""

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    .line 538
    :cond_2
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--dssds----"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 539
    iget v8, p1, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v8, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapNamePresentation:I

    .line 540
    iget v8, p1, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v8, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mNumberPresentation:I

    .line 542
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eq v1, v8, :cond_9

    .line 543
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eqz v6, :cond_3

    .line 544
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v6, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->detach(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 546
    :cond_3
    invoke-virtual {v1, p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 547
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 548
    const/4 v0, 0x1

    .line 557
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update, wasConnectingInOrOut="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", wasHolding="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isConnectingInOrOut="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isConnectingInOrOut()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", changed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 564
    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isConnectingInOrOut()Z

    move-result v6

    if-nez v6, :cond_4

    .line 565
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    .line 568
    :cond_4
    if-eqz v0, :cond_5

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_5

    .line 570
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onStartedHolding()V

    .line 573
    :cond_5
    return v0

    .end local v1    # "newParent":Lcom/android/internal/telephony/cdma/CdmaCall;
    .end local v5    # "wasHolding":Z
    :cond_6
    move v5, v7

    .line 502
    goto/16 :goto_0

    .line 520
    .restart local v1    # "newParent":Lcom/android/internal/telephony/cdma/CdmaCall;
    .restart local v2    # "number":Ljava/lang/String;
    .restart local v5    # "wasHolding":Z
    :cond_7
    const-string v8, "update: update number because number changed by network!"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 521
    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mAddress:Ljava/lang/String;

    .line 522
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 533
    .end local v2    # "number":Ljava/lang/String;
    :cond_8
    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 534
    const/4 v0, 0x1

    .line 535
    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCnapName:Ljava/lang/String;

    goto/16 :goto_2

    .line 551
    :cond_9
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v8, p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->update(Lcom/android/internal/telephony/cdma/CdmaConnection;Lcom/android/internal/telephony/DriverCall;)Z

    move-result v3

    .line 552
    .local v3, "parentStateChange":Z
    if-nez v0, :cond_a

    if-eqz v3, :cond_b

    :cond_a
    move v0, v6

    :goto_4
    goto :goto_3

    :cond_b
    move v0, v7

    goto :goto_4
.end method

.method public updateParent(Lcom/android/internal/telephony/cdma/CdmaCall;Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .locals 1
    .param p1, "oldParent"    # Lcom/android/internal/telephony/cdma/CdmaCall;
    .param p2, "newParent"    # Lcom/android/internal/telephony/cdma/CdmaCall;

    .prologue
    .line 700
    if-eq p2, p1, :cond_1

    .line 701
    if-eqz p1, :cond_0

    .line 702
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->detach(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 704
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p2, p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 705
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mParent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 707
    :cond_1
    return-void
.end method
