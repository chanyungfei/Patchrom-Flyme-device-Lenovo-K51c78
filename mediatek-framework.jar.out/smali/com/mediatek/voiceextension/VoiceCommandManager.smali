.class public Lcom/mediatek/voiceextension/VoiceCommandManager;
.super Ljava/lang/Object;
.source "VoiceCommandManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/voiceextension/VoiceCommandManager$DeathMonitor;,
        Lcom/mediatek/voiceextension/VoiceCommandManager$Token;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VieCmdMgr"

.field private static sMgrSelf:Lcom/mediatek/voiceextension/VoiceCommandManager;


# instance fields
.field private mCallback:Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub;

.field private mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;

.field private mCurSetName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mService:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

.field private mServiceMonitor:Lcom/mediatek/voiceextension/VoiceCommandManager$DeathMonitor;

.field private final mServiceName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lcom/mediatek/voiceextension/VoiceCommandManager$Token;

    invoke-direct {v0, p0}, Lcom/mediatek/voiceextension/VoiceCommandManager$Token;-><init>(Lcom/mediatek/voiceextension/VoiceCommandManager;)V

    iput-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCallback:Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub;

    .line 94
    const-string v0, "vie_command"

    iput-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mServiceName:Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/mediatek/voiceextension/VoiceCommandManager$DeathMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/voiceextension/VoiceCommandManager$DeathMonitor;-><init>(Lcom/mediatek/voiceextension/VoiceCommandManager;Lcom/mediatek/voiceextension/VoiceCommandManager$1;)V

    iput-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mServiceMonitor:Lcom/mediatek/voiceextension/VoiceCommandManager$DeathMonitor;

    .line 101
    new-instance v0, Lcom/mediatek/voiceextension/VoiceCommandManager$1;

    invoke-direct {v0, p0}, Lcom/mediatek/voiceextension/VoiceCommandManager$1;-><init>(Lcom/mediatek/voiceextension/VoiceCommandManager;)V

    iput-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    .line 151
    invoke-direct {p0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->getService()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 152
    const-string v0, "VieCmdMgr"

    const-string v1, "Can\'t get vie command service, while init self"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/voiceextension/VoiceCommandManager;)Lcom/mediatek/voiceextension/VoiceCommandListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/voiceextension/VoiceCommandManager;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/voiceextension/VoiceCommandManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/voiceextension/VoiceCommandManager;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/voiceextension/VoiceCommandManager;->handleServiceDisconnected(Z)V

    return-void
.end method

.method private checkSetFormat(Ljava/lang/String;)I
    .locals 1
    .param p1, "setName"    # Ljava/lang/String;

    .prologue
    .line 975
    if-nez p1, :cond_0

    const/16 v0, 0xcb

    .line 979
    .local v0, "result":I
    :goto_0
    return v0

    .line 975
    .end local v0    # "result":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/mediatek/voiceextension/VoiceCommandManager;
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lcom/mediatek/voiceextension/VoiceCommandManager;->sMgrSelf:Lcom/mediatek/voiceextension/VoiceCommandManager;

    if-nez v0, :cond_1

    .line 138
    const-class v1, Lcom/mediatek/voiceextension/VoiceCommandManager;

    monitor-enter v1

    .line 139
    :try_start_0
    sget-object v0, Lcom/mediatek/voiceextension/VoiceCommandManager;->sMgrSelf:Lcom/mediatek/voiceextension/VoiceCommandManager;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/mediatek/voiceextension/VoiceCommandManager;

    invoke-direct {v0}, Lcom/mediatek/voiceextension/VoiceCommandManager;-><init>()V

    sput-object v0, Lcom/mediatek/voiceextension/VoiceCommandManager;->sMgrSelf:Lcom/mediatek/voiceextension/VoiceCommandManager;

    .line 142
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_1
    sget-object v0, Lcom/mediatek/voiceextension/VoiceCommandManager;->sMgrSelf:Lcom/mediatek/voiceextension/VoiceCommandManager;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/mediatek/voiceextension/VoiceCommandManager;->sMgrSelf:Lcom/mediatek/voiceextension/VoiceCommandManager;

    invoke-direct {v0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->getService()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/mediatek/voiceextension/VoiceCommandManager;->sMgrSelf:Lcom/mediatek/voiceextension/VoiceCommandManager;

    :goto_0
    return-object v0

    .line 142
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 144
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getService()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 161
    iget-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mService:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    if-nez v2, :cond_1

    .line 162
    const-string v2, "vie_command"

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mServiceMonitor:Lcom/mediatek/voiceextension/VoiceCommandManager$DeathMonitor;

    if-eqz v2, :cond_0

    .line 163
    const-string v2, "vie_command"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mService:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    .line 165
    iget-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mService:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    if-eqz v2, :cond_2

    .line 167
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mService:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    invoke-interface {v2}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mServiceMonitor:Lcom/mediatek/voiceextension/VoiceCommandManager$DeathMonitor;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mService:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    if-eqz v2, :cond_1

    .line 184
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mService:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    iget-object v3, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCallback:Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Stub;

    invoke-interface {v2, v3}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->registerListener(Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener;)I

    move-result v1

    .line 185
    .local v1, "result":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 186
    const-string v2, "VieCmdMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Register Listener error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/mediatek/voiceextension/VoiceCommandManager;->handleServiceDisconnected(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    .end local v1    # "result":I
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mService:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    return-object v2

    .line 169
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mService:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    .line 172
    const-string v2, "VieCmdMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get voice service vie_command error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v2, "VieCmdMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get voice service vie_command error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mService:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    :catch_1
    move-exception v0

    .line 191
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "VieCmdMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Register Listener vie_command error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-direct {p0, v5}, Lcom/mediatek/voiceextension/VoiceCommandManager;->handleServiceDisconnected(Z)V

    goto :goto_1
.end method

.method private handleServiceDisconnected(Z)V
    .locals 4
    .param p1, "notifyApp"    # Z

    .prologue
    const/4 v3, 0x0

    .line 207
    iget-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mService:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mService:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    invoke-interface {v0}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mServiceMonitor:Lcom/mediatek/voiceextension/VoiceCommandManager$DeathMonitor;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 210
    :cond_0
    iput-object v3, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mService:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    .line 214
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/mediatek/voiceextension/VoiceCommandListener;->onError(I)V

    .line 218
    :cond_1
    iput-object v3, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurSetName:Ljava/lang/String;

    .line 219
    iput-object v3, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;

    .line 221
    return-void
.end method


# virtual methods
.method public createCommandSet(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/mediatek/voiceextension/VoiceCommandManager;->checkSetFormat(Ljava/lang/String;)I

    move-result v1

    .line 254
    .local v1, "result":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->getService()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 257
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mService:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    invoke-interface {v2, p1}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->createCommandSet(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 269
    :cond_0
    :goto_0
    return v1

    .line 258
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/RemoteException;
    const/16 v1, 0xd

    .line 261
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/mediatek/voiceextension/VoiceCommandManager;->handleServiceDisconnected(Z)V

    .line 262
    const-string v2, "VieCmdMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create Command Set error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/16 v1, 0xc

    goto :goto_0
.end method

.method public deleteCommandSet(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 320
    invoke-direct {p0, p1}, Lcom/mediatek/voiceextension/VoiceCommandManager;->checkSetFormat(Ljava/lang/String;)I

    move-result v1

    .line 322
    .local v1, "result":I
    if-ne v1, v3, :cond_0

    .line 324
    invoke-direct {p0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->getService()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 326
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mService:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    invoke-interface {v2, p1}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->deleteCommandSet(Ljava/lang/String;)I

    move-result v1

    .line 327
    iget-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurSetName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-ne v1, v3, :cond_0

    .line 329
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurSetName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :cond_0
    :goto_0
    return v1

    .line 331
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Landroid/os/RemoteException;
    const/16 v1, 0xd

    .line 334
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/mediatek/voiceextension/VoiceCommandManager;->handleServiceDisconnected(Z)V

    .line 335
    const-string v2, "VieCmdMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete Command Set error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 338
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/16 v1, 0xc

    goto :goto_0
.end method

.method public getCommandSetSelected()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurSetName:Ljava/lang/String;

    return-object v0
.end method

.method public getCommandSets()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 843
    const/4 v0, 0x0

    .line 845
    .local v0, "commandSets":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->getService()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 848
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mService:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    invoke-interface {v2}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->getCommandSets()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 857
    :cond_0
    :goto_0
    return-object v0

    .line 849
    :catch_0
    move-exception v1

    .line 851
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/mediatek/voiceextension/VoiceCommandManager;->handleServiceDisconnected(Z)V

    .line 852
    const-string v2, "VieCmdMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get command sets error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCommands()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 810
    const/4 v0, 0x0

    .line 812
    .local v0, "commands":[Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurSetName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;

    if-eqz v2, :cond_1

    .line 814
    invoke-direct {p0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->getService()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 816
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mService:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    invoke-interface {v2}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->getCommands()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 831
    :goto_0
    return-object v0

    .line 818
    :catch_0
    move-exception v1

    .line 820
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/mediatek/voiceextension/VoiceCommandManager;->handleServiceDisconnected(Z)V

    .line 821
    const-string v2, "VieCmdMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get commands error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 824
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "VieCmdMgr"

    const-string v3, "get commands service isn\'t exist "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 828
    :cond_1
    new-instance v2, Ljava/lang/IllegalAccessException;

    const-string v3, "command set wasn\'t selected "

    invoke-direct {v2, v3}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isCommandSetCreated(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/mediatek/voiceextension/VoiceCommandManager;->checkSetFormat(Ljava/lang/String;)I

    move-result v1

    .line 288
    .local v1, "result":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->getService()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 292
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mService:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    invoke-interface {v2, p1}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->isCommandSetCreated(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 304
    :cond_0
    :goto_0
    return v1

    .line 293
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    const/16 v1, 0xd

    .line 296
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/mediatek/voiceextension/VoiceCommandManager;->handleServiceDisconnected(Z)V

    .line 297
    const-string v2, "VieCmdMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check Command Set error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/16 v1, 0xc

    goto :goto_0
.end method

.method public pauseRecognition()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 739
    iget-object v1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurSetName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;

    if-eqz v1, :cond_1

    .line 740
    invoke-direct {p0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->getService()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 742
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mService:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    invoke-interface {v1}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->pauseRecognition()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    :goto_0
    return-void

    .line 743
    :catch_0
    move-exception v0

    .line 745
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    iget-object v4, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;

    invoke-virtual {v2, v6, v3, v5, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 749
    invoke-direct {p0, v5}, Lcom/mediatek/voiceextension/VoiceCommandManager;->handleServiceDisconnected(Z)V

    .line 750
    const-string v1, "VieCmdMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop recognition error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 753
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;

    invoke-virtual {v2, v6, v3, v5, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 759
    :cond_1
    new-instance v1, Ljava/lang/IllegalAccessException;

    const-string v2, "Command set wasn\'t selected "

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resumeRecognition()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 772
    iget-object v1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurSetName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;

    if-eqz v1, :cond_1

    .line 773
    invoke-direct {p0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->getService()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 775
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mService:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    invoke-interface {v1}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->resumeRecognition()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    :goto_0
    return-void

    .line 776
    :catch_0
    move-exception v0

    .line 778
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 781
    invoke-direct {p0, v4}, Lcom/mediatek/voiceextension/VoiceCommandManager;->handleServiceDisconnected(Z)V

    .line 782
    const-string v1, "VieCmdMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop recognition error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 785
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 791
    :cond_1
    new-instance v1, Ljava/lang/IllegalAccessException;

    const-string v2, "Command set wasn\'t selected "

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public selectCurrentCommandSet(Ljava/lang/String;Lcom/mediatek/voiceextension/VoiceCommandListener;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/mediatek/voiceextension/VoiceCommandListener;

    .prologue
    const/4 v3, 0x1

    .line 380
    invoke-direct {p0, p1}, Lcom/mediatek/voiceextension/VoiceCommandManager;->checkSetFormat(Ljava/lang/String;)I

    move-result v1

    .line 381
    .local v1, "result":I
    if-ne v1, v3, :cond_0

    .line 382
    if-nez p2, :cond_1

    .line 383
    const/4 v1, 0x5

    .line 409
    :cond_0
    :goto_0
    return v1

    .line 384
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->getService()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v2

    if-nez v2, :cond_2

    .line 385
    const/16 v1, 0xc

    goto :goto_0

    .line 387
    :cond_2
    iget-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurSetName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 389
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mService:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    invoke-interface {v2, p1}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->selectCurrentCommandSet(Ljava/lang/String;)I

    move-result v1

    .line 390
    if-eq v1, v3, :cond_3

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_0

    .line 392
    :cond_3
    iput-object p1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurSetName:Ljava/lang/String;

    .line 395
    iput-object p2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Landroid/os/RemoteException;
    const/16 v1, 0xd

    .line 400
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/mediatek/voiceextension/VoiceCommandManager;->handleServiceDisconnected(Z)V

    .line 401
    const-string v2, "VieCmdMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select Command Set error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 404
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    const/16 v1, 0xcd

    goto :goto_0
.end method

.method public setCommands(Landroid/content/Context;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 602
    const-string v7, "VieCmdMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setCommands parament context:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", resid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 605
    :cond_0
    new-instance v7, Ljava/lang/IllegalAccessException;

    const-string v8, "setCommands parament was null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 608
    :cond_1
    iget-object v7, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurSetName:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;

    if-eqz v7, :cond_4

    .line 609
    invoke-direct {p0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->getService()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 610
    const/4 v5, 0x0

    .line 612
    .local v5, "pFd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 613
    .local v6, "resource":Landroid/content/res/Resources;
    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 614
    .local v2, "fp":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 615
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v8

    long-to-int v4, v8

    .line 616
    .local v4, "offset":I
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v8

    long-to-int v3, v8

    .line 617
    .local v3, "length":I
    if-eqz v5, :cond_2

    .line 618
    iget-object v7, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mService:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    invoke-interface {v7, v5, v4, v3}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->setCommandsFile(Landroid/os/ParcelFileDescriptor;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    .end local v2    # "fp":Landroid/content/res/AssetFileDescriptor;
    .end local v3    # "length":I
    .end local v4    # "offset":I
    .end local v5    # "pFd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "resource":Landroid/content/res/Resources;
    :cond_2
    :goto_0
    return-void

    .line 620
    .restart local v5    # "pFd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    const/16 v9, 0xd

    invoke-virtual {v8, v11, v9, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 625
    invoke-direct {p0, v10}, Lcom/mediatek/voiceextension/VoiceCommandManager;->handleServiceDisconnected(Z)V

    .line 627
    :try_start_1
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 632
    :goto_1
    const-string v7, "VieCmdMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set Commands error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 628
    :catch_1
    move-exception v1

    .line 630
    .local v1, "ex":Ljava/io/IOException;
    const-string v7, "VieCmdMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pFd close exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 635
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v5    # "pFd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    iget-object v7, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    const/16 v9, 0xc

    invoke-virtual {v8, v11, v9, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 640
    :cond_4
    new-instance v7, Ljava/lang/IllegalAccessException;

    const-string v8, "Command set wasn\'t selected "

    invoke-direct {v7, v8}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public setCommands(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "assetsFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 533
    const-string v7, "VieCmdMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setCommands parament context:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", assetsFilePath:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 536
    :cond_0
    new-instance v7, Ljava/lang/IllegalAccessException;

    const-string v8, "setCommands parament was null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 539
    :cond_1
    iget-object v7, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurSetName:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;

    if-eqz v7, :cond_4

    .line 540
    invoke-direct {p0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->getService()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 541
    const/4 v6, 0x0

    .line 543
    .local v6, "pFd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 544
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    .line 546
    .local v3, "fp":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 547
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v8

    long-to-int v5, v8

    .line 548
    .local v5, "offset":I
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v8

    long-to-int v4, v8

    .line 549
    .local v4, "length":I
    if-eqz v6, :cond_2

    .line 550
    iget-object v7, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mService:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    invoke-interface {v7, v6, v5, v4}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->setCommandsFile(Landroid/os/ParcelFileDescriptor;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v3    # "fp":Landroid/content/res/AssetFileDescriptor;
    .end local v4    # "length":I
    .end local v5    # "offset":I
    .end local v6    # "pFd":Landroid/os/ParcelFileDescriptor;
    :cond_2
    :goto_0
    return-void

    .line 552
    .restart local v6    # "pFd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    .line 554
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    const/16 v9, 0xd

    invoke-virtual {v8, v11, v9, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 557
    invoke-direct {p0, v10}, Lcom/mediatek/voiceextension/VoiceCommandManager;->handleServiceDisconnected(Z)V

    .line 559
    :try_start_1
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 564
    :goto_1
    const-string v7, "VieCmdMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set Commands error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 560
    :catch_1
    move-exception v2

    .line 562
    .local v2, "ex":Ljava/io/IOException;
    const-string v7, "VieCmdMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pFd close exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 567
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v6    # "pFd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    iget-object v7, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    const/16 v9, 0xc

    invoke-virtual {v8, v11, v9, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 572
    :cond_4
    new-instance v7, Ljava/lang/IllegalAccessException;

    const-string v8, "Command set wasn\'t selected"

    invoke-direct {v7, v8}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public setCommands(Ljava/io/File;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 481
    iget-object v3, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurSetName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;

    if-eqz v3, :cond_1

    .line 482
    invoke-direct {p0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->getService()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 483
    const/high16 v3, 0x10000000

    invoke-static {p1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 485
    .local v2, "pFd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v4

    long-to-int v1, v4

    .line 487
    .local v1, "length":I
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mService:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4, v1}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->setCommandsFile(Landroid/os/ParcelFileDescriptor;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    .end local v1    # "length":I
    .end local v2    # "pFd":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-void

    .line 488
    .restart local v1    # "length":I
    .restart local v2    # "pFd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xd

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 493
    invoke-direct {p0, v6}, Lcom/mediatek/voiceextension/VoiceCommandManager;->handleServiceDisconnected(Z)V

    .line 494
    const-string v3, "VieCmdMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set Commands error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 497
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "length":I
    .end local v2    # "pFd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    iget-object v3, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 502
    :cond_1
    new-instance v3, Ljava/lang/IllegalAccessException;

    const-string v4, "Command set wasn\'t selected "

    invoke-direct {v3, v4}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setCommands([Ljava/lang/String;)V
    .locals 6
    .param p1, "commands"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 434
    iget-object v1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurSetName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;

    if-eqz v1, :cond_1

    .line 436
    invoke-direct {p0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->getService()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mService:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->setCommandsStrArray([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 443
    invoke-direct {p0, v4}, Lcom/mediatek/voiceextension/VoiceCommandManager;->handleServiceDisconnected(Z)V

    .line 444
    const-string v1, "VieCmdMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set Commands error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 447
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 452
    :cond_1
    new-instance v1, Ljava/lang/IllegalAccessException;

    const-string v2, "Command set wasn\'t selected "

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startRecognition()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 661
    iget-object v1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurSetName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;

    if-eqz v1, :cond_1

    .line 663
    invoke-direct {p0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->getService()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 665
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mService:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    invoke-interface {v1}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->startRecognition()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :goto_0
    return-void

    .line 666
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const/16 v4, 0xd

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 671
    invoke-direct {p0, v5}, Lcom/mediatek/voiceextension/VoiceCommandManager;->handleServiceDisconnected(Z)V

    .line 672
    const-string v1, "VieCmdMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start recognition error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 675
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 682
    :cond_1
    new-instance v1, Ljava/lang/IllegalAccessException;

    const-string v2, "Command set wasn\'t selected "

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public stopRecognition()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 701
    iget-object v1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurSetName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mCurListener:Lcom/mediatek/voiceextension/VoiceCommandListener;

    if-eqz v1, :cond_1

    .line 702
    invoke-direct {p0}, Lcom/mediatek/voiceextension/VoiceCommandManager;->getService()Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 704
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mService:Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;

    invoke-interface {v1}, Lcom/mediatek/common/voiceextension/IVoiceExtCommandManager;->stopRecognition()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :goto_0
    return-void

    .line 705
    :catch_0
    move-exception v0

    .line 707
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 710
    invoke-direct {p0, v4}, Lcom/mediatek/voiceextension/VoiceCommandManager;->handleServiceDisconnected(Z)V

    .line 711
    const-string v1, "VieCmdMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop recognition error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 714
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/voiceextension/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 720
    :cond_1
    new-instance v1, Ljava/lang/IllegalAccessException;

    const-string v2, "Command set wasn\'t selected "

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
