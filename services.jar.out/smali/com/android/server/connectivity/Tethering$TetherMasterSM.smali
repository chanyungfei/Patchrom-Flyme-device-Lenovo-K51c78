.class Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.super Lcom/android/internal/util/StateMachine;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherMasterSM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_TETHERING:I = 0x2

.field private static final CELL_CONNECTION_RENEW_MS:I = 0x9c40

.field static final CMD_CELL_CONNECTION_RENEW:I = 0x4

.field static final CMD_RETRY_UPSTREAM:I = 0x5

.field static final CMD_TETHER_MODE_REQUESTED:I = 0x1

.field static final CMD_TETHER_MODE_UNREQUESTED:I = 0x2

.field static final CMD_UPSTREAM_CHANGED:I = 0x3

.field private static final EXTRA_ADD_TETHER_TYPE:Ljava/lang/String; = "extraAddTetherType"

.field private static final EXTRA_RUN_PROVISION:Ljava/lang/String; = "extraRunProvision"

.field private static final UPSTREAM_SETTLE_TIME_MS:I = 0x2710

.field private static final USB_TETHERING:I = 0x1

.field private static final WIFI_TETHERING:I


# instance fields
.field private mBroadcastReceiver:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;

.field private mCurrentConnectionSequence:I

.field private mDhcpv6PDThread:Ljava/lang/Thread;

.field private mInitialState:Lcom/android/internal/util/State;

.field private mMobileApnReserved:I

.field private mName:Ljava/lang/String;

.field private mNotifyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousDhcpv6PDIface:Ljava/lang/String;

.field private mSequenceNumber:I

.field private mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

.field private mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

.field private mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

.field private final mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mStartTetheringErrorState:Lcom/android/internal/util/State;

.field private mStopTetheringErrorState:Lcom/android/internal/util/State;

.field private mTetherModeAliveState:Lcom/android/internal/util/State;

.field private mUpstreamIfaceName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 3
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    .line 2160
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    .line 2161
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 2147
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I

    .line 2149
    iput-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;

    .line 2570
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2571
    iput-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mBroadcastReceiver:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;

    .line 2163
    iput-object p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mName:Ljava/lang/String;

    .line 2166
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;

    .line 2167
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 2168
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeAliveState:Lcom/android/internal/util/State;

    .line 2169
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeAliveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 2171
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

    .line 2172
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 2173
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

    .line 2174
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 2175
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/State;

    .line 2176
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 2177
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/State;

    .line 2178
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 2179
    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

    .line 2180
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 2182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    .line 2183
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->setInitialState(Lcom/android/internal/util/State;)V

    .line 2186
    iput-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mDhcpv6PDThread:Ljava/lang/Thread;

    .line 2187
    iput-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mPreviousDhcpv6PDIface:Ljava/lang/String;

    .line 2188
    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2117
    iget v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I

    return v0
.end method

.method static synthetic access$4602(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # I

    .prologue
    .line 2117
    iput p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I

    return p1
.end method

.method static synthetic access$4700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2117
    iget v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mCurrentConnectionSequence:I

    return v0
.end method

.method static synthetic access$4904(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2117
    iget v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mCurrentConnectionSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mCurrentConnectionSequence:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2117
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2117
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2117
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2117
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2117
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mPreviousDhcpv6PDIface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6502(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2117
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mPreviousDhcpv6PDIface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2117
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6902(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2117
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mDhcpv6PDThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 2117
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mDhcpv6PDThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$7200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeAliveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2117
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2117
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->startListeningForSimChanges()V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2117
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->stopListeningForSimChanges()V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2117
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2117
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2117
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2117
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 2117
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private startListeningForSimChanges()V
    .locals 3

    .prologue
    .line 2583
    const-string v1, "Tethering"

    const-string v2, "startListeningForSimChanges"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mBroadcastReceiver:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;

    if-nez v1, :cond_0

    .line 2585
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)V

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mBroadcastReceiver:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;

    .line 2587
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2588
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2590
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mBroadcastReceiver:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2592
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private stopListeningForSimChanges()V
    .locals 2

    .prologue
    .line 2595
    const-string v0, "Tethering"

    const-string v1, "stopListeningForSimChanges"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mBroadcastReceiver:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2597
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2598
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mBroadcastReceiver:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2599
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mBroadcastReceiver:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;

    .line 2601
    :cond_0
    return-void
.end method


# virtual methods
.method protected stopDhcpv6PDSequence()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2970
    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopDhcpv6PD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mPreviousDhcpv6PDIface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mPreviousDhcpv6PDIface:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2973
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mPreviousDhcpv6PDIface:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->stopDhcpv6PD(Ljava/lang/String;)Z

    .line 2975
    :cond_0
    iput-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mPreviousDhcpv6PDIface:Ljava/lang/String;

    .line 2976
    iput-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mDhcpv6PDThread:Ljava/lang/Thread;

    .line 2977
    return-void
.end method
