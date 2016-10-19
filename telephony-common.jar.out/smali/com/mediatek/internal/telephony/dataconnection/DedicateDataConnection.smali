.class public Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
.super Lcom/android/internal/util/StateMachine;
.source "DedicateDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$1;,
        Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;,
        Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;,
        Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;,
        Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;,
        Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;,
        Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;,
        Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;,
        Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;
    }
.end annotation


# static fields
.field private static final EVENT_CONNECT:I = 0x1f4

.field private static final EVENT_DISCONNECT:I = 0x1f5

.field private static final EVENT_DISCONNECT_DATA_CONNECTION_DONE:I = 0x1fa

.field private static final EVENT_DISCONNECT_WITHOUT_NOTIFICATION:I = 0x1f8

.field private static final EVENT_MODIFY:I = 0x1f6

.field private static final EVENT_MODIFY_DATA_CONNECTION_DONE:I = 0x1fb

.field private static final EVENT_SETUP_DATA_CONNECTION_DONE:I = 0x1f9

.field private static final EVENT_UPDATE:I = 0x1f7

.field public static final REASON_BEARER_ABORT:Ljava/lang/String; = "abort"

.field public static final REASON_BEARER_ACTIVATION:Ljava/lang/String; = "activation"

.field public static final REASON_BEARER_DEACTIVATION:Ljava/lang/String; = "deactivation"

.field public static final REASON_BEARER_MODIFICATION:Ljava/lang/String; = "modification"

.field protected static final TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private mAc:Lcom/android/internal/util/AsyncChannel;

.field private mActivatingState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;

.field private mActiveState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;

.field private mCid:I

.field private mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

.field private mDdcac:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;

.field private mDefaultState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;

.field private mDisconnectingState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;

.field private mId:I

.field private mInactiveState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mProperties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

.field private mReason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DDC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mCid:I

    .line 45
    new-instance v0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/DedicateBearerProperties;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    .line 51
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mDefaultState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;

    .line 52
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mInactiveState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;

    .line 53
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mActivatingState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;

    .line 54
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mActiveState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;

    .line 55
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$1;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mDisconnectingState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;

    .line 59
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 60
    iput p2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    .line 61
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mDefaultState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->addState(Lcom/android/internal/util/State;)V

    .line 62
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mInactiveState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mDefaultState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 63
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mActivatingState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mDefaultState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 64
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mActiveState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mDefaultState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 65
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mDisconnectingState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mDefaultState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 66
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mInactiveState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->setInitialState(Lcom/android/internal/util/State;)V

    .line 67
    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mInactiveState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$InactiveState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mActiveState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mActivatingState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActivatingState;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 25
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mCid:I

    return v0
.end method

.method static synthetic access$1700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    .param p2, "x2"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->notifyConnectCompleted(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    .param p2, "x2"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->notifyDisconnectCompleted(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->clearSettings()V

    return-void
.end method

.method static synthetic access$2500(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mDisconnectingState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DisconnectingState;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Landroid/os/AsyncResult;)Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/Object;)Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->updateDedicateBearerProperty(Ljava/lang/Object;)Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 25
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->quit()V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method private clearSettings()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->clear()V

    .line 225
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mCid:I

    .line 226
    return-void
.end method

.method private ddclog(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 229
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dedicate][GDDC-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method private notifyConnectCompleted(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 5
    .param p1, "param"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    .param p2, "cause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .prologue
    .line 233
    iget-object v1, p1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->onCompletedMsg:Landroid/os/Message;

    .line 234
    .local v1, "onCompletedMsg":Landroid/os/Message;
    if-nez v1, :cond_0

    .line 235
    const-string v2, "notifyConnectionCompleted and no complete message"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 261
    :goto_0
    return-void

    .line 239
    :cond_0
    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mCid:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 244
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p2, v2, :cond_1

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyConnectionCompleted success property="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 246
    new-instance v3, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-direct {v3, p0, v2, v4}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    const/4 v2, 0x0

    invoke-static {v1, v3, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 248
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mActiveState:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$ActiveState;

    if-ne v2, v3, :cond_2

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyConnectionCompleted success with failcause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", property="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 250
    new-instance v3, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-direct {v3, p0, v2, p2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    const/4 v2, 0x0

    invoke-static {v1, v3, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_1

    .line 252
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyConnectionCompleted with cause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", property="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 253
    new-instance v3, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-direct {v3, p0, v2, p2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    new-instance v2, Ljava/lang/Exception;

    const-string v4, "Setup dedicate bearer failed"

    invoke-direct {v2, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;
    :try_end_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private notifyDisconnectCompleted(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 5
    .param p1, "param"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
    .param p2, "cause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .prologue
    .line 264
    if-nez p1, :cond_1

    .line 265
    const-string v2, "notifyDisconnectCompleted and no param, not to send complete message"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v1, p1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->onCompletedMsg:Landroid/os/Message;

    .line 268
    .local v1, "onCompletedMsg":Landroid/os/Message;
    if-eqz v1, :cond_0

    .line 272
    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mCid:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 275
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p2, v2, :cond_2

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDisconnectCompleted success property="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 277
    new-instance v3, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-direct {v3, p0, v2, p2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    const/4 v2, 0x0

    invoke-static {v1, v3, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 279
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDisconnectCompleted with cause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", property="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 280
    new-instance v3, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-direct {v3, p0, v2, p2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    new-instance v2, Ljava/lang/Exception;

    const-string v4, "Deactivate dedicate bearer failed"

    invoke-direct {v2, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_1
.end method

.method private onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v4, 0x0

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "dataCallStates":[Lcom/mediatek/internal/telephony/DedicateDataCallState;
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v2, v2, Lcom/mediatek/internal/telephony/DedicateDataCallState;

    if-eqz v2, :cond_2

    .line 165
    const/4 v2, 0x1

    new-array v0, v2, [Lcom/mediatek/internal/telephony/DedicateDataCallState;

    .line 166
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/internal/telephony/DedicateDataCallState;

    aput-object v2, v0, v4

    .line 171
    :cond_0
    :goto_0
    sget-object v1, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->FAIL:Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    .line 172
    .local v1, "result":Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;
    if-eqz v0, :cond_5

    array-length v2, v0

    if-lez v2, :cond_5

    .line 173
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->updateDedicateBearerProperty(Ljava/lang/Object;)Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;

    move-result-object v2

    iget-object v1, v2, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->setupResult:Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    .line 174
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    .line 175
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_3

    .line 178
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v2

    iput v2, v1, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->failCause:I

    .line 194
    :cond_1
    :goto_1
    return-object v1

    .line 167
    .end local v1    # "result":Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;
    :cond_2
    if-eqz p1, :cond_0

    .line 168
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/mediatek/internal/telephony/DedicateDataCallState;

    move-object v0, v2

    check-cast v0, [Lcom/mediatek/internal/telephony/DedicateDataCallState;

    goto :goto_0

    .line 180
    .restart local v1    # "result":Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;
    :cond_3
    aget-object v2, v0, v4

    iget v2, v2, Lcom/mediatek/internal/telephony/DedicateDataCallState;->failCause:I

    iput v2, v1, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->failCause:I

    .line 181
    iget v2, v1, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->failCause:I

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 182
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v2

    iput v2, v1, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->failCause:I

    .line 183
    const-string v2, "updateDedicateBearerProperty get exception but no fail cause, convert to UNKNOWN"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    goto :goto_1

    .line 187
    :cond_4
    aget-object v2, v0, v4

    iget v2, v2, Lcom/mediatek/internal/telephony/DedicateDataCallState;->failCause:I

    iput v2, v1, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->failCause:I

    .line 188
    aget-object v2, v0, v4

    iget v2, v2, Lcom/mediatek/internal/telephony/DedicateDataCallState;->cid:I

    iput v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mCid:I

    goto :goto_1

    .line 191
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v2

    iput v2, v1, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->failCause:I

    .line 192
    const-string v2, "onSetupConnectionCompleted but no any result"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateDedicateBearerProperty(Ljava/lang/Object;)Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;
    .locals 3
    .param p1, "newState"    # Ljava/lang/Object;

    .prologue
    .line 198
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/DedicateBearerProperties;)V

    .line 199
    .local v0, "result":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;
    if-nez p1, :cond_0

    .line 220
    .end local p1    # "newState":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 202
    .restart local p1    # "newState":Ljava/lang/Object;
    :cond_0
    new-instance v1, Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-direct {v1}, Lcom/mediatek/internal/telephony/DedicateBearerProperties;-><init>()V

    iput-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->newProperty:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    .line 204
    instance-of v1, p1, [Lcom/mediatek/internal/telephony/DedicateDataCallState;

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->newProperty:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    check-cast p1, [Lcom/mediatek/internal/telephony/DedicateDataCallState;

    .end local p1    # "newState":Ljava/lang/Object;
    check-cast p1, [Lcom/mediatek/internal/telephony/DedicateDataCallState;

    invoke-virtual {v1, p1}, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->setProperties([Lcom/mediatek/internal/telephony/DedicateDataCallState;)Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->setupResult:Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    .line 209
    :goto_1
    iget-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->setupResult:Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    sget-object v2, Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;->SUCCESS:Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    if-eq v1, v2, :cond_2

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDedicateBearerProperty failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->setupResult:Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    .restart local p1    # "newState":Ljava/lang/Object;
    :cond_1
    iget-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->newProperty:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    check-cast p1, Lcom/mediatek/internal/telephony/DedicateDataCallState;

    .end local p1    # "newState":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->setProperties(Lcom/mediatek/internal/telephony/DedicateDataCallState;)Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->setupResult:Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    goto :goto_1

    .line 214
    :cond_2
    iget-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->oldProperty:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->newProperty:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDedicateBearerProperty old LP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->oldProperty:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDedicateBearerProperty new LP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->newProperty:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 218
    :cond_3
    iget-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->newProperty:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mProperties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    goto :goto_0
.end method


# virtual methods
.method public bringUp(Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;Landroid/os/Message;)V
    .locals 2
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;
    .param p2, "onCompletedMsg"    # Landroid/os/Message;

    .prologue
    .line 70
    const/16 v0, 0x1f4

    new-instance v1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->sendMessage(Landroid/os/Message;)V

    .line 71
    return-void
.end method

.method public disconnect(Landroid/os/Message;)V
    .locals 2
    .param p1, "onCompletedMsg"    # Landroid/os/Message;

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DedicateDataConnection disconnect [ddcid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 90
    const/16 v0, 0x1f5

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->sendMessage(Landroid/os/Message;)V

    .line 91
    return-void
.end method

.method public getDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    return-object v0
.end method

.method public getDedicateDataConnectionAc()Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mDdcac:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    return v0
.end method

.method public modify(Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;Landroid/os/Message;)V
    .locals 2
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;
    .param p2, "onCompletedMsg"    # Landroid/os/Message;

    .prologue
    .line 75
    const/16 v0, 0x1f6

    new-instance v1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->sendMessage(Landroid/os/Message;)V

    .line 76
    return-void
.end method

.method protected onAbort(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 156
    const/16 v1, 0x1fa

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 157
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DedicateDataConnection ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] onAbort, to abort the activation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 158
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    check-cast p1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v3, p1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->reason:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->abortSetupDataCall(ILjava/lang/String;Landroid/os/Message;)V

    .line 160
    return-void
.end method

.method protected onConnect(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;)V
    .locals 7
    .param p1, "dp"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DedicateDataConnection onConnect ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 115
    const/16 v0, 0x1f9

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 116
    .local v6, "msg":Landroid/os/Message;
    iput-object p1, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    iget-object v2, p1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->param:Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;

    iget v2, v2, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->interfaceId:I

    iget-object v3, p1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->param:Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;

    iget-boolean v3, v3, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->signalingFlag:Z

    iget-object v4, p1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->param:Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    iget-object v5, p1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->param:Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setupDedicateDataCall(IIZLcom/mediatek/internal/telephony/QosStatus;Lcom/mediatek/internal/telephony/TftStatus;Landroid/os/Message;)V

    .line 118
    return-void
.end method

.method protected onDisconnect(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 135
    const/16 v1, 0x1fa

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 136
    .local v0, "msg":Landroid/os/Message;
    if-nez p1, :cond_0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DedicateDataConnection ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] onDisconnect, no obj parameter and send response msg directly"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 153
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return-void

    .line 140
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    if-eqz v1, :cond_1

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DedicateDataConnection ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] onDisconnect with parameter, deactivate the connection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 142
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 143
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mCid:I

    check-cast p1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v3, p1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->reason:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDedicateDataCall(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 144
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Landroid/os/Message;

    if-eqz v1, :cond_2

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DedicateDataConnection ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] onDisconnect with non-DedicateConnectionParam, send response msg directly"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 146
    new-instance v1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    const-string v2, "deactivate by network"

    check-cast p1, Landroid/os/Message;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {v1, p0, v2, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;Landroid/os/Message;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 147
    invoke-static {v0, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 148
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 150
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DedicateDataConnection ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] onDisconnect but unknown parameter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onModification(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;)V
    .locals 5
    .param p1, "dp"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .prologue
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DedicateDataConnection onModification ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 122
    const/16 v1, 0x1fb

    invoke-virtual {p0, v1, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 123
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 124
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mCid:I

    iget-object v3, p1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->param:Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    iget-object v4, p1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->param:Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->modifyDataCall(ILcom/mediatek/internal/telephony/QosStatus;Lcom/mediatek/internal/telephony/TftStatus;Landroid/os/Message;)V

    .line 125
    return-void
.end method

.method protected onUpdate(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;)Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;
    .locals 3
    .param p1, "dp"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    .prologue
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DedicateDataConnection onUpdate ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->ddclog(Ljava/lang/String;)V

    .line 129
    iget-object v1, p1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->callState:Lcom/mediatek/internal/telephony/DedicateDataCallState;

    iget v1, v1, Lcom/mediatek/internal/telephony/DedicateDataCallState;->cid:I

    iput v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mCid:I

    .line 130
    iget-object v1, p1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->callState:Lcom/mediatek/internal/telephony/DedicateDataCallState;

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->updateDedicateBearerProperty(Ljava/lang/Object;)Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$UpdateDedicateBearerPropertyResult;->setupResult:Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;

    .line 131
    .local v0, "result":Lcom/mediatek/internal/telephony/DedicateDataCallState$SetupResult;
    return-object v0
.end method

.method public setDataConnection(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0
    .param p1, "dc"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 95
    return-void
.end method

.method public setDedicateDataConnectionAc(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;)V
    .locals 0
    .param p1, "ddcac"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->mDdcac:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;

    .line 99
    return-void
.end method

.method public tearDown(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "onCompletedMsg"    # Landroid/os/Message;

    .prologue
    .line 79
    const/16 v0, 0x1f5

    new-instance v1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->sendMessage(Landroid/os/Message;)V

    .line 80
    return-void
.end method

.method public update(Lcom/mediatek/internal/telephony/DedicateDataCallState;Landroid/os/Message;)V
    .locals 2
    .param p1, "dedicateDataCallState"    # Lcom/mediatek/internal/telephony/DedicateDataCallState;
    .param p2, "onCompletedMsg"    # Landroid/os/Message;

    .prologue
    .line 84
    const/16 v0, 0x1f7

    new-instance v1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/DedicateDataCallState;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->sendMessage(Landroid/os/Message;)V

    .line 85
    return-void
.end method
