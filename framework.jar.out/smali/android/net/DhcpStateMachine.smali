.class public Landroid/net/DhcpStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "DhcpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;,
        Landroid/net/DhcpStateMachine$RunningState;,
        Landroid/net/DhcpStateMachine$WaitBeforeStartState;,
        Landroid/net/DhcpStateMachine$StoppedState;,
        Landroid/net/DhcpStateMachine$DefaultState;,
        Landroid/net/DhcpStateMachine$DhcpAction;
    }
.end annotation


# static fields
.field private static final ACTION_DHCPV6_RENEW:Ljava/lang/String; = "android.net.wifi.DHCPV6_RENEW"

.field private static final ACTION_DHCP_RENEW:Ljava/lang/String; = "android.net.wifi.DHCP_RENEW"

.field private static final BASE:I = 0x30000

.field public static final CMD_ON_QUIT:I = 0x30006

.field public static final CMD_POST_DHCP_ACTION:I = 0x30005

.field public static final CMD_PRE_DHCP_ACTION:I = 0x30004

.field public static final CMD_PRE_DHCP_ACTION_COMPLETE:I = 0x30007

.field public static final CMD_RENEW_DHCP:I = 0x30003

.field public static final CMD_SETUP_V6:I = 0x30008

.field public static final CMD_START_DHCP:I = 0x30001

.field public static final CMD_STOP_DHCP:I = 0x30002

.field private static final DBG:Z = true

.field public static final DHCPV4:I = 0x1

.field public static final DHCPV4_V6:I = 0x3

.field public static final DHCPV6:I = 0x2

.field public static final DHCP_FAILURE:I = 0x2

.field private static final DHCP_RENEW:I = 0x0

.field public static final DHCP_SUCCESS:I = 0x1

.field private static final MIN_RENEWAL_TIME_SECS:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "DhcpStateMachine"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "DHCP"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/internal/util/StateMachine;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mDhcpRenewalIntent:Landroid/app/PendingIntent;

.field private mDhcpResults:Landroid/net/DhcpResults;

.field private final mInterfaceName:Ljava/lang/String;

.field private mIsDhcpV6:Z

.field private mIsQuitting:Z

.field private mIsRegistered:Z

.field private mRegisteredForPreDhcpNotification:Z

.field private mRunningState:Lcom/android/internal/util/State;

.field private mStoppedState:Lcom/android/internal/util/State;

.field private mWaitBeforeRenewalState:Lcom/android/internal/util/State;

.field private mWaitBeforeStartState:Lcom/android/internal/util/State;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/internal/util/StateMachine;
    .param p3, "intf"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 142
    const-string v2, "DhcpStateMachine"

    invoke-direct {p0, v2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 87
    iput-boolean v4, p0, Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z

    .line 114
    new-instance v2, Landroid/net/DhcpStateMachine$DefaultState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$DefaultState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    .line 115
    new-instance v2, Landroid/net/DhcpStateMachine$StoppedState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$StoppedState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    .line 116
    new-instance v2, Landroid/net/DhcpStateMachine$WaitBeforeStartState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$WaitBeforeStartState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    .line 117
    new-instance v2, Landroid/net/DhcpStateMachine$RunningState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$RunningState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/State;

    .line 118
    new-instance v2, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    .line 123
    iput-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    .line 124
    iput-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsRegistered:Z

    .line 125
    iput-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsQuitting:Z

    .line 144
    iput-object p1, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    .line 145
    iput-object p2, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    .line 146
    iput-object p3, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 148
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.DHCP_RENEW"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 150
    .local v0, "dhcpRenewalIntent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    .line 152
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 153
    .local v1, "powerManager":Landroid/os/PowerManager;
    const-string v2, "DHCP"

    invoke-virtual {v1, v6, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 154
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 156
    new-instance v2, Landroid/net/DhcpStateMachine$1;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$1;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 166
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.DHCP_RENEW"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    iput-boolean v6, p0, Landroid/net/DhcpStateMachine;->mIsRegistered:Z

    .line 169
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 170
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 171
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 172
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 173
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 175
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2}, Landroid/net/DhcpStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 176
    return-void
.end method

.method static synthetic access$000(Landroid/net/DhcpStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 55
    iget-boolean v0, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    return v0
.end method

.method static synthetic access$100(Landroid/net/DhcpStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/net/DhcpStateMachine;Landroid/net/DhcpStateMachine$DhcpAction;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Landroid/net/DhcpStateMachine$DhcpAction;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/net/DhcpStateMachine;->runDhcp(Landroid/net/DhcpStateMachine$DhcpAction;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/net/DhcpStateMachine;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/net/DhcpStateMachine;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/DhcpStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 55
    iget-boolean v0, p0, Landroid/net/DhcpStateMachine;->mIsRegistered:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$202(Landroid/net/DhcpStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Landroid/net/DhcpStateMachine;->mIsRegistered:Z

    return p1
.end method

.method static synthetic access$2100(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/DhcpStateMachine;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/DhcpStateMachine;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/DhcpStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/DhcpStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/net/DhcpStateMachine;->setForDhcpV6(Z)V

    return-void
.end method

.method static synthetic access$700(Landroid/net/DhcpStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 55
    iget-boolean v0, p0, Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z

    return v0
.end method

.method static synthetic access$800(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/StateMachine;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$900(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method public static makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/DhcpStateMachine;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "controller"    # Lcom/android/internal/util/StateMachine;
    .param p2, "intf"    # Ljava/lang/String;

    .prologue
    .line 180
    new-instance v0, Landroid/net/DhcpStateMachine;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/DhcpStateMachine;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V

    .line 181
    .local v0, "dsm":Landroid/net/DhcpStateMachine;
    invoke-virtual {v0}, Landroid/net/DhcpStateMachine;->start()V

    .line 182
    return-object v0
.end method

.method private runDhcp(Landroid/net/DhcpStateMachine$DhcpAction;)Z
    .locals 13
    .param p1, "dhcpAction"    # Landroid/net/DhcpStateMachine$DhcpAction;

    .prologue
    const v12, 0x30005

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 399
    const/4 v1, 0x0

    .line 400
    .local v1, "success":Z
    new-instance v0, Landroid/net/DhcpResults;

    invoke-direct {v0}, Landroid/net/DhcpResults;-><init>()V

    .line 402
    .local v0, "dhcpResults":Landroid/net/DhcpResults;
    sget-object v4, Landroid/net/DhcpStateMachine$DhcpAction;->START:Landroid/net/DhcpStateMachine$DhcpAction;

    if-ne p1, v4, :cond_8

    .line 404
    iget-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-nez v4, :cond_5

    .line 405
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 406
    const-string v4, "DhcpStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to stop Dhcp on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    :goto_0
    const-string v7, "DhcpStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DHCP"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-eqz v4, :cond_6

    const-string v4, "V6"

    :goto_1
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " request on "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-nez v4, :cond_7

    .line 415
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpResults;)Z

    move-result v1

    .line 429
    :cond_1
    :goto_2
    if-eqz v1, :cond_f

    iget-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsQuitting:Z

    if-nez v4, :cond_f

    .line 430
    const-string v7, "DhcpStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DHCP"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-eqz v4, :cond_b

    const-string v4, "V6"

    :goto_3
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " succeeded on "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget v4, v0, Landroid/net/DhcpResults;->leaseDuration:I

    int-to-long v2, v4

    .line 432
    .local v2, "leaseDuration":J
    const-string v4, "DhcpStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dhcpResults:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const-wide/16 v8, 0x0

    cmp-long v4, v2, v8

    if-ltz v4, :cond_3

    .line 436
    iget-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-nez v4, :cond_c

    .line 439
    const-wide/16 v8, 0x12c

    cmp-long v4, v2, v8

    if-gez v4, :cond_2

    .line 440
    const-wide/16 v2, 0x12c

    .line 445
    :cond_2
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x1e0

    mul-long/2addr v10, v2

    add-long/2addr v8, v10

    iget-object v7, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v8, v9, v7}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 463
    :cond_3
    :goto_4
    iput-object v0, p0, Landroid/net/DhcpStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    .line 464
    iget-object v7, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    iget-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-eqz v4, :cond_e

    move v4, v5

    :goto_5
    new-instance v5, Landroid/net/DhcpResults;

    invoke-direct {v5, v0}, Landroid/net/DhcpResults;-><init>(Landroid/net/DhcpResults;)V

    invoke-virtual {v7, v12, v6, v4, v5}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 489
    .end local v2    # "leaseDuration":J
    :cond_4
    :goto_6
    return v1

    .line 409
    :cond_5
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/NetworkUtils;->stopDhcpv6(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 410
    const-string v4, "DhcpStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to stop Dhcpv6 on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 413
    :cond_6
    const-string v4, "V4"

    goto/16 :goto_1

    .line 417
    :cond_7
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/net/NetworkUtils;->runDhcpv6(Ljava/lang/String;Landroid/net/DhcpResults;)Z

    move-result v1

    goto/16 :goto_2

    .line 419
    :cond_8
    sget-object v4, Landroid/net/DhcpStateMachine$DhcpAction;->RENEW:Landroid/net/DhcpStateMachine$DhcpAction;

    if-ne p1, v4, :cond_1

    .line 420
    const-string v7, "DhcpStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DHCP"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-eqz v4, :cond_9

    const-string v4, "V6"

    :goto_7
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " renewal on "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", pid:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Landroid/net/DhcpStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    iget v8, v8, Landroid/net/DhcpResults;->pidForRenew:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    iget v4, v4, Landroid/net/DhcpResults;->pidForRenew:I

    iput v4, v0, Landroid/net/DhcpResults;->pidForRenew:I

    .line 422
    iget-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-nez v4, :cond_a

    .line 423
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/net/NetworkUtils;->runDhcpRenew(Ljava/lang/String;Landroid/net/DhcpResults;)Z

    move-result v1

    .line 427
    :goto_8
    if-eqz v1, :cond_1

    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-virtual {v0, v4}, Landroid/net/DhcpResults;->updateFromDhcpRequest(Landroid/net/DhcpResults;)V

    goto/16 :goto_2

    .line 420
    :cond_9
    const-string v4, "V4"

    goto :goto_7

    .line 425
    :cond_a
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/net/NetworkUtils;->runDhcpv6Renew(Ljava/lang/String;Landroid/net/DhcpResults;)Z

    move-result v1

    goto :goto_8

    .line 430
    :cond_b
    const-string v4, "V4"

    goto/16 :goto_3

    .line 450
    .restart local v2    # "leaseDuration":J
    :cond_c
    long-to-double v8, v2

    const-wide/high16 v10, 0x4062000000000000L    # 144.0

    cmpg-double v4, v8, v10

    if-gez v4, :cond_d

    .line 451
    const-wide/16 v2, 0x90

    .line 453
    :cond_d
    const-string v4, "DhcpStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DHCPV6 leaseDuration:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v2

    add-long/2addr v8, v10

    iget-object v7, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v8, v9, v7}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_4

    :cond_e
    move v4, v6

    .line 464
    goto/16 :goto_5

    .line 467
    .end local v2    # "leaseDuration":J
    :cond_f
    iget-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsQuitting:Z

    if-eqz v4, :cond_10

    .line 468
    const-string v7, "DhcpStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IsQuitting, ignore DHCP"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-eqz v4, :cond_12

    const-string v4, "V6"

    :goto_9
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " result:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " on "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_10
    iget-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-nez v4, :cond_13

    .line 472
    const-string v4, "DhcpStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DHCPV4 failed on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    .line 479
    :goto_a
    iget-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsQuitting:Z

    if-nez v4, :cond_4

    .line 480
    sget-object v4, Landroid/net/DhcpStateMachine$DhcpAction;->RENEW:Landroid/net/DhcpStateMachine$DhcpAction;

    if-ne p1, v4, :cond_14

    .line 481
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    iget-boolean v7, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-eqz v7, :cond_11

    move v6, v5

    :cond_11
    invoke-virtual {v4, v12, v5, v6}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_6

    .line 468
    :cond_12
    const-string v4, "V4"

    goto :goto_9

    .line 476
    :cond_13
    const-string v4, "DhcpStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DHCPV6 failed on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpv6Error()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/NetworkUtils;->stopDhcpv6(Ljava/lang/String;)Z

    goto :goto_a

    .line 484
    :cond_14
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    iget-boolean v7, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-eqz v7, :cond_15

    move v6, v5

    :cond_15
    invoke-virtual {v4, v12, v5, v6}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_6
.end method

.method private setForDhcpV6(Z)V
    .locals 7
    .param p1, "isDhcpV6"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 128
    iput-boolean p1, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.DHCPV6_RENEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 130
    .local v0, "dhcpRenewalIntent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    .line 131
    iget-boolean v1, p0, Landroid/net/DhcpStateMachine;->mIsRegistered:Z

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    iput-boolean v5, p0, Landroid/net/DhcpStateMachine;->mIsRegistered:Z

    .line 135
    :cond_0
    const-string v1, "DhcpStateMachine"

    const-string v2, "Register receiver for dhcpv6!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.DHCPV6_RENEW"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    iput-boolean v6, p0, Landroid/net/DhcpStateMachine;->mIsRegistered:Z

    .line 138
    iput-boolean v5, p0, Landroid/net/DhcpStateMachine;->mIsQuitting:Z

    .line 139
    return-void
.end method


# virtual methods
.method public doQuit()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/DhcpStateMachine;->mIsQuitting:Z

    .line 205
    invoke-virtual {p0}, Landroid/net/DhcpStateMachine;->quit()V

    .line 206
    return-void
.end method

.method protected onQuitting()V
    .locals 4

    .prologue
    .line 209
    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    const v2, 0x30006

    iget-boolean v0, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 210
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public registerForPreDhcpNotification()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z

    .line 196
    return-void
.end method
