.class public Lcom/gsma/services/addon/NfcGsmaExtra;
.super Ljava/lang/Object;
.source "NfcGsmaExtra.java"


# static fields
.field static final TAG:Ljava/lang/String; = "NfcGsmaExtra"

.field private static mStaticInstance:Lcom/gsma/services/addon/NfcGsmaExtra;

.field static sNfcGsmaExtra:Landroid/nfc/INfcAdapterGsmaExtras;

.field static sService:Landroid/nfc/INfcAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/gsma/services/addon/NfcGsmaExtra;->mStaticInstance:Lcom/gsma/services/addon/NfcGsmaExtra;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v2, "NfcGsmaExtra"

    const-string v3, "NfcGsmaExtra()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string v2, "nfc"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 41
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 42
    const-string v2, "NfcGsmaExtra"

    const-string v3, "nfc service not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v2

    sput-object v2, Lcom/gsma/services/addon/NfcGsmaExtra;->sService:Landroid/nfc/INfcAdapter;

    .line 48
    sget-object v2, Lcom/gsma/services/addon/NfcGsmaExtra;->sService:Landroid/nfc/INfcAdapter;

    if-nez v2, :cond_1

    .line 49
    const-string v2, "NfcGsmaExtra"

    const-string v3, "could not retrieve NFC service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 53
    :cond_1
    :try_start_0
    sget-object v2, Lcom/gsma/services/addon/NfcGsmaExtra;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getNfcAdapterGsmaExtrasInterface()Landroid/nfc/INfcAdapterGsmaExtras;

    move-result-object v2

    sput-object v2, Lcom/gsma/services/addon/NfcGsmaExtra;->sNfcGsmaExtra:Landroid/nfc/INfcAdapterGsmaExtras;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "NfcGsmaExtra"

    const-string v3, "could not retrieve NFC GSMA EXTRA service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public static getInstance()Lcom/gsma/services/addon/NfcGsmaExtra;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/gsma/services/addon/NfcGsmaExtra;->mStaticInstance:Lcom/gsma/services/addon/NfcGsmaExtra;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/gsma/services/addon/NfcGsmaExtra;

    invoke-direct {v0}, Lcom/gsma/services/addon/NfcGsmaExtra;-><init>()V

    sput-object v0, Lcom/gsma/services/addon/NfcGsmaExtra;->mStaticInstance:Lcom/gsma/services/addon/NfcGsmaExtra;

    .line 68
    :cond_0
    sget-object v0, Lcom/gsma/services/addon/NfcGsmaExtra;->mStaticInstance:Lcom/gsma/services/addon/NfcGsmaExtra;

    return-object v0
.end method


# virtual methods
.method public commitRouting()V
    .locals 4

    .prologue
    .line 101
    const-string v1, "NfcGsmaExtra"

    const-string v2, "commitRouting()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :try_start_0
    sget-object v1, Lcom/gsma/services/addon/NfcGsmaExtra;->sNfcGsmaExtra:Landroid/nfc/INfcAdapterGsmaExtras;

    invoke-interface {v1}, Landroid/nfc/INfcAdapterGsmaExtras;->commitRouting()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NfcGsmaExtra"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "routeAids() RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public enableMultiEvtTransaction()Z
    .locals 5

    .prologue
    .line 137
    const-string v2, "NfcGsmaExtra"

    const-string v3, "enableMultiEvtTransaction()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v1, 0x0

    .line 141
    .local v1, "result":Z
    :try_start_0
    sget-object v2, Lcom/gsma/services/addon/NfcGsmaExtra;->sNfcGsmaExtra:Landroid/nfc/INfcAdapterGsmaExtras;

    invoke-interface {v2}, Landroid/nfc/INfcAdapterGsmaExtras;->enableMultiEvtTransaction()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 146
    :goto_0
    return v1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NfcGsmaExtra"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableMultiEvtTransaction() RemoteException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getActiveSeValue()I
    .locals 5

    .prologue
    .line 74
    const-string v2, "NfcGsmaExtra"

    const-string v3, "getActiveSeValue()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, "activeSe":I
    :try_start_0
    sget-object v2, Lcom/gsma/services/addon/NfcGsmaExtra;->sNfcGsmaExtra:Landroid/nfc/INfcAdapterGsmaExtras;

    invoke-interface {v2}, Landroid/nfc/INfcAdapterGsmaExtras;->getActiveSeValue()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 84
    :goto_0
    return v0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "NfcGsmaExtra"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveSeValue() RemoteException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public hasHCE()Z
    .locals 5

    .prologue
    .line 124
    const-string v2, "NfcGsmaExtra"

    const-string v3, "hasHCE()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v1, 0x0

    .line 128
    .local v1, "result":Z
    :try_start_0
    sget-object v2, Lcom/gsma/services/addon/NfcGsmaExtra;->sNfcGsmaExtra:Landroid/nfc/INfcAdapterGsmaExtras;

    invoke-interface {v2}, Landroid/nfc/INfcAdapterGsmaExtras;->isHceCapable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 133
    :goto_0
    return v1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NfcGsmaExtra"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasHCE() RemoteException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized isNFCEventAllowed(Ljava/lang/String;[B[Ljava/lang/String;)[Z
    .locals 5
    .param p1, "reader"    # Ljava/lang/String;
    .param p2, "aid"    # [B
    .param p3, "packageNames"    # [Ljava/lang/String;

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    const-string v2, "NfcGsmaExtra"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNFCEventAllowed() reader:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " aid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/gsma/services/addon/GsmaUtil;->printNdef([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    const/4 v1, 0x0

    .line 158
    .local v1, "result":[Z
    :try_start_1
    sget-object v2, Lcom/gsma/services/addon/NfcGsmaExtra;->sNfcGsmaExtra:Landroid/nfc/INfcAdapterGsmaExtras;

    invoke-interface {v2, p1, p2, p3}, Landroid/nfc/INfcAdapterGsmaExtras;->isNFCEventAllowed(Ljava/lang/String;[B[Ljava/lang/String;)[Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 164
    :goto_0
    monitor-exit p0

    return-object v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "NfcGsmaExtra"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNFCEventAllowed() RemoteException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 153
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "result":[Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public routeAids(Ljava/lang/String;)V
    .locals 4
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 112
    const-string v1, "NfcGsmaExtra"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "routeAids() aid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :try_start_0
    sget-object v1, Lcom/gsma/services/addon/NfcGsmaExtra;->sNfcGsmaExtra:Landroid/nfc/INfcAdapterGsmaExtras;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapterGsmaExtras;->routeAids(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NfcGsmaExtra"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "routeAids() RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setActiveSeValue(I)V
    .locals 4
    .param p1, "seValue"    # I

    .prologue
    .line 88
    const-string v1, "NfcGsmaExtra"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setActiveSeValue() seValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :try_start_0
    sget-object v1, Lcom/gsma/services/addon/NfcGsmaExtra;->sNfcGsmaExtra:Landroid/nfc/INfcAdapterGsmaExtras;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapterGsmaExtras;->setActiveSeValue(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NfcGsmaExtra"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveSeValue() RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setNfcSwpActive(I)Z
    .locals 5
    .param p1, "simID"    # I

    .prologue
    .line 169
    const-string v2, "NfcGsmaExtra"

    const-string v3, "setNfcSwpActive()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v1, 0x0

    .line 173
    .local v1, "result":Z
    :try_start_0
    sget-object v2, Lcom/gsma/services/addon/NfcGsmaExtra;->sNfcGsmaExtra:Landroid/nfc/INfcAdapterGsmaExtras;

    invoke-interface {v2, p1}, Landroid/nfc/INfcAdapterGsmaExtras;->setNfcSwpActive(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 178
    :goto_0
    return v1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NfcGsmaExtra"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNfcSwpActive() RemoteException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
