.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "P2pStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;,
        Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;
    }
.end annotation


# instance fields
.field private mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

.field private mFrequencyConflictState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;

.field private mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mGroupCreatedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

.field private mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

.field private mGroupNegotiationState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

.field private final mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

.field private mInactiveState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

.field private mOngoingGroupRemovalState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;

.field private mP2pDisabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

.field private mP2pDisablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;

.field private mP2pEnabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

.field private mP2pEnablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;

.field private mP2pNotSupportedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;

.field private final mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private final mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mProvisionDiscoveryState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;

.field private mSavedP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

.field private mUserAuthorizingInviteRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;

.field private mUserAuthorizingJoinState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;

.field private mUserAuthorizingNegotiationRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;

.field private mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private final mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

.field final synthetic this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;Landroid/os/Looper;Z)V
    .locals 5
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "p2pSupported"    # Z

    .prologue
    const/4 v4, 0x1

    .line 797
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    .line 798
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 742
    new-instance v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    .line 743
    new-instance v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pNotSupportedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;

    .line 744
    new-instance v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;

    .line 745
    new-instance v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    .line 746
    new-instance v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;

    .line 747
    new-instance v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    .line 749
    new-instance v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mInactiveState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

    .line 750
    new-instance v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    .line 751
    new-instance v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingInviteRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;

    .line 753
    new-instance v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingNegotiationRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    .line 755
    new-instance v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mProvisionDiscoveryState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;

    .line 756
    new-instance v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    .line 757
    new-instance v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mFrequencyConflictState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;

    .line 759
    new-instance v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    .line 760
    new-instance v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingJoinState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;

    .line 761
    new-instance v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mOngoingGroupRemovalState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;

    .line 763
    new-instance v1, Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInterface:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 764
    new-instance v1, Lcom/android/server/wifi/WifiMonitor;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiMonitor;-><init>(Lcom/android/internal/util/StateMachine;Lcom/android/server/wifi/WifiNative;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    .line 766
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 775
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 776
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pGroupList;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$1;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$1;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    invoke-direct {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pGroupList;-><init>(Landroid/net/wifi/p2p/WifiP2pGroupList;Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;)V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    .line 786
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 792
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 800
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 801
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pNotSupportedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 802
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 803
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 804
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 805
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mDefaultState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 806
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mInactiveState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 807
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 808
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingInviteRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 809
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingNegotiationRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 810
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mProvisionDiscoveryState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 811
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 812
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mFrequencyConflictState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 813
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnabledState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 814
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingJoinState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 815
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mOngoingGroupRemovalState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 817
    if-eqz p4, :cond_1

    .line 818
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 824
    :goto_0
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 825
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {p1, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$502(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/app/AlarmManager;)Landroid/app/AlarmManager;

    .line 826
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.WifiManager.action.CLEAR_TMP_GO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v1, v4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClearTmpGoIntent:Landroid/app/PendingIntent;
    invoke-static {p1, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$702(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 827
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 828
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "mtk.nfc.wfa.p2p.HR_RECEIVE_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 829
    const-string v1, "mtk.nfc.wfa.p2p.HS_RECEIVE_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 830
    const-string v1, "mtk.nfc.wfa.tag.RECEIVE_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 831
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$2;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 867
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setLogRecSize(I)V

    .line 868
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setLogOnlyTransitions(Z)V

    .line 869
    return-void

    .line 820
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pNotSupportedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pNotSupportedState;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_0
.end method

.method static synthetic access$10000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->handleGroupCreationFailure()V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pTxBroadcast(Z)V

    return-void
.end method

.method static synthetic access$11200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$11400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$11900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$12000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$12100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pGOandGCRequestConnectBroadcast()V

    return-void
.end method

.method static synthetic access$12200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->notifyInvitationReceived()V

    return-void
.end method

.method static synthetic access$12300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mFrequencyConflictState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$FrequencyConflictState;

    return-object v0
.end method

.method static synthetic access$12400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updatePersistentNetworks(Z)V

    return-void
.end method

.method static synthetic access$13800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->startDhcpServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 740
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic access$14000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatedState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatedState;

    return-object v0
.end method

.method static synthetic access$14200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$14300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$14400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$14500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$14600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;ILjava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 740
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->removeClientFromList(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$14700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$14800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$15000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pOPChannelBroadcast()V

    return-void
.end method

.method static synthetic access$15100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pFreqConflictBroadcast()V

    return-void
.end method

.method static synthetic access$15200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$15500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 740
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$16000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$16100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updateThisDevice(I)V

    return-void
.end method

.method static synthetic access$16200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/net/InetAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Ljava/net/InetAddress;

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setWifiP2pInfoOnGroupFormation(Ljava/net/InetAddress;)V

    return-void
.end method

.method static synthetic access$16300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->isWfdSinkConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$16400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pDevice;Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 740
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->p2pGoGetSta(Landroid/net/wifi/p2p/WifiP2pDevice;Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mOngoingGroupRemovalState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$OngoingGroupRemovalState;

    return-object v0
.end method

.method static synthetic access$16600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$16700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->handleGroupRemoved()V

    return-void
.end method

.method static synthetic access$16800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$16900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    return-object v0
.end method

.method static synthetic access$17000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$17200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingJoinState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingJoinState;

    return-object v0
.end method

.method static synthetic access$17300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$17400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$17500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$17600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$17700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$18000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->resetWifiP2pInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 740
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic access$18100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->isGroupRemoved()Z

    move-result v0

    return v0
.end method

.method static synthetic access$18200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->isWfdSourceConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$18300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pConnectionChangedBroadcast(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;)V

    return-void
.end method

.method static synthetic access$18400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$18500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisabledState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pPersistentGroupsChangedBroadcast()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pEnablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setWifiOn_WifiAPOff()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mInactiveState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pStateChangedBroadcast(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->initializeP2pSettings()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendPeersChangedBroadcast()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mP2pDisablingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisablingState;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setAndPersistDeviceName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I

    .prologue
    .line 740
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pWfdInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setWfdInfo(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearSupplicantServiceRequest()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->isWfdSinkEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->p2pConfigWfdSink()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pDiscoveryChangedBroadcast(Z)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->p2pUnconfigWfdSink()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updateSupplicantServiceRequest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    .line 740
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    .line 740
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->removeLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearLocalServices(Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .prologue
    .line 740
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .prologue
    .line 740
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->removeServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Messenger;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearServiceRequests(Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->isConfigInvalid(Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mProvisionDiscoveryState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$ProvisionDiscoveryState;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->reinvokePersistentGroup(Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupNegotiationState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    return-object v0
.end method

.method static synthetic access$8402(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 740
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    return-object p1
.end method

.method static synthetic access$8700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingNegotiationRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mUserAuthorizingInviteRequestState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$UserAuthorizingInviteRequestState;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->p2pConnectWithPinDisplay(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 740
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->notifyInvitationSent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$9700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroupCreatingState:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 740
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private addLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 4
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4455
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearClientDeadChannels()V

    .line 4456
    invoke-direct {p0, p1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    move-result-object v0

    .line 4457
    .local v0, "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    if-nez v0, :cond_1

    .line 4470
    :cond_0
    :goto_0
    return v1

    .line 4461
    :cond_1
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$19100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4465
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3, p2}, Lcom/android/server/wifi/WifiNative;->p2pServiceAdd(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4466
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$19100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v1, v2

    .line 4470
    goto :goto_0
.end method

.method private addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 5
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "stringId"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 3620
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 3621
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900ef

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 3623
    .local v1, "row":Landroid/view/View;
    const v2, 0x10203e0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3624
    const v2, 0x102031f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3625
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3626
    return-void
.end method

.method private addServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)Z
    .locals 4
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .prologue
    const/4 v1, 0x1

    .line 4379
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearClientDeadChannels()V

    .line 4380
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    move-result-object v0

    .line 4381
    .local v0, "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    if-nez v0, :cond_1

    .line 4382
    const/4 v1, 0x0

    .line 4395
    :cond_0
    :goto_0
    return v1

    .line 4385
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # ++operator for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$18804(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)B

    .line 4387
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$18800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)B

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # ++operator for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$18804(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)B

    .line 4388
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$18800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)B

    move-result v2

    invoke-virtual {p2, v2}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->setTransactionId(I)V

    .line 4389
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$19000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$18800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)B

    move-result v3

    invoke-virtual {v2, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4391
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$8500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4395
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updateSupplicantServiceRequest()Z

    move-result v1

    goto :goto_0
.end method

.method private clearClientDeadChannels()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 4543
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4545
    .local v1, "deadClients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Messenger;>;"
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$18700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    .line 4546
    .local v0, "c":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 4547
    .local v5, "msg":Landroid/os/Message;
    const v6, 0x22031

    iput v6, v5, Landroid/os/Message;->what:I

    .line 4548
    iput v7, v5, Landroid/os/Message;->arg1:I

    .line 4549
    iput v7, v5, Landroid/os/Message;->arg2:I

    .line 4550
    const/4 v6, 0x0

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4552
    :try_start_0
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$19200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4553
    :catch_0
    move-exception v2

    .line 4554
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "detect dead channel"

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4555
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$19200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4559
    .end local v0    # "c":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Messenger;

    .line 4560
    .local v4, "m":Landroid/os/Messenger;
    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearClientInfo(Landroid/os/Messenger;)V

    goto :goto_1

    .line 4562
    .end local v4    # "m":Landroid/os/Messenger;
    :cond_1
    return-void
.end method

.method private clearClientInfo(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "m"    # Landroid/os/Messenger;

    .prologue
    .line 4506
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearLocalServices(Landroid/os/Messenger;)V

    .line 4507
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearServiceRequests(Landroid/os/Messenger;)V

    .line 4508
    return-void
.end method

.method private clearLocalServices(Landroid/os/Messenger;)V
    .locals 5
    .param p1, "m"    # Landroid/os/Messenger;

    .prologue
    .line 4489
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    move-result-object v0

    .line 4490
    .local v0, "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    if-nez v0, :cond_1

    .line 4503
    :cond_0
    :goto_0
    return-void

    .line 4494
    :cond_1
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$19100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .line 4495
    .local v2, "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3, v2}, Lcom/android/server/wifi/WifiNative;->p2pServiceDel(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    goto :goto_1

    .line 4498
    .end local v2    # "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    :cond_2
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$19100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 4499
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$19000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 4500
    const-string v3, "remove client information from framework"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4501
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$18700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v3

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$19200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private clearServiceRequests(Landroid/os/Messenger;)V
    .locals 3
    .param p1, "m"    # Landroid/os/Messenger;

    .prologue
    .line 4431
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    move-result-object v0

    .line 4432
    .local v0, "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    if-nez v0, :cond_1

    .line 4452
    :cond_0
    :goto_0
    return-void

    .line 4436
    :cond_1
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$19000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4440
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$19000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 4442
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$19100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 4443
    const-string v1, "remove channel information from framework"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4444
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$18700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v1

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$19200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4447
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$8500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4451
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updateSupplicantServiceRequest()Z

    goto :goto_0
.end method

.method private clearSupplicantServiceRequest()V
    .locals 2

    .prologue
    .line 4369
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$8500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4373
    :goto_0
    return-void

    .line 4371
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$8500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->p2pServDiscCancelReq(Ljava/lang/String;)Z

    .line 4372
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$8502(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method private fetchCurrentDeviceDetails(Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 3817
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->getGroupCapability(Ljava/lang/String;)I

    move-result v0

    .line 3818
    .local v0, "gc":I
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateGroupCapability(Ljava/lang/String;I)V

    .line 3819
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    return-object v1
.end method

.method private getClientInfo(Landroid/os/Messenger;Z)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    .locals 3
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "createIfNotExist"    # Z

    .prologue
    .line 4572
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$18700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    .line 4574
    .local v0, "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 4575
    const-string v1, "add a new client"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4576
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    .end local v0    # "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/os/Messenger;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;)V

    .line 4577
    .restart local v0    # "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$18700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4580
    :cond_0
    return-object v0
.end method

.method private getClientList(I)[Ljava/lang/String;
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 3938
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v2, "p2p_client_list"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3939
    .local v0, "p2pClients":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3940
    const/4 v1, 0x0

    .line 3942
    :goto_0
    return-object v1

    :cond_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 4037
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 4038
    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    .line 4039
    iget-object p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 4042
    .end local p1    # "deviceAddress":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private getNetworkIdFromClientList(Ljava/lang/String;)I
    .locals 11
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    .line 3916
    if-nez p1, :cond_1

    move v7, v9

    .line 3929
    :cond_0
    :goto_0
    return v7

    .line 3918
    :cond_1
    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getGroupList()Ljava/util/Collection;

    move-result-object v3

    .line 3919
    .local v3, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 3920
    .local v2, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v7

    .line 3921
    .local v7, "netId":I
    invoke-direct {p0, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientList(I)[Ljava/lang/String;

    move-result-object v8

    .line 3922
    .local v8, "p2pClientList":[Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 3923
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v1, v0, v5

    .line 3924
    .local v1, "client":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 3923
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "client":Ljava/lang/String;
    .end local v2    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "netId":I
    .end local v8    # "p2pClientList":[Ljava/lang/String;
    :cond_3
    move v7, v9

    .line 3929
    goto :goto_0
.end method

.method private getPersistedDeviceName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 4046
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_p2p_device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4048
    .local v0, "deviceName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 4051
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4053
    .local v1, "id":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4055
    .end local v0    # "deviceName":Ljava/lang/String;
    .end local v1    # "id":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private handleGroupCreationFailure()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 4151
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->resetWifiP2pInfo()Z

    move-result v0

    .line 4152
    .local v0, "isFastConnGC":Z
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$3900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2, v3, v4, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 4155
    sget-object v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupRemoveReason:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$15600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v3

    if-ne v2, v3, :cond_5

    .line 4156
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V

    .line 4164
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDeviceList;)Z

    move-result v1

    .line 4167
    .local v1, "peersChanged":Z
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->containsPeer(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4169
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4170
    const-string v2, "peer device was removed from mPeers!"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4171
    const/4 v1, 0x1

    .line 4176
    :cond_0
    if-eqz v1, :cond_1

    .line 4177
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendPeersChangedBroadcast()V

    .line 4180
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 4181
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$8502(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 4185
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->isWfdSinkEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    .line 4186
    const v2, 0x22001

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    .line 4190
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$15800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4191
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x2300c

    invoke-virtual {v2, v3, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 4192
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z
    invoke-static {v2, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$15802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 4196
    :cond_3
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMtkWpsp2pnfcSupport:Z
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$400()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4197
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTmpGcIp:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$4302(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 4198
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTmpGoIp:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$4402(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 4201
    :cond_4
    return-void

    .line 4158
    .end local v1    # "peersChanged":Z
    :cond_5
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupRemoveReason:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$15600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pConnectionChangedBroadcast(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;)V

    goto :goto_0
.end method

.method private handleGroupRemoved()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 4204
    const-string v7, "handleGroupRemoved"

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4205
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v7, :cond_0

    .line 4206
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleGroupRemoved, isGroupOwner = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v8}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4208
    :cond_0
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4209
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->stopDhcpServer(Ljava/lang/String;)V

    .line 4212
    new-instance v2, Ljava/io/File;

    const-string v7, "/data/misc/dhcp/dnsmasq.p2p0.leases"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4213
    .local v2, "dhcpFile":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DHCP file exists="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4214
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4215
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 4216
    .local v0, "b":Z
    if-eqz v0, :cond_1

    const-string v7, "Delete p2p0 dhcp info file OK!"

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4247
    .end local v0    # "b":Z
    .end local v2    # "dhcpFile":Ljava/io/File;
    :cond_1
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v7, v7, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v8}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4251
    :goto_1
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    .line 4255
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v8}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wifi/WifiNative;->setP2pGroupIdle(Ljava/lang/String;I)Z

    .line 4257
    const/4 v6, 0x0

    .line 4260
    .local v6, "peersChanged":Z
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 4261
    .local v1, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v1, :cond_3

    .line 4262
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleGroupRemoved, call mPeers.remove - d.deviceName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " d.deviceAddress = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4265
    :cond_3
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v7, v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    .line 4221
    .end local v1    # "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "peersChanged":Z
    :cond_4
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$13900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/DhcpStateMachine;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 4222
    const-string v7, "stop DHCP client"

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4223
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$13900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/DhcpStateMachine;

    move-result-object v7

    const v8, 0x30002

    invoke-virtual {v7, v8}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 4225
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 4226
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to stop dhcp on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v8}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 4231
    :goto_3
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$13900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/DhcpStateMachine;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/DhcpStateMachine;->doQuit()V

    .line 4232
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v7, v10}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$13902(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    .line 4234
    :try_start_1
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v7, v7, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v8}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 4235
    :catch_0
    move-exception v3

    .line 4236
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to remove iface from local network: RemoteException="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4228
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_5
    const-string v7, "Stop dhcp successfully!"

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 4237
    :catch_1
    move-exception v5

    .line 4238
    .local v5, "ie":Ljava/lang/IllegalStateException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to remove iface from local network: IllegalStateException="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4241
    .end local v5    # "ie":Ljava/lang/IllegalStateException;
    :cond_6
    const-string v7, "mDhcpStateMachine is null. No dhcp client!"

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4248
    :catch_2
    move-exception v3

    .line 4249
    .local v3, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to clear addresses "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4267
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "peersChanged":Z
    :cond_7
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v8}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v6, 0x1

    .line 4268
    :cond_8
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v7, v8}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDeviceList;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v6, 0x1

    .line 4269
    :cond_9
    if-eqz v6, :cond_a

    .line 4270
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendPeersChangedBroadcast()V

    .line 4273
    :cond_a
    iput-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 4274
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 4275
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v7, v10}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$8502(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 4277
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z
    invoke-static {v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$15800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 4278
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v7

    const v8, 0x2300c

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 4279
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mTemporarilyDisconnectedWifi:Z
    invoke-static {v7, v9}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$15802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 4283
    :cond_b
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupCreatedEntirely:Z
    invoke-static {v7, v9}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$17102(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 4285
    return-void
.end method

.method private initializeP2pSettings()V
    .locals 4

    .prologue
    .line 4107
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setPersistentReconnect(Z)Z

    .line 4108
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getPersistedDeviceName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 4109
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setDeviceName(Ljava/lang/String;)Z

    .line 4111
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setP2pSsidPostfix(Ljava/lang/String;)Z

    .line 4112
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setDeviceType(Ljava/lang/String;)Z

    .line 4115
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v2, "virtual_push_button physical_display keypad"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setConfigMethods(Ljava/lang/String;)Z

    .line 4117
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v2, "sta"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setConcurrencyPriority(Ljava/lang/String;)Z

    .line 4119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "old DeviceAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4120
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->p2pGetDeviceAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 4121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new DeviceAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4122
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updateThisDevice(I)V

    .line 4124
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$18700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 4125
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->p2pFlush()Z

    .line 4126
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->p2pServiceFlush()Z

    .line 4127
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceTransactionId:B
    invoke-static {v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$18802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;B)B

    .line 4128
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$8502(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 4130
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_country_code"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4132
    .local v0, "countryCode":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4133
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pStateMachine:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    move-result-object v1

    const v2, 0x23010

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 4136
    :cond_0
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->RELOAD:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$18600()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updatePersistentNetworks(Z)V

    .line 4139
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const-string v2, "ro.mtk_wifi_mcc_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMccSupport:Z
    invoke-static {v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$14902(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 4140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is Mcc Supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMccSupport:Z
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$14900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4142
    return-void
.end method

.method private isConfigInvalid(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    const/4 v0, 0x1

    .line 3805
    if-nez p1, :cond_1

    .line 3808
    :cond_0
    :goto_0
    return v0

    .line 3806
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3807
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3808
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGroupRemoved()Z
    .locals 5

    .prologue
    .line 4906
    const/4 v2, 0x1

    .line 4908
    .local v2, "removed":Z
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 4909
    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v3, :cond_0

    .line 4911
    const/4 v2, 0x0

    goto :goto_0

    .line 4914
    .end local v0    # "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isGroupRemoved(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4915
    return v2
.end method

.method private isWfdSinkConnected()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4975
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->isWfdSinkEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v3, :cond_1

    move v0, v2

    .line 4977
    .local v0, "basicCondition":Z
    :goto_0
    if-nez v0, :cond_2

    .line 4988
    :cond_0
    :goto_1
    return v1

    .end local v0    # "basicCondition":Z
    :cond_1
    move v0, v1

    .line 4975
    goto :goto_0

    .line 4980
    .restart local v0    # "basicCondition":Z
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 4982
    goto :goto_1

    .line 4985
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientAmount()I

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 4986
    goto :goto_1
.end method

.method private isWfdSinkEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4960
    const-string v1, "ro.mtk_wfd_sink_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4961
    const-string v0, "[wfd sink] isWfdSinkEnabled, property unset"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4971
    :goto_0
    const/4 v0, 0x0

    :cond_0
    return v0

    .line 4962
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-nez v1, :cond_2

    .line 4963
    const-string v0, "[wfd sink] isWfdSinkEnabled, device wfdInfo unset"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 4964
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 4967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[wfd sink] isWfdSinkEnabled, type :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isWfdSourceConnected()Z
    .locals 2

    .prologue
    .line 4992
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-nez v0, :cond_0

    .line 4993
    const-string v0, "[wfd source] isWfdSourceConnected, device wfdInfo unset"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 5003
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 4994
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 4997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[wfd source] isWfdSourceConnected, type :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 4998
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->isGroupRemoved()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4999
    const-string v0, "[wfd source] isWfdSourceConnected, GroupRemoved"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 5001
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private nameValueAssign([Ljava/lang/String;I)I
    .locals 4
    .param p1, "nameValue"    # [Ljava/lang/String;
    .param p2, "integer"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 4774
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 4780
    :cond_0
    :goto_0
    return v0

    .line 4777
    :cond_1
    aget-object v1, p1, v3

    if-eqz v1, :cond_0

    .line 4778
    aget-object v0, p1, v3

    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private nameValueAssign([Ljava/lang/String;II)I
    .locals 4
    .param p1, "nameValue"    # [Ljava/lang/String;
    .param p2, "integer"    # I
    .param p3, "base"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 4786
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 4792
    :cond_0
    :goto_0
    return v0

    .line 4789
    :cond_1
    aget-object v1, p1, v3

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 4790
    aget-object v0, p1, v3

    invoke-static {v0, p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private nameValueAssign([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "nameValue"    # [Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 4766
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 4767
    :cond_0
    const/4 v0, 0x0

    .line 4769
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    aget-object v0, p1, v0

    goto :goto_0
.end method

.method private notifyInvitationReceived()V
    .locals 9

    .prologue
    .line 3648
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 3649
    .local v3, "r":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v5, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 3650
    .local v5, "wps":Landroid/net/wifi/WpsInfo;
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x10900ee

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 3653
    .local v4, "textEntryView":Landroid/view/View;
    const v6, 0x1020352

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 3654
    .local v1, "group":Landroid/view/ViewGroup;
    const v6, 0x10404ce

    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v1, v6, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 3657
    const v6, 0x10203df

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 3659
    .local v2, "pin":Landroid/widget/EditText;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x10404cd

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x10404ca

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$5;

    invoke-direct {v8, p0, v5, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$5;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/net/wifi/WpsInfo;Landroid/widget/EditText;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x10404cb

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$4;

    invoke-direct {v8, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$4;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$3;

    invoke-direct {v7, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$3;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3688
    .local v0, "dialog":Landroid/app/AlertDialog;
    iget v6, v5, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v6, :pswitch_data_0

    .line 3701
    :goto_0
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0x5

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    .line 3704
    new-instance v6, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$6;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$6;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 3721
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 3722
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3723
    return-void

    .line 3690
    :pswitch_0
    const-string v6, "Enter pin section visible"

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3691
    const v6, 0x10203de

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3694
    :pswitch_1
    const-string v6, "Shown pin section visible"

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3695
    const v6, 0x10404d1

    iget-object v7, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-direct {p0, v1, v6, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_0

    .line 3688
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyInvitationSent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "peerAddress"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 3629
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 3631
    .local v2, "r":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x10900ee

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 3634
    .local v3, "textEntryView":Landroid/view/View;
    const v4, 0x1020352

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 3635
    .local v1, "group":Landroid/view/ViewGroup;
    const v4, 0x10404cf

    invoke-direct {p0, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 3636
    const v4, 0x10404d1

    invoke-direct {p0, v1, v4, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 3638
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x10404cc

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3643
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 3644
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3645
    return-void
.end method

.method private notifyP2pEnableFailure()V
    .locals 5

    .prologue
    .line 3609
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 3610
    .local v1, "r":Landroid/content/res/Resources;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x10404c5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x10404c7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3615
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 3616
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3617
    return-void
.end method

.method private obtainMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 2
    .param p1, "srcMsg"    # Landroid/os/Message;

    .prologue
    .line 4315
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4316
    .local v0, "msg":Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 4317
    return-object v0
.end method

.method private p2pConfigWfdSink()V
    .locals 6

    .prologue
    .line 4929
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->resetWifiP2pConn()V

    .line 4931
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v4, "8-0050F204-2"

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNative;->setDeviceType(Ljava/lang/String;)Z

    .line 4933
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative;->p2pGetDeviceCapa()Ljava/lang/String;

    move-result-object v2

    .line 4934
    .local v2, "result":Ljava/lang/String;
    const-string v3, "p2p_dev_capa="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4935
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4936
    .local v1, "nameValue":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDeviceCapa:I
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$19500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I

    move-result v4

    const/16 v5, 0xa

    invoke-direct {p0, v1, v4, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->nameValueAssign([Ljava/lang/String;II)I

    move-result v4

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDeviceCapa:I
    invoke-static {v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$19502(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I

    .line 4940
    .end local v1    # "nameValue":[Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[wfd sink] p2pConfigWfdSink() ori deviceCapa = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDeviceCapa:I
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$19500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4942
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDeviceCapa:I
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$19500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I

    move-result v3

    if-lez v3, :cond_0

    .line 4943
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDeviceCapa:I
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$19500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit16 v4, v4, 0xdf

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4944
    .local v0, "DeviceCapa_local":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3, v0}, Lcom/android/server/wifi/WifiNative;->p2pSetDeviceCapa(Ljava/lang/String;)Ljava/lang/String;

    .line 4945
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[wfd sink] p2pConfigWfdSink() after: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->p2pGetDeviceCapa()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4947
    .end local v0    # "DeviceCapa_local":Ljava/lang/String;
    :cond_0
    return-void

    .line 4938
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const/4 v4, -0x1

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDeviceCapa:I
    invoke-static {v3, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$19502(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I

    goto :goto_0
.end method

.method private p2pConnectWithPinDisplay(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 3827
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->fetchCurrentDeviceDetails(Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 3829
    .local v0, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wifi/WifiNative;->p2pConnect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;

    move-result-object v1

    .line 3831
    .local v1, "pin":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 3832
    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->notifyInvitationSent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3836
    :goto_0
    return-void

    .line 3833
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private p2pGoGetSta(Landroid/net/wifi/p2p/WifiP2pDevice;Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 9
    .param p1, "p2pDev"    # Landroid/net/wifi/p2p/WifiP2pDevice;
    .param p2, "p2pMAC"    # Ljava/lang/String;

    .prologue
    .line 4731
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 4732
    :cond_0
    const-string v7, "gc or gc mac is null"

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 4733
    const/4 p1, 0x0

    .line 4762
    .end local p1    # "p2pDev":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    return-object p1

    .line 4736
    .restart local p1    # "p2pDev":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2
    iput-object p2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 4737
    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v7, p2}, Lcom/android/server/wifi/WifiNative;->p2pGoGetSta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4738
    .local v4, "p2pSta":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 4740
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "p2pGoGetSta() return: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4742
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 4743
    .local v6, "tokens":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 4744
    .local v5, "token":Ljava/lang/String;
    const-string v7, "p2p_device_name="

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4745
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4746
    .local v3, "nameValue":[Ljava/lang/String;
    iget-object v7, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-direct {p0, v3, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->nameValueAssign([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 4743
    .end local v3    # "nameValue":[Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4747
    :cond_4
    const-string v7, "p2p_primary_device_type="

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4748
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4749
    .restart local v3    # "nameValue":[Ljava/lang/String;
    iget-object v7, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-direct {p0, v3, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->nameValueAssign([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    goto :goto_1

    .line 4750
    .end local v3    # "nameValue":[Ljava/lang/String;
    :cond_5
    const-string v7, "p2p_group_capab="

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4751
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4752
    .restart local v3    # "nameValue":[Ljava/lang/String;
    iget v7, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    invoke-direct {p0, v3, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->nameValueAssign([Ljava/lang/String;I)I

    move-result v7

    iput v7, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    goto :goto_1

    .line 4753
    .end local v3    # "nameValue":[Ljava/lang/String;
    :cond_6
    const-string v7, "p2p_dev_capab="

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4754
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4755
    .restart local v3    # "nameValue":[Ljava/lang/String;
    iget v7, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    invoke-direct {p0, v3, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->nameValueAssign([Ljava/lang/String;I)I

    move-result v7

    iput v7, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    goto :goto_1

    .line 4756
    .end local v3    # "nameValue":[Ljava/lang/String;
    :cond_7
    const-string v7, "p2p_config_methods="

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4757
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4758
    .restart local v3    # "nameValue":[Ljava/lang/String;
    iget v7, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    invoke-direct {p0, v3, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->nameValueAssign([Ljava/lang/String;I)I

    move-result v7

    iput v7, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    goto :goto_1
.end method

.method private p2pUnconfigWfdSink()V
    .locals 3

    .prologue
    .line 4950
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->resetWifiP2pConn()V

    .line 4952
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setDeviceType(Ljava/lang/String;)Z

    .line 4953
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDeviceCapa:I
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$19500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I

    move-result v0

    if-lez v0, :cond_0

    .line 4954
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDeviceCapa:I
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$19500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->p2pSetDeviceCapa(Ljava/lang/String;)Ljava/lang/String;

    .line 4955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[wfd sink] p2pUnconfigWfdSink(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->p2pGetDeviceCapa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4957
    :cond_0
    return-void
.end method

.method private reinvokePersistentGroup(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3845
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->fetchCurrentDeviceDetails(Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 3847
    .local v0, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v1

    .line 3848
    .local v1, "join":Z
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiNative;->p2pGetSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3849
    .local v3, "ssid":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "target ssid is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " join:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3851
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupLimit()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3852
    const-string v6, "target device reaches group limit."

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3856
    const/4 v1, 0x0

    .line 3871
    :cond_0
    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isDeviceLimit()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3872
    const-string v5, "target device reaches the device limit."

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 3903
    :cond_1
    :goto_0
    return v4

    .line 3857
    :cond_2
    if-eqz v1, :cond_0

    .line 3858
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7, v3}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3859
    .local v2, "netId":I
    if-ltz v2, :cond_0

    .line 3863
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Lcom/android/server/wifi/WifiNative;->p2pReinvoke(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    .line 3867
    goto :goto_0

    .line 3876
    .end local v2    # "netId":I
    :cond_3
    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isInvitationCapable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3877
    const/4 v2, -0x2

    .line 3878
    .restart local v2    # "netId":I
    iget v6, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    if-ltz v6, :cond_6

    .line 3879
    iget-object v6, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    iget v8, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    invoke-virtual {v7, v8}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getOwnerAddr(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3880
    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 3885
    :cond_4
    :goto_1
    if-gez v2, :cond_5

    .line 3886
    iget-object v6, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getNetworkIdFromClientList(Ljava/lang/String;)I

    move-result v2

    .line 3888
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "netId related with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3889
    if-ltz v2, :cond_1

    .line 3891
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Lcom/android/server/wifi/WifiNative;->p2pReinvoke(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3893
    iput v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    move v4, v5

    .line 3894
    goto :goto_0

    .line 3883
    :cond_6
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 3896
    :cond_7
    const-string v5, "p2pReinvoke() failed, update networks"

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 3897
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->RELOAD:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$18600()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updatePersistentNetworks(Z)V

    goto/16 :goto_0
.end method

.method private removeClientFromList(ILjava/lang/String;Z)Z
    .locals 11
    .param p1, "netId"    # I
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "isRemovable"    # Z

    .prologue
    const/4 v7, 0x1

    .line 3953
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3954
    .local v6, "modifiedClientList":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientList(I)[Ljava/lang/String;

    move-result-object v2

    .line 3955
    .local v2, "currentClientList":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 3956
    .local v4, "isClientRemoved":Z
    if-eqz v2, :cond_1

    .line 3957
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v0, v3

    .line 3958
    .local v1, "client":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 3959
    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3960
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3957
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3962
    :cond_0
    const/4 v4, 0x1

    goto :goto_1

    .line 3966
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "client":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_2

    if-eqz p3, :cond_2

    .line 3968
    const-string v8, "Remove unknown network"

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3969
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-virtual {v8, p1}, Landroid/net/wifi/p2p/WifiP2pGroupList;->remove(I)V

    .line 3985
    :goto_2
    return v7

    .line 3973
    :cond_2
    if-nez v4, :cond_3

    .line 3975
    const/4 v7, 0x0

    goto :goto_2

    .line 3978
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Modified client list: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3979
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 3980
    const-string v8, "\"\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3982
    :cond_4
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v9, "p2p_client_list"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, p1, v9, v10}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 3984
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    goto :goto_2
.end method

.method private removeLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V
    .locals 3
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    .line 4474
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    move-result-object v0

    .line 4475
    .local v0, "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    if-nez v0, :cond_1

    .line 4486
    :cond_0
    :goto_0
    return-void

    .line 4479
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, p2}, Lcom/android/server/wifi/WifiNative;->p2pServiceDel(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    .line 4481
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$19100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4482
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$19000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$19100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 4483
    const-string v1, "remove client information from framework"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4484
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$18700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v1

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$19200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private removeServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V
    .locals 5
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .prologue
    .line 4399
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    move-result-object v0

    .line 4400
    .local v0, "clientInfo":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    if-nez v0, :cond_1

    .line 4427
    :cond_0
    :goto_0
    return-void

    .line 4406
    :cond_1
    const/4 v2, 0x0

    .line 4407
    .local v2, "removed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$19000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 4408
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$19000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4409
    const/4 v2, 0x1

    .line 4410
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$19000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 4415
    :cond_2
    if-eqz v2, :cond_0

    .line 4417
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$19000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_3

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$19100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 4418
    const-string v3, "remove client information from framework"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4419
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$18700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v3

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$19200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4422
    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$8500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4426
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->updateSupplicantServiceRequest()Z

    goto :goto_0

    .line 4407
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I

    .prologue
    .line 4290
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 4294
    :goto_0
    return-void

    .line 4291
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 4292
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 4293
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$18900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    .prologue
    .line 4297
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 4302
    :goto_0
    return-void

    .line 4298
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 4299
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 4300
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 4301
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$18900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 4305
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 4310
    :goto_0
    return-void

    .line 4306
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 4307
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 4308
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4309
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$18900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private resetWifiP2pConn()V
    .locals 2

    .prologue
    .line 4920
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v0, :cond_1

    .line 4921
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInterface:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    .line 4926
    :cond_0
    :goto_0
    return-void

    .line 4922
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const v1, 0x23001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4924
    const v0, 0x2200a

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method private resetWifiP2pInfo()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3997
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$3300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$3300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    if-ltz v2, :cond_0

    .line 3998
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clear netId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$3300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3999
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$3300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pGroupList;->remove(I)V

    .line 4003
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$3300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v2

    const/4 v3, -0x3

    iput v3, v2, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    .line 4008
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v2, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mInterface:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4015
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iput-boolean v4, v2, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    .line 4016
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iput-boolean v4, v2, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    .line 4017
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    .line 4019
    invoke-direct {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pTxBroadcast(Z)V

    .line 4022
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iput-boolean v4, v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNegoChannelConflict:Z

    .line 4025
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mMccSupport:Z
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$14900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 4026
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2, v4}, Lcom/android/server/wifi/WifiNative;->p2pSetCCMode(I)Ljava/lang/String;

    .line 4028
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mConnectToPeer:Z
    invoke-static {v2, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$7602(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 4032
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->setFastConnectInfoOnGroupTermination()Z

    move-result v2

    return v2

    .line 4009
    :catch_0
    move-exception v1

    .line 4010
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetWifiP2pInfo() disableIpv6 RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4011
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 4012
    .local v0, "ie":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetWifiP2pInfo() disableIpv6 IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendP2pConnectionChangedBroadcast()V
    .locals 5

    .prologue
    .line 3538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sending p2p connection changed broadcast, mGroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3539
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3540
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3542
    const-string v1, "wifiP2pInfo"

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pInfo;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3543
    const-string v1, "networkInfo"

    new-instance v2, Landroid/net/NetworkInfo;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$3900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3544
    const-string v1, "p2pGroupInfo"

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3545
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3546
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x2300b

    new-instance v3, Landroid/net/NetworkInfo;

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$3900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 3548
    return-void
.end method

.method private sendP2pConnectionChangedBroadcast(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;)V
    .locals 5
    .param p1, "reason"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .prologue
    .line 4586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sending p2p connection changed broadcast, reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mGroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mP2pOperFreq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pOperFreq:I
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$11100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4589
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4590
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4592
    const-string v1, "wifiP2pInfo"

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pInfo;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4593
    const-string v1, "networkInfo"

    new-instance v2, Landroid/net/NetworkInfo;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$3900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4594
    const-string v1, "p2pGroupInfo"

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4595
    const-string v1, "p2pOperFreq"

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pOperFreq:I
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$11100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4597
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    if-ne v1, p1, :cond_0

    .line 4598
    const-string v1, "reason="

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4609
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    sget-object v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGroupRemoveReason:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    invoke-static {v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$15602(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 4610
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4611
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$1100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x2300b

    new-instance v3, Landroid/net/NetworkInfo;

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$3900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 4613
    return-void

    .line 4599
    :cond_0
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->MTK_EXPAND_02:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    if-ne v1, p1, :cond_1

    .line 4600
    const-string v1, "channel conflict, user decline, broadcast with reason=-3"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4601
    const-string v1, "reason="

    const/4 v2, -0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 4602
    :cond_1
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->MTK_EXPAND_01:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    if-ne v1, p1, :cond_2

    .line 4603
    const-string v1, "[wfd sink/source] broadcast with reason=-2"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4604
    const-string v1, "reason="

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 4606
    :cond_2
    const-string v1, "reason="

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private sendP2pDiscoveryChangedBroadcast(Z)V
    .locals 3
    .param p1, "started"    # Z

    .prologue
    .line 3509
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryStarted:Z
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    move-result v1

    if-ne v1, p1, :cond_0

    .line 3520
    :goto_0
    return-void

    .line 3510
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mDiscoveryStarted:Z
    invoke-static {v1, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5202(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 3512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discovery change broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3514
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3515
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3516
    const-string v2, "discoveryState"

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3519
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 3516
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private sendP2pFreqConflictBroadcast()V
    .locals 3

    .prologue
    .line 4654
    const-string v1, "sendP2pFreqConflictBroadcast"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4655
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.wifi.p2p.freq.conflict"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4656
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4659
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4660
    return-void
.end method

.method private sendP2pGOandGCRequestConnectBroadcast()V
    .locals 4

    .prologue
    .line 4627
    const-string v2, "sendP2pGOandGCRequestConnectBroadcast"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4628
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mediatek.wifi.p2p.GO.GCrequest.connect"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4629
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4632
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 4633
    .local v0, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4634
    const-string v2, "deviceName"

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4638
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4639
    return-void

    .line 4636
    :cond_0
    const-string v2, "deviceName"

    const-string v3, "wifidisplay source"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private sendP2pOPChannelBroadcast()V
    .locals 3

    .prologue
    .line 4643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendP2pOPChannelBroadcast: OperFreq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pOperFreq:I
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$11100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4644
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.wifi.p2p.OP.channel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4645
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4648
    const-string v1, "p2pOperFreq"

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mP2pOperFreq:I
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$11100(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4649
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4650
    return-void
.end method

.method private sendP2pPersistentGroupsChangedBroadcast()V
    .locals 3

    .prologue
    .line 3551
    const-string v1, "sending p2p persistent groups changed broadcast"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3552
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.PERSISTENT_GROUPS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3553
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3554
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3555
    return-void
.end method

.method private sendP2pStateChangedBroadcast(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 3496
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3497
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3498
    if-eqz p1, :cond_0

    .line 3499
    const-string v1, "wifi_p2p_state"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3505
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3506
    return-void

    .line 3502
    :cond_0
    const-string v1, "wifi_p2p_state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private sendP2pTxBroadcast(Z)V
    .locals 3
    .param p1, "bStart"    # Z

    .prologue
    .line 4617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sending p2p Tx broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4618
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.wifi.p2p.Tx"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4619
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4621
    const-string v1, "start"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4622
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4623
    return-void
.end method

.method private sendPeersChangedBroadcast()V
    .locals 4

    .prologue
    .line 3530
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3531
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "wifiP2pDeviceList"

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3532
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3534
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3535
    return-void
.end method

.method private sendServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    .locals 8
    .param p1, "resp"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .prologue
    const/4 v7, 0x0

    .line 4516
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$18700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    .line 4517
    .local v0, "c":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$19000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getTransactionId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .line 4518
    .local v4, "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    if-eqz v4, :cond_0

    .line 4519
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 4520
    .local v3, "msg":Landroid/os/Message;
    const v5, 0x22032

    iput v5, v3, Landroid/os/Message;->what:I

    .line 4521
    iput v7, v3, Landroid/os/Message;->arg1:I

    .line 4522
    iput v7, v3, Landroid/os/Message;->arg2:I

    .line 4523
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4525
    :try_start_0
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$19200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4526
    :catch_0
    move-exception v1

    .line 4527
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "detect dead channel"

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4528
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$19200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearClientInfo(Landroid/os/Messenger;)V

    .line 4533
    .end local v0    # "c":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    :cond_1
    return-void
.end method

.method private sendThisDeviceChangedBroadcast()V
    .locals 4

    .prologue
    .line 3523
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3524
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3525
    const-string v1, "wifiP2pDevice"

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3526
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3527
    return-void
.end method

.method private setAndPersistDeviceName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "devName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 4059
    if-nez p1, :cond_0

    .line 4072
    :goto_0
    return v0

    .line 4061
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiNative;->setDeviceName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4062
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set device name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 4066
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iput-object p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 4067
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setP2pSsidPostfix(Ljava/lang/String;)Z

    .line 4069
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_p2p_device_name"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4071
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendThisDeviceChangedBroadcast()V

    .line 4072
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setFastConnectInfoOnGroupTermination()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4665
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mBeamPlusStart:Z
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$10200(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4666
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mBeamPlusStart:Z
    invoke-static {v1, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$10202(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 4667
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->p2pBeamPlus(I)V

    .line 4671
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mRestartFastConnectAsGc:Z
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$11800(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4672
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGoFastConnectEnaled:Z
    invoke-static {v1, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$2602(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 4673
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mRestartFastConnectAsGc:Z
    invoke-static {v1, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$11802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 4674
    const/4 v0, 0x1

    .line 4690
    :goto_0
    return v0

    .line 4676
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mRestartFastConnectAsGo:Z
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$11600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4677
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGcFastConnectEnaled:Z
    invoke-static {v1, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$2702(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 4678
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFoundGo:Z
    invoke-static {v1, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$6102(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 4679
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFoundGoTimeOut:Z
    invoke-static {v1, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$6002(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 4680
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mRestartFastConnectAsGo:Z
    invoke-static {v1, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$11602(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    goto :goto_0

    .line 4684
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGcFastConnectEnaled:Z
    invoke-static {v1, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$2702(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 4685
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mGoFastConnectEnaled:Z
    invoke-static {v1, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$2602(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 4686
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFoundGo:Z
    invoke-static {v1, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$6102(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 4687
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFoundGoTimeOut:Z
    invoke-static {v1, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$6002(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 4688
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mRestartFastConnectAsGc:Z
    invoke-static {v1, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$11802(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 4689
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mRestartFastConnectAsGo:Z
    invoke-static {v1, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$11602(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    goto :goto_0
.end method

.method private setWfdInfo(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)Z
    .locals 5
    .param p1, "wfdInfo"    # Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4078
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isWfdEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4079
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3, v2}, Lcom/android/server/wifi/WifiNative;->setWfdEnable(Z)Z

    move-result v0

    .line 4086
    .local v0, "success":Z
    :goto_0
    if-nez v0, :cond_2

    .line 4087
    const-string v1, "Failed to set wfd properties, Device Info part"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 4103
    :goto_1
    return v2

    .line 4081
    .end local v0    # "success":Z
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/WifiNative;->setWfdEnable(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceInfoHex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNative;->setWfdDeviceInfo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .restart local v0    # "success":Z
    :goto_2
    goto :goto_0

    .end local v0    # "success":Z
    :cond_1
    move v0, v2

    goto :goto_2

    .line 4092
    .restart local v0    # "success":Z
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getExtendedCapability()I

    move-result v3

    if-eqz v3, :cond_3

    .line 4093
    iget-object v3, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getExtCapaHex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNative;->setWfdExtCapability(Ljava/lang/String;)Z

    move-result v0

    .line 4096
    :cond_3
    if-nez v0, :cond_4

    .line 4097
    const-string v1, "Failed to set wfd properties, Extended Capability part"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 4101
    :cond_4
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iput-object p1, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 4102
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendThisDeviceChangedBroadcast()V

    move v2, v1

    .line 4103
    goto :goto_1
.end method

.method private setWifiOn_WifiAPOff()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4798
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$19400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4799
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "wifi"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$19402(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 4802
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$19400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 4803
    .local v0, "wifiApState":I
    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 4805
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$19400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 4808
    :cond_2
    const-string v1, "call WifiManager.stopReconnectAndScan() and WifiManager.setWifiEnabled()"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4809
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$19400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Landroid/net/wifi/WifiManager;->stopReconnectAndScan(ZI)Z

    .line 4810
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$19400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 4811
    return-void
.end method

.method private setWifiP2pInfoOnGroupFormation(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "serverInetAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 3989
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    .line 3990
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    .line 3991
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iput-object p1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    .line 3992
    return-void
.end method

.method private startDhcpServer(Ljava/lang/String;)V
    .locals 7
    .param p1, "intf"    # Ljava/lang/String;

    .prologue
    .line 3558
    const/4 v2, 0x0

    .line 3560
    .local v2, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v2

    .line 3561
    new-instance v4, Landroid/net/LinkAddress;

    const-string v5, "192.168.49.1"

    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    const/16 v6, 0x18

    invoke-direct {v4, v5, v6}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v4}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 3563
    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 3564
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, p1, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 3566
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3574
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredDhcpRanges()[Ljava/lang/String;

    move-result-object v3

    .line 3575
    .local v3, "tetheringDhcpRanges":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v4}, Landroid/os/INetworkManagementService;->isTetheringStarted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3576
    const-string v4, "Stop existing tethering and restart it"

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3577
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v4}, Landroid/os/INetworkManagementService;->stopTethering()V

    .line 3579
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, p1}, Landroid/os/INetworkManagementService;->tetherInterface(Ljava/lang/String;)V

    .line 3580
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, v3}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3586
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Started Dhcp server on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3587
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "tetheringDhcpRanges":[Ljava/lang/String;
    :goto_0
    return-void

    .line 3581
    :catch_0
    move-exception v1

    .line 3582
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error configuring interface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopDhcpServer(Ljava/lang/String;)V
    .locals 7
    .param p1, "intf"    # Ljava/lang/String;

    .prologue
    .line 3591
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v5, v5, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v5, p1}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V

    .line 3592
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v5, v5, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v5}, Landroid/os/INetworkManagementService;->listTetheredInterfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 3593
    .local v4, "temp":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "List all interfaces "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3594
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 3595
    const-string v5, "Found other tethering interfaces, so keep tethering alive"

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3604
    const-string v5, "Stopped Dhcp server"

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3606
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "temp":Ljava/lang/String;
    :goto_1
    return-void

    .line 3592
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "temp":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3599
    .end local v4    # "temp":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v5, v5, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v5}, Landroid/os/INetworkManagementService;->stopTethering()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3604
    const-string v5, "Stopped Dhcp server"

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 3600
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catch_0
    move-exception v1

    .line 3601
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error stopping Dhcp server"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3604
    const-string v5, "Stopped Dhcp server"

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    const-string v6, "Stopped Dhcp server"

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    throw v5
.end method

.method private updatePersistentNetworks(Z)V
    .locals 15
    .param p1, "reload"    # Z

    .prologue
    .line 3730
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiNative;->listNetworks()Ljava/lang/String;

    move-result-object v8

    .line 3731
    .local v8, "listStr":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 3797
    :cond_0
    :goto_0
    return-void

    .line 3733
    :cond_1
    const/4 v6, 0x0

    .line 3734
    .local v6, "isSaveRequired":Z
    const-string v13, "\n"

    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3735
    .local v7, "lines":[Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 3737
    if-eqz p1, :cond_2

    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-virtual {v13}, Landroid/net/wifi/p2p/WifiP2pGroupList;->clear()Z

    .line 3740
    :cond_2
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    array-length v13, v7

    if-ge v5, v13, :cond_8

    .line 3741
    aget-object v13, v7, v5

    const-string v14, "\t"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 3742
    .local v11, "result":[Ljava/lang/String;
    if-eqz v11, :cond_3

    array-length v13, v11

    const/4 v14, 0x4

    if-ge v13, v14, :cond_4

    .line 3740
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3746
    :cond_4
    const/4 v10, -0x1

    .line 3747
    .local v10, "netId":I
    const/4 v13, 0x1

    aget-object v12, v11, v13

    .line 3748
    .local v12, "ssid":Ljava/lang/String;
    const/4 v13, 0x2

    aget-object v0, v11, v13

    .line 3749
    .local v0, "bssid":Ljava/lang/String;
    const/4 v13, 0x3

    aget-object v3, v11, v13

    .line 3751
    .local v3, "flags":Ljava/lang/String;
    const/4 v13, 0x0

    :try_start_0
    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 3757
    const-string v13, "[CURRENT]"

    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_3

    .line 3760
    const-string v13, "[P2P-PERSISTENT]"

    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_5

    .line 3765
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "clean up the unused persistent group. netId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3766
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v13, v10}, Lcom/android/server/wifi/WifiNative;->removeNetwork(I)Z

    .line 3767
    const/4 v6, 0x1

    .line 3768
    goto :goto_2

    .line 3752
    :catch_0
    move-exception v2

    .line 3753
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    .line 3771
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-virtual {v13, v10}, Landroid/net/wifi/p2p/WifiP2pGroupList;->contains(I)Z

    move-result v13

    if-nez v13, :cond_3

    .line 3775
    new-instance v4, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    .line 3776
    .local v4, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v4, v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    .line 3777
    invoke-virtual {v4, v12}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkName(Ljava/lang/String;)V

    .line 3778
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v14, "mode"

    invoke-virtual {v13, v10, v14}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3779
    .local v9, "mode":Ljava/lang/String;
    if-eqz v9, :cond_6

    const-string v13, "3"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 3780
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Landroid/net/wifi/p2p/WifiP2pGroup;->setIsGroupOwner(Z)V

    .line 3782
    :cond_6
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v13

    iget-object v13, v13, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 3783
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v13}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 3789
    :goto_3
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-virtual {v13, v4}, Landroid/net/wifi/p2p/WifiP2pGroupList;->add(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 3790
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 3785
    :cond_7
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 3786
    .local v1, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 3787
    invoke-virtual {v4, v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_3

    .line 3793
    .end local v0    # "bssid":Ljava/lang/String;
    .end local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v3    # "flags":Ljava/lang/String;
    .end local v4    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v9    # "mode":Ljava/lang/String;
    .end local v10    # "netId":I
    .end local v11    # "result":[Ljava/lang/String;
    .end local v12    # "ssid":Ljava/lang/String;
    :cond_8
    if-nez p1, :cond_9

    if-eqz v6, :cond_0

    .line 3794
    :cond_9
    iget-object v13, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 3795
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pPersistentGroupsChangedBroadcast()V

    goto/16 :goto_0
.end method

.method private updateSupplicantServiceRequest()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 4340
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearSupplicantServiceRequest()V

    .line 4342
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 4343
    .local v4, "sb":Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$18700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    .line 4346
    .local v0, "c":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$19000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 4347
    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->access$19000(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .line 4348
    .local v3, "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    if-eqz v3, :cond_1

    .line 4349
    invoke-virtual {v3}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->getSupplicantQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4346
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4354
    .end local v0    # "c":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
    .end local v1    # "i":I
    .end local v3    # "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 4362
    :cond_3
    :goto_1
    return v5

    .line 4358
    :cond_4
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v7, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v8, "00:00:00:00:00:00"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wifi/WifiNative;->p2pServDiscReq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$8502(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 4359
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$8500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 4362
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private updateThisDevice(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 4145
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iput p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 4146
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendThisDeviceChangedBroadcast()V

    .line 4147
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3487
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiP2pInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSavedPeerConfig "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSavedP2pGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mSavedP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3492
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3493
    return-void
.end method

.method public getPeerIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 4826
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPeerIpAddress deviceAddress="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4827
    if-nez p1, :cond_1

    move-object v7, v8

    .line 4902
    :cond_0
    :goto_0
    return-object v7

    .line 4831
    :cond_1
    iget-object v9, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-nez v9, :cond_2

    .line 4832
    const-string v9, "mGroup is null!"

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    move-object v7, v8

    .line 4833
    goto :goto_0

    .line 4837
    :cond_2
    iget-object v9, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v9

    if-nez v9, :cond_4

    .line 4838
    iget-object v9, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 4840
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPeerIpAddress goIpAddress="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceIP:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4841
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v8}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v8

    iget-object v7, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceIP:Ljava/lang/String;

    goto :goto_0

    .line 4843
    :cond_3
    const-string v9, "getPeerIpAddress goIpAddress=null"

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    move-object v7, v8

    .line 4844
    goto :goto_0

    .line 4852
    :cond_4
    const/4 v3, 0x0

    .line 4854
    .local v3, "fileStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v9, "/data/misc/dhcp/dnsmasq.p2p0.leases"

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4855
    .end local v3    # "fileStream":Ljava/io/FileInputStream;
    .local v4, "fileStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4856
    .local v5, "in":Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4857
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 4858
    .local v7, "str":Ljava/lang/String;
    const/4 v6, 0x0

    .line 4861
    .local v6, "lastOneIP":Ljava/lang/String;
    :goto_1
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_7

    .line 4863
    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4867
    .local v2, "fields":[Ljava/lang/String;
    array-length v9, v2

    const/4 v10, 0x3

    if-le v9, v10, :cond_5

    .line 4869
    const/4 v9, 0x2

    aget-object v7, v2, v9

    .line 4874
    :goto_2
    if-eqz v7, :cond_6

    const/4 v9, 0x1

    aget-object v9, v2, v9

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    aget-object v9, v2, v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    .line 4876
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getClientIp mac matched, get IP address = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4891
    if-eqz v4, :cond_0

    .line 4893
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 4895
    :catch_0
    move-exception v1

    .line 4896
    .local v1, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close file met IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4871
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    .line 4879
    :cond_6
    move-object v6, v7

    .line 4881
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 4882
    goto :goto_1

    .line 4885
    .end local v2    # "fields":[Ljava/lang/String;
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getClientIp interface MAC and device MAC is difference, get IP address = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4891
    if-eqz v4, :cond_8

    .line 4893
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_8
    :goto_3
    move-object v7, v6

    .line 4897
    goto/16 :goto_0

    .line 4895
    :catch_1
    move-exception v1

    .line 4896
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close file met IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 4888
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "fileStream":Ljava/io/FileInputStream;
    .end local v5    # "in":Ljava/io/DataInputStream;
    .end local v6    # "lastOneIP":Ljava/lang/String;
    .end local v7    # "str":Ljava/lang/String;
    .restart local v3    # "fileStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 4889
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4891
    if-eqz v3, :cond_9

    .line 4893
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 4901
    :cond_9
    :goto_5
    const-string v9, "getClientIp found nothing"

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    move-object v7, v8

    .line 4902
    goto/16 :goto_0

    .line 4895
    :catch_3
    move-exception v1

    .line 4896
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "close file met IOException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_5

    .line 4891
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_6
    if-eqz v3, :cond_a

    .line 4893
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 4897
    :cond_a
    :goto_7
    throw v8

    .line 4895
    :catch_4
    move-exception v1

    .line 4896
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "close file met IOException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_7

    .line 4891
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fileStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fileStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 4888
    .end local v3    # "fileStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileStream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4    # "fileStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method public getWifiConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 3

    .prologue
    .line 4818
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$19400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4819
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1, v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$19402(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 4821
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$19400(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 4324
    const-string v0, "WifiP2pService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4326
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 4332
    const-string v0, "WifiP2pService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4334
    return-void
.end method

.method public setFastConnectInfo(I)V
    .locals 6
    .param p1, "role"    # I

    .prologue
    const/4 v5, 0x1

    .line 4697
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # setter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mBeamPlusStart:Z
    invoke-static {v1, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$10202(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 4698
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, v5}, Lcom/android/server/wifi/WifiNative;->p2pBeamPlus(I)V

    .line 4700
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->addNetwork()I

    move-result v0

    .line 4701
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$3300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v1

    iput v0, v1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    .line 4702
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v2, "ssid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$3300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 4703
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v2, "key_mgmt"

    const-string v3, "WPA-PSK"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 4704
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v2, "psk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$3300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->psk:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 4705
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v2, "proto"

    const-string v3, "RSN"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 4706
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v2, "pairwise"

    const-string v3, "CCMP"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 4707
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v2, "auth_alg"

    const-string v3, "OPEN"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 4708
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v2, "disabled"

    const-string v3, "2"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 4710
    const v1, 0x2205c

    if-ne v1, p1, :cond_1

    .line 4711
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v2, "mode"

    const-string v3, "3"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 4712
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$5900(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wifi/WifiNative;->p2pSetBssid(ILjava/lang/String;)Z

    .line 4713
    const v1, 0x22001

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    .line 4726
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFastConnectInfo(): role = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n FastConnectInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$3300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4727
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    .line 4728
    return-void

    .line 4715
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v2, "mode"

    const-string v3, "0"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 4716
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->access$3300(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wifi/WifiNative;->p2pSetBssid(ILjava/lang/String;)Z

    .line 4720
    invoke-direct {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->clearSupplicantServiceRequest()V

    .line 4721
    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->p2pFind(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4722
    invoke-direct {p0, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendP2pDiscoveryChangedBroadcast(Z)V

    goto :goto_0
.end method
