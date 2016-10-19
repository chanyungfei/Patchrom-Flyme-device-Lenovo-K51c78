.class Lcom/mediatek/epdg/EpdgTracker$InterfaceObserver;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "EpdgTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/epdg/EpdgTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterfaceObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/epdg/EpdgTracker;


# direct methods
.method private constructor <init>(Lcom/mediatek/epdg/EpdgTracker;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/mediatek/epdg/EpdgTracker$InterfaceObserver;->this$0:Lcom/mediatek/epdg/EpdgTracker;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/epdg/EpdgTracker;Lcom/mediatek/epdg/EpdgTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/epdg/EpdgTracker;
    .param p2, "x1"    # Lcom/mediatek/epdg/EpdgTracker$1;

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/mediatek/epdg/EpdgTracker$InterfaceObserver;-><init>(Lcom/mediatek/epdg/EpdgTracker;)V

    return-void
.end method


# virtual methods
.method public interfaceAdded(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 264
    if-eqz p1, :cond_0

    const-string v1, "epdg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    const-string v1, "persist.net.mtu.size"

    const/16 v2, 0x5dc

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 268
    .local v0, "mtu":I
    const-string v1, "EpdgTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configure wlan mtu for ePDG:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/epdg/EpdgTracker$InterfaceObserver;->this$0:Lcom/mediatek/epdg/EpdgTracker;

    # getter for: Lcom/mediatek/epdg/EpdgTracker;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/mediatek/epdg/EpdgTracker;->access$600(Lcom/mediatek/epdg/EpdgTracker;)Landroid/os/INetworkManagementService;

    move-result-object v1

    # getter for: Lcom/mediatek/epdg/EpdgTracker;->sIface:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/epdg/EpdgTracker;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/os/INetworkManagementService;->setMtu(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v0    # "mtu":I
    :cond_0
    :goto_0
    return-void

    .line 271
    .restart local v0    # "mtu":I
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 260
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 280
    return-void
.end method
