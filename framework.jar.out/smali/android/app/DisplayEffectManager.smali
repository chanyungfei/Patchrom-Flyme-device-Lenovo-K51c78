.class public Landroid/app/DisplayEffectManager;
.super Ljava/lang/Object;
.source "DisplayEffectManager.java"


# static fields
.field public static final AUTO_MODE:I = 0x1

.field public static final CABC_MOVE:I = 0x3

.field public static final CABC_OFF:I = 0x0

.field public static final CABC_STILL:I = 0x2

.field public static final CABC_UI:I = 0x1

.field public static final CAMERA_MODE:I = 0x6

.field public static final COMFORT_MODE:I = 0x3

.field public static final CUSTOM_MODE:I = 0x0

.field public static final DISPLAY_EFFECT_SERVICE:Ljava/lang/String; = "display_effect"

.field public static final INVALID_MODE:I = -0x1

.field public static final NORMAL_MODE:I = 0x2

.field public static final OUTSIDE_MODE:I = 0x4

.field public static final ULTRA_BRIGHT_MODE:I = 0x5

.field private static mService:Landroid/app/IDisplayEffectManager;


# instance fields
.field public mContext:Landroid/content/Context;

.field private final mICallBack:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/DisplayEffectManager;->mICallBack:Landroid/os/IBinder;

    .line 38
    iput-object p1, p0, Landroid/app/DisplayEffectManager;->mContext:Landroid/content/Context;

    .line 39
    invoke-static {}, Landroid/app/DisplayEffectManager;->getService()Landroid/app/IDisplayEffectManager;

    .line 40
    return-void
.end method

.method private static getService()Landroid/app/IDisplayEffectManager;
    .locals 2

    .prologue
    .line 44
    sget-object v1, Landroid/app/DisplayEffectManager;->mService:Landroid/app/IDisplayEffectManager;

    if-eqz v1, :cond_0

    .line 45
    sget-object v1, Landroid/app/DisplayEffectManager;->mService:Landroid/app/IDisplayEffectManager;

    .line 49
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 47
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "display_effect"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 48
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IDisplayEffectManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IDisplayEffectManager;

    move-result-object v1

    sput-object v1, Landroid/app/DisplayEffectManager;->mService:Landroid/app/IDisplayEffectManager;

    .line 49
    sget-object v1, Landroid/app/DisplayEffectManager;->mService:Landroid/app/IDisplayEffectManager;

    goto :goto_0
.end method


# virtual methods
.method public getCurrentLevel(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 78
    :try_start_0
    sget-object v1, Landroid/app/DisplayEffectManager;->mService:Landroid/app/IDisplayEffectManager;

    invoke-interface {v1, p1}, Landroid/app/IDisplayEffectManager;->getCurrentLevel(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 80
    :goto_0
    return v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getMode()I
    .locals 2

    .prologue
    .line 112
    :try_start_0
    sget-object v1, Landroid/app/DisplayEffectManager;->mService:Landroid/app/IDisplayEffectManager;

    invoke-interface {v1}, Landroid/app/IDisplayEffectManager;->getMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 114
    :goto_0
    return v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSupportedDisplayEffect()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    :try_start_0
    sget-object v1, Landroid/app/DisplayEffectManager;->mService:Landroid/app/IDisplayEffectManager;

    invoke-interface {v1}, Landroid/app/IDisplayEffectManager;->getSupportedDisplayEffect()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 56
    :goto_0
    return-object v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSupportedMaxLevel(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 70
    :try_start_0
    sget-object v1, Landroid/app/DisplayEffectManager;->mService:Landroid/app/IDisplayEffectManager;

    invoke-interface {v1, p1}, Landroid/app/IDisplayEffectManager;->getSupportedMaxLevel(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 72
    :goto_0
    return v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSupportedMode()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    :try_start_0
    sget-object v1, Landroid/app/DisplayEffectManager;->mService:Landroid/app/IDisplayEffectManager;

    invoke-interface {v1}, Landroid/app/IDisplayEffectManager;->getSupportedMode()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 64
    :goto_0
    return-object v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCABC(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 120
    :try_start_0
    sget-object v1, Landroid/app/DisplayEffectManager;->mService:Landroid/app/IDisplayEffectManager;

    invoke-interface {v1, p1}, Landroid/app/IDisplayEffectManager;->setCABC(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDisplayEffectLevel(II)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "level"    # I

    .prologue
    .line 86
    :try_start_0
    sget-object v1, Landroid/app/DisplayEffectManager;->mService:Landroid/app/IDisplayEffectManager;

    invoke-interface {v1, p1, p2}, Landroid/app/IDisplayEffectManager;->setDisplayEffectLevel(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 88
    :goto_0
    return v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setModeFromSettings(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 95
    :try_start_0
    sget-object v1, Landroid/app/DisplayEffectManager;->mService:Landroid/app/IDisplayEffectManager;

    invoke-interface {v1, p1}, Landroid/app/IDisplayEffectManager;->setModeFromSettings(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 97
    :goto_0
    return v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setModeOverride(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 104
    :try_start_0
    sget-object v1, Landroid/app/DisplayEffectManager;->mService:Landroid/app/IDisplayEffectManager;

    invoke-interface {v1, p1}, Landroid/app/IDisplayEffectManager;->setModeOverride(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 106
    :goto_0
    return v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method
