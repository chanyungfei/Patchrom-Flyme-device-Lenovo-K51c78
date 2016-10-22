.class public Landroid/net/wifi/p2p/WifiP2pManager;
.super Ljava/lang/Object;
.source "WifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pLinkInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$Channel;,
        Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    }
.end annotation


# static fields
.field public static final ADD_LOCAL_SERVICE:I = 0x2201c

.field public static final ADD_LOCAL_SERVICE_FAILED:I = 0x2201d

.field public static final ADD_LOCAL_SERVICE_SUCCEEDED:I = 0x2201e

.field public static final ADD_SERVICE_REQUEST:I = 0x22025

.field public static final ADD_SERVICE_REQUEST_FAILED:I = 0x22026

.field public static final ADD_SERVICE_REQUEST_SUCCEEDED:I = 0x22027

.field private static final BASE:I = 0x22000

.field public static final BUSY:I = 0x2

.field public static final CANCEL_CONNECT:I = 0x2200a

.field public static final CANCEL_CONNECT_FAILED:I = 0x2200b

.field public static final CANCEL_CONNECT_SUCCEEDED:I = 0x2200c

.field public static final CLEAR_LOCAL_SERVICES:I = 0x22022

.field public static final CLEAR_LOCAL_SERVICES_FAILED:I = 0x22023

.field public static final CLEAR_LOCAL_SERVICES_SUCCEEDED:I = 0x22024

.field public static final CLEAR_SERVICE_REQUESTS:I = 0x2202b

.field public static final CLEAR_SERVICE_REQUESTS_FAILED:I = 0x2202c

.field public static final CLEAR_SERVICE_REQUESTS_SUCCEEDED:I = 0x2202d

.field public static final CONNECT:I = 0x22007

.field public static final CONNECT_FAILED:I = 0x22008

.field public static final CONNECT_SUCCEEDED:I = 0x22009

.field public static final CREATE_GROUP:I = 0x2200d

.field public static final CREATE_GROUP_FAILED:I = 0x2200e

.field public static final CREATE_GROUP_SUCCEEDED:I = 0x2200f

.field public static final DELETE_PERSISTENT_GROUP:I = 0x22036

.field public static final DELETE_PERSISTENT_GROUP_FAILED:I = 0x22037

.field public static final DELETE_PERSISTENT_GROUP_SUCCEEDED:I = 0x22038

.field public static final DISCOVER_PEERS:I = 0x22001

.field public static final DISCOVER_PEERS_FAILED:I = 0x22002

.field public static final DISCOVER_PEERS_SUCCEEDED:I = 0x22003

.field public static final DISCOVER_SERVICES:I = 0x2202e

.field public static final DISCOVER_SERVICES_FAILED:I = 0x2202f

.field public static final DISCOVER_SERVICES_SUCCEEDED:I = 0x22030

.field public static final ERROR:I = 0x0

.field public static final EXTRA_DISCOVERY_STATE:Ljava/lang/String; = "discoveryState"

.field public static final EXTRA_HANDOVER_MESSAGE:Ljava/lang/String; = "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_P2P_DEVICE_LIST:Ljava/lang/String; = "wifiP2pDeviceList"

.field public static final EXTRA_WIFI_P2P_DEVICE:Ljava/lang/String; = "wifiP2pDevice"

.field public static final EXTRA_WIFI_P2P_GROUP:Ljava/lang/String; = "p2pGroupInfo"

.field public static final EXTRA_WIFI_P2P_INFO:Ljava/lang/String; = "wifiP2pInfo"

.field public static final EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_p2p_state"

.field public static final FAST_CONNECT_AS_GC:I = 0x2205d

.field public static final FAST_CONNECT_AS_GO:I = 0x2205c

.field public static final FAST_DISCOVER_PEERS:I = 0x2205e

.field public static final FREQ_CONFLICT_EX_RESULT:I = 0x2206d

.field public static final GET_HANDOVER_REQUEST:I = 0x2204b

.field public static final GET_HANDOVER_SELECT:I = 0x2204c

.field public static final GET_NFC_CONFIG_TOKEN:I = 0x22065

.field public static final GET_NFC_CONFIG_TOKEN_FAILED:I = 0x22066

.field public static final GET_NFC_CONFIG_TOKEN_SUCCEEDED:I = 0x22067

.field public static final GET_NFC_REQUEST_TOKEN:I = 0x2205f

.field public static final GET_NFC_REQUEST_TOKEN_FAILED:I = 0x22060

.field public static final GET_NFC_REQUEST_TOKEN_SUCCEEDED:I = 0x22061

.field public static final GET_NFC_SELECT_TOKEN:I = 0x22062

.field public static final GET_NFC_SELECT_TOKEN_FAILED:I = 0x22063

.field public static final GET_NFC_SELECT_TOKEN_SUCCEEDED:I = 0x22064

.field public static final GET_NFC_WPS_CONFIG_TOKEN:I = 0x22068

.field public static final GET_NFC_WPS_CONFIG_TOKEN_FAILED:I = 0x22069

.field public static final GET_NFC_WPS_CONFIG_TOKEN_SUCCEEDED:I = 0x2206a

.field public static final INITIATOR_REPORT_NFC_HANDOVER:I = 0x2204e

.field public static final MIRACAST_DISABLED:I = 0x0

.field public static final MIRACAST_SINK:I = 0x2

.field public static final MIRACAST_SOURCE:I = 0x1

.field public static final NO_SERVICE_REQUESTS:I = 0x3

.field public static final P2P_UNSUPPORTED:I = 0x1

.field public static final PEER_CONNECTION_USER_ACCEPT_FROM_OUTER:I = 0x2206b

.field public static final PEER_CONNECTION_USER_REJECT_FROM_OUTER:I = 0x2206c

.field public static final PING:I = 0x22031

.field public static final REMOVE_GROUP:I = 0x22010

.field public static final REMOVE_GROUP_FAILED:I = 0x22011

.field public static final REMOVE_GROUP_SUCCEEDED:I = 0x22012

.field public static final REMOVE_LOCAL_SERVICE:I = 0x2201f

.field public static final REMOVE_LOCAL_SERVICE_FAILED:I = 0x22020

.field public static final REMOVE_LOCAL_SERVICE_SUCCEEDED:I = 0x22021

.field public static final REMOVE_SERVICE_REQUEST:I = 0x22028

.field public static final REMOVE_SERVICE_REQUEST_FAILED:I = 0x22029

.field public static final REMOVE_SERVICE_REQUEST_SUCCEEDED:I = 0x2202a

.field public static final REPORT_NFC_HANDOVER_FAILED:I = 0x22051

.field public static final REPORT_NFC_HANDOVER_SUCCEEDED:I = 0x22050

.field public static final REQUEST_CONNECTION_INFO:I = 0x22015

.field public static final REQUEST_GROUP_INFO:I = 0x22017

.field public static final REQUEST_LINK_INFO:I = 0x22055

.field public static final REQUEST_PEERS:I = 0x22013

.field public static final REQUEST_PERSISTENT_GROUP_INFO:I = 0x22039

.field public static final RESPONDER_REPORT_NFC_HANDOVER:I = 0x2204f

.field public static final RESPONSE_CONNECTION_INFO:I = 0x22016

.field public static final RESPONSE_GET_HANDOVER_MESSAGE:I = 0x2204d

.field public static final RESPONSE_GROUP_INFO:I = 0x22018

.field public static final RESPONSE_LINK_INFO:I = 0x22056

.field public static final RESPONSE_PEERS:I = 0x22014

.field public static final RESPONSE_PERSISTENT_GROUP_INFO:I = 0x2203a

.field public static final RESPONSE_SERVICE:I = 0x22032

.field public static final SET_AUTO_CHANNEL_SELECT:I = 0x22057

.field public static final SET_AUTO_CHANNEL_SELECT_FAILED:I = 0x22058

.field public static final SET_AUTO_CHANNEL_SELECT_SUCCEEDED:I = 0x22059

.field public static final SET_CHANNEL:I = 0x22047

.field public static final SET_CHANNEL_FAILED:I = 0x22048

.field public static final SET_CHANNEL_SUCCEEDED:I = 0x22049

.field public static final SET_DEVICE_NAME:I = 0x22033

.field public static final SET_DEVICE_NAME_FAILED:I = 0x22034

.field public static final SET_DEVICE_NAME_SUCCEEDED:I = 0x22035

.field public static final SET_WFD_INFO:I = 0x2203b

.field public static final SET_WFD_INFO_FAILED:I = 0x2203c

.field public static final SET_WFD_INFO_SUCCEEDED:I = 0x2203d

.field public static final START_FAST_CONNECT_AS_GC:I = 0x2205b

.field public static final START_FAST_CONNECT_AS_GO:I = 0x2205a

.field public static final START_LISTEN:I = 0x22041

.field public static final START_LISTEN_FAILED:I = 0x22042

.field public static final START_LISTEN_SUCCEEDED:I = 0x22043

.field public static final START_WPS:I = 0x2203e

.field public static final START_WPS_FAILED:I = 0x2203f

.field public static final START_WPS_SUCCEEDED:I = 0x22040

.field public static final STOP_DISCOVERY:I = 0x22004

.field public static final STOP_DISCOVERY_FAILED:I = 0x22005

.field public static final STOP_DISCOVERY_SUCCEEDED:I = 0x22006

.field public static final STOP_LISTEN:I = 0x22044

.field public static final STOP_LISTEN_FAILED:I = 0x22045

.field public static final STOP_LISTEN_SUCCEEDED:I = 0x22046

.field private static final TAG:Ljava/lang/String; = "WifiP2pManager"

.field public static final UPPER_BOUND:I = 0x22080

.field public static final WIFI_P2P_CONNECTION_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

.field public static final WIFI_P2P_DISCOVERY_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

.field public static final WIFI_P2P_DISCOVERY_STARTED:I = 0x2

.field public static final WIFI_P2P_DISCOVERY_STOPPED:I = 0x1

.field public static final WIFI_P2P_PEERS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.PEERS_CHANGED"

.field public static final WIFI_P2P_PERSISTENT_GROUPS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.PERSISTENT_GROUPS_CHANGED"

.field public static final WIFI_P2P_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.STATE_CHANGED"

.field public static final WIFI_P2P_STATE_DISABLED:I = 0x1

.field public static final WIFI_P2P_STATE_ENABLED:I = 0x2

.field public static final WIFI_P2P_THIS_DEVICE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.THIS_DEVICE_CHANGED"


# instance fields
.field mService:Landroid/net/wifi/p2p/IWifiP2pManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/p2p/IWifiP2pManager;)V
    .locals 0
    .param p1, "service"    # Landroid/net/wifi/p2p/IWifiP2pManager;

    .prologue
    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    .line 566
    return-void
.end method

.method private static checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 2
    .param p0, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .prologue
    .line 970
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Channel needs to be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 971
    :cond_0
    return-void
.end method

.method private static checkP2pConfig(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 2
    .param p0, "c"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 982
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 983
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 984
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddress cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 986
    :cond_1
    return-void
.end method

.method private static checkServiceInfo(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V
    .locals 2
    .param p0, "info"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    .line 974
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "service info is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 975
    :cond_0
    return-void
.end method

.method private static checkServiceRequest(Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V
    .locals 2
    .param p0, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .prologue
    .line 978
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "service request is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 979
    :cond_0
    return-void
.end method

.method private initalizeChannel(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;Landroid/os/Messenger;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 4
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcLooper"    # Landroid/os/Looper;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    .param p4, "messenger"    # Landroid/os/Messenger;

    .prologue
    const/4 v1, 0x0

    .line 1012
    if-nez p4, :cond_1

    move-object v0, v1

    .line 1019
    :cond_0
    :goto_0
    return-object v0

    .line 1014
    :cond_1
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)V

    .line 1015
    .local v0, "c":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mHandler:Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$300(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

    move-result-object v3

    invoke-virtual {v2, p1, v3, p4}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1019
    goto :goto_0
.end method


# virtual methods
.method public addLocalService(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1201
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1202
    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkServiceInfo(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V

    .line 1203
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2201c

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1204
    return-void
.end method

.method public addServiceRequest(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1335
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1336
    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkServiceRequest(Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V

    .line 1337
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22025

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1339
    return-void
.end method

.method public cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1103
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1104
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2200a

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1105
    return-void
.end method

.method public clearLocalServices(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1237
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1238
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22022

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1239
    return-void
.end method

.method public clearServiceRequests(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1373
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1374
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2202b

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1376
    return-void
.end method

.method public connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1086
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1087
    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkP2pConfig(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    .line 1088
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22007

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1089
    return-void
.end method

.method public createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1127
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1128
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2200d

    const/4 v2, -0x2

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1130
    return-void
.end method

.method public deinitialize(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 2
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .prologue
    .line 1665
    const-string v0, "WifiP2pManager"

    const-string v1, "deinitialize()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1669
    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->clearListener()V
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$1000(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1670
    return-void
.end method

.method public deletePersistentGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 3
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "netId"    # I
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1451
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1452
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22036

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1453
    return-void
.end method

.method public discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1043
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1044
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22001

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1045
    return-void
.end method

.method public discoverServices(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1310
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1311
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2202e

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1312
    return-void
.end method

.method public fastConnectAsGc(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "info"    # Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1610
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1611
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2205b

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1612
    return-void
.end method

.method public fastConnectAsGo(Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    .locals 2
    .param p1, "info"    # Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    .prologue
    .line 1591
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/p2p/IWifiP2pManager;->fastConnectAsGo(Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1593
    :goto_0
    return-object v1

    .line 1592
    :catch_0
    move-exception v0

    .line 1593
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public generateNfcToken(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 3
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "type"    # I
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1742
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1743
    const-string v0, "WifiP2pManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateNfcToken(): type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    const v0, 0x2205f

    if-eq v0, p2, :cond_0

    const v0, 0x22062

    if-eq v0, p2, :cond_0

    const v0, 0x22065

    if-eq v0, p2, :cond_0

    const v0, 0x22068

    if-ne v0, p2, :cond_1

    .line 1749
    :cond_0
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const/4 v1, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1753
    :goto_0
    return-void

    .line 1751
    :cond_1
    const-string v0, "WifiP2pManager"

    const-string v1, "generateNfcToken(): invalid type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1620
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v1}, Landroid/net/wifi/p2p/IWifiP2pManager;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1622
    :goto_0
    return-object v1

    .line 1621
    :catch_0
    move-exception v0

    .line 1622
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 1502
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v1}, Landroid/net/wifi/p2p/IWifiP2pManager;->getMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1504
    :goto_0
    return-object v1

    .line 1503
    :catch_0
    move-exception v0

    .line 1504
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNfcHandoverRequest(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;

    .prologue
    .line 1528
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1529
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2204b

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1530
    return-void
.end method

.method public getNfcHandoverSelect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;

    .prologue
    .line 1538
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1539
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2204c

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1540
    return-void
.end method

.method public getNfcSelectToken()[B
    .locals 2

    .prologue
    .line 1726
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v1}, Landroid/net/wifi/p2p/IWifiP2pManager;->getP2pHandoverSelectToken()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1728
    :goto_0
    return-object v1

    .line 1727
    :catch_0
    move-exception v0

    .line 1728
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getP2pStateMachineMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 1517
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v1}, Landroid/net/wifi/p2p/IWifiP2pManager;->getP2pStateMachineMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1519
    :goto_0
    return-object v1

    .line 1518
    :catch_0
    move-exception v0

    .line 1519
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPeerIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "peerMacAddress"    # Ljava/lang/String;

    .prologue
    .line 1681
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/p2p/IWifiP2pManager;->getPeerIpAddress(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1683
    :goto_0
    return-object v1

    .line 1682
    :catch_0
    move-exception v0

    .line 1683
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcLooper"    # Landroid/os/Looper;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    .prologue
    .line 998
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager;->getMessenger()Landroid/os/Messenger;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->initalizeChannel(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;Landroid/os/Messenger;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    return-object v0
.end method

.method public initializeInternal(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcLooper"    # Landroid/os/Looper;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    .prologue
    .line 1007
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager;->getP2pStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->initalizeChannel(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;Landroid/os/Messenger;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    return-object v0
.end method

.method public initiatorReportNfcHandover(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "handoverSelect"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1547
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1548
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1549
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x2204e

    const/4 v3, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1552
    return-void
.end method

.method public listen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "enable"    # Z
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1150
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1151
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    if-eqz p2, :cond_0

    const v0, 0x22041

    :goto_0
    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1153
    return-void

    .line 1151
    :cond_0
    const v0, 0x22044

    goto :goto_0
.end method

.method public removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1144
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1145
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22010

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1146
    return-void
.end method

.method public removeLocalService(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1220
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1221
    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkServiceInfo(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V

    .line 1222
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2201f

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1223
    return-void
.end method

.method public removeServiceRequest(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1355
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1356
    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkServiceRequest(Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V

    .line 1357
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22028

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1359
    return-void
.end method

.method public requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    .prologue
    .line 1396
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1397
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22015

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1398
    return-void
.end method

.method public requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    .prologue
    .line 1407
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1408
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22017

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1409
    return-void
.end method

.method public requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    .prologue
    .line 1385
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1386
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22013

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1387
    return-void
.end method

.method public requestPersistentGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;

    .prologue
    .line 1463
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1464
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22039

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1465
    return-void
.end method

.method public requestWifiP2pLinkInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pLinkInfoListener;)V
    .locals 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "interfaceAddress"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$WifiP2pLinkInfoListener;

    .prologue
    .line 1636
    new-instance v0, Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;-><init>()V

    .line 1637
    .local v0, "info":Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;
    iput-object p2, v0, Landroid/net/wifi/p2p/link/WifiP2pLinkInfo;->interfaceAddress:Ljava/lang/String;

    .line 1638
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1639
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x22055

    const/4 v3, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1641
    return-void
.end method

.method public responderReportNfcHandover(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "handoverRequest"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1560
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1561
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1562
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x2204f

    const/4 v3, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1565
    return-void
.end method

.method public setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "devName"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1418
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1419
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 1420
    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    iput-object p2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1421
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x22033

    const/4 v3, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1422
    return-void
.end method

.method public setDnsSdResponseListeners(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;)V
    .locals 0
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "servListener"    # Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;
    .param p3, "txtListener"    # Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

    .prologue
    .line 1270
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1271
    # setter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$702(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;)Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;

    .line 1272
    # setter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mDnsSdTxtListener:Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$802(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;)Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

    .line 1273
    return-void
.end method

.method public setFreqConflictExResult(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "accept"    # Z
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1714
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1715
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x2206d

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1716
    return-void

    .line 1715
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGCInviteResult(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "accept"    # Z
    .param p3, "go_intent"    # I
    .param p4, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1697
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1698
    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    .line 1699
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2206b

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p4}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p3, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1703
    :goto_0
    return-void

    .line 1701
    :cond_0
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2206c

    const/4 v2, -0x1

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p4}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_0
.end method

.method public setMiracastMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 1476
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/IWifiP2pManager;->setMiracastMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1480
    :goto_0
    return-void

    .line 1477
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMiracastMode(II)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "freq"    # I

    .prologue
    .line 1486
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/p2p/IWifiP2pManager;->setMiracastModeEx(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1490
    :goto_0
    return-void

    .line 1487
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setP2pAutoChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "enable"    # Z
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1652
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1653
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x22057

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1654
    return-void

    .line 1653
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setServiceResponseListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;)V
    .locals 0
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

    .prologue
    .line 1254
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1255
    # setter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$602(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;)Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

    .line 1256
    return-void
.end method

.method public setUpnpServiceResponseListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;)V
    .locals 0
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;

    .prologue
    .line 1286
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1287
    # setter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mUpnpServRspListener:Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$902(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;)Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;

    .line 1288
    return-void
.end method

.method public setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "wfdInfo"    # Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1428
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1429
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2203b

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1430
    return-void
.end method

.method public setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "lc"    # I
    .param p3, "oc"    # I
    .param p4, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1157
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1158
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1159
    .local v0, "p2pChannels":Landroid/os/Bundle;
    const-string v1, "lc"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1160
    const-string/jumbo v1, "oc"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1161
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x22047

    const/4 v3, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p4}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1162
    return-void
.end method

.method public startWps(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/WpsInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "wps"    # Landroid/net/wifi/WpsInfo;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1175
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1176
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2203e

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1177
    return-void
.end method

.method public stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 1059
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1060
    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22004

    const/4 v2, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1061
    return-void
.end method
