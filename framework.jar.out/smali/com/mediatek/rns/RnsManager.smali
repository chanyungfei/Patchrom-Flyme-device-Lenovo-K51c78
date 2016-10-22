.class public Lcom/mediatek/rns/RnsManager;
.super Ljava/lang/Object;
.source "RnsManager.java"


# static fields
.field public static final ALLOWED_RADIO_DENY:I = 0x2

.field public static final ALLOWED_RADIO_MAX:I = 0x3

.field public static final ALLOWED_RADIO_MOBILE:I = 0x1

.field public static final ALLOWED_RADIO_NONE:I = -0x1

.field public static final ALLOWED_RADIO_WIFI:I = 0x0

.field public static final CONNECTIVITY_ACTION_HANDOVER_END:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_ACTION_HANDOVER_END"

.field public static final CONNECTIVITY_ACTION_HANDOVER_START:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_ACTION_HANDOVER_START"

.field private static final DBG:Z = true

.field public static final EXTRA_HANDOVER_RESULT:Ljava/lang/String; = "handoverResult"

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "networkType"

.field public static final FACTORY_STATE_CONNECTED:I = 0x1

.field public static final FACTORY_STATE_DISCONNECTED:I = 0x2

.field public static final FACTORY_STATE_UNAVAILABLE:I = 0x3

.field public static final FACTORY_STATE_UNKNOWN:I = 0x0

.field public static final RNS_AGENT_EPDG:Ljava/lang/String; = "RnsAgentEpdg"

.field public static final RNS_AGENT_TELE:Ljava/lang/String; = "RnsAgentTele"

.field public static final STATE_DEFAULT:I = 0x0

.field public static final STATE_PENDING:I = 0x3

.field public static final STATE_ROVEIN:I = 0x1

.field public static final STATE_ROVEOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RnsManager"


# instance fields
.field private final mService:Lcom/mediatek/rns/IRnsManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/rns/IRnsManager;)V
    .locals 1
    .param p1, "service"    # Lcom/mediatek/rns/IRnsManager;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-string/jumbo v0, "missing IRnsManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/rns/IRnsManager;

    iput-object v0, p0, Lcom/mediatek/rns/RnsManager;->mService:Lcom/mediatek/rns/IRnsManager;

    .line 97
    return-void
.end method


# virtual methods
.method public getAllowedRadioList(I)I
    .locals 2
    .param p1, "capability"    # I

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/rns/RnsManager;->mService:Lcom/mediatek/rns/IRnsManager;

    invoke-interface {v1, p1}, Lcom/mediatek/rns/IRnsManager;->getAllowedRadioList(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 109
    :goto_0
    return v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getRnsState()I
    .locals 2

    .prologue
    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/rns/RnsManager;->mService:Lcom/mediatek/rns/IRnsManager;

    invoke-interface {v1}, Lcom/mediatek/rns/IRnsManager;->getRnsState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 137
    :goto_0
    return v1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getTryAnotherRadioType(I)I
    .locals 2
    .param p1, "failedNetType"    # I

    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/rns/RnsManager;->mService:Lcom/mediatek/rns/IRnsManager;

    invoke-interface {v1, p1}, Lcom/mediatek/rns/IRnsManager;->getTryAnotherRadioType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 124
    :goto_0
    return v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isNeedWifiConnected(I)Z
    .locals 3
    .param p1, "flag"    # I

    .prologue
    const/4 v1, 0x0

    .line 149
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/rns/RnsManager;->mService:Lcom/mediatek/rns/IRnsManager;

    if-nez v2, :cond_0

    .line 154
    :goto_0
    return v1

    .line 152
    :cond_0
    iget-object v2, p0, Lcom/mediatek/rns/RnsManager;->mService:Lcom/mediatek/rns/IRnsManager;

    invoke-interface {v2, p1}, Lcom/mediatek/rns/IRnsManager;->isNeedWifiConnected(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
