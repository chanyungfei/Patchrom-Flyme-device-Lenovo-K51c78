.class public Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;
.super Ljava/lang/Object;
.source "SvlteRoamingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy2;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingControllerPhoneProxy1;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingFactory;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "[Svlte][SvlteRoamingController]"

.field private static final mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;


# instance fields
.field private mIrSwitchingController:[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;

.field private mLteDcPhoneProxys:[Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>([Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;)V
    .locals 4
    .param p1, "lteDcPhoneProxys"    # [Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-eqz p1, :cond_0

    array-length v1, p1

    .line 32
    .local v1, "len":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SvlteRoamingController, constructor lteDcPhoneProxys="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lteDcPhoneProxys.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;->logd(Ljava/lang/String;)V

    .line 34
    array-length v2, p1

    new-array v2, v2, [Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;->mLteDcPhoneProxys:[Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 35
    array-length v2, p1

    new-array v2, v2, [Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;->mIrSwitchingController:[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;

    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;->mLteDcPhoneProxys:[Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 37
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;->mLteDcPhoneProxys:[Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    aget-object v3, p1, v0

    aput-object v3, v2, v0

    .line 38
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;->createIrSwitchingController(I)V

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 31
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 40
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    :cond_1
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;

    return-object v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 353
    const-string v0, "[Svlte][SvlteRoamingController]"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void
.end method

.method public static make([Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;
    .locals 3
    .param p0, "lteDcPhoneProxys"    # [Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .prologue
    .line 48
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "SvlteRoamingController.make() should only be called once"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 53
    :cond_0
    :try_start_1
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;-><init>([Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;

    .line 54
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method


# virtual methods
.method public createIrSwitchingController(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;->mIrSwitchingController:[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;->mLteDcPhoneProxys:[Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    aget-object v1, v1, p1

    invoke-static {v1, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingFactory;->create(Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController$IrSwitchingController;

    move-result-object v1

    aput-object v1, v0, p1

    .line 71
    return-void
.end method
