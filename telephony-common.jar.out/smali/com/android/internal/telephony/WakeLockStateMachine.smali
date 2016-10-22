.class public abstract Lcom/android/internal/telephony/WakeLockStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WakeLockStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;,
        Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;,
        Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true

.field protected static final EVENT_BROADCAST_COMPLETE:I = 0x2

.field protected static final EVENT_NEW_ETWS_NOTIFICATION:I = 0x7d0

.field public static final EVENT_NEW_SMS_MESSAGE:I = 0x1

.field static final EVENT_RELEASE_WAKE_LOCK:I = 0x3

.field static final EVENT_UPDATE_PHONE_OBJECT:I = 0x4

.field private static final WAKE_LOCK_TIMEOUT:I = 0xbb8


# instance fields
.field protected mContext:Landroid/content/Context;

.field private final mDefaultState:Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;

.field private final mIdleState:Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mWaitingState:Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .param p1, "debugTag"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 69
    new-instance v1, Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;-><init>(Lcom/android/internal/telephony/WakeLockStateMachine;)V

    iput-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mDefaultState:Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;

    .line 70
    new-instance v1, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;-><init>(Lcom/android/internal/telephony/WakeLockStateMachine;)V

    iput-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mIdleState:Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;

    .line 71
    new-instance v1, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;-><init>(Lcom/android/internal/telephony/WakeLockStateMachine;)V

    iput-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWaitingState:Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;

    .line 242
    new-instance v1, Lcom/android/internal/telephony/WakeLockStateMachine$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/WakeLockStateMachine$1;-><init>(Lcom/android/internal/telephony/WakeLockStateMachine;)V

    iput-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    iput-object p2, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mContext:Landroid/content/Context;

    .line 77
    iput-object p3, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 79
    const-string v1, "power"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 80
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 81
    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 83
    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mDefaultState:Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/WakeLockStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 84
    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mIdleState:Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;

    iget-object v2, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mDefaultState:Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/WakeLockStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 85
    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWaitingState:Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;

    iget-object v2, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mDefaultState:Lcom/android/internal/telephony/WakeLockStateMachine$DefaultState;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/WakeLockStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 86
    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mIdleState:Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/WakeLockStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/WakeLockStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/WakeLockStateMachine;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/WakeLockStateMachine;)Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/WakeLockStateMachine;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWaitingState:Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/WakeLockStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/WakeLockStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WakeLockStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/WakeLockStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/WakeLockStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WakeLockStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/WakeLockStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/WakeLockStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WakeLockStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/WakeLockStateMachine;)Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/WakeLockStateMachine;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mIdleState:Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/WakeLockStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/WakeLockStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WakeLockStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method


# virtual methods
.method public final dispatchSmsMessage(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/WakeLockStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 114
    return-void
.end method

.method public final dispose()V
    .locals 0

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/internal/telephony/WakeLockStateMachine;->quit()V

    .line 98
    return-void
.end method

.method protected handleEtwsPrimaryNotification(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract handleSmsMessage(Landroid/os/Message;)Z
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/internal/telephony/WakeLockStateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/internal/telephony/WakeLockStateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/internal/telephony/WakeLockStateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    return-void
.end method

.method protected onQuitting()V
    .locals 1

    .prologue
    .line 103
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method public updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 90
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/WakeLockStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 91
    return-void
.end method
