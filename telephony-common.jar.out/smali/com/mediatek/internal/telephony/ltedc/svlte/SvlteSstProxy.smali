.class public Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;
.super Landroid/os/Handler;
.source "SvlteSstProxy.java"


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_DATA_ATTACHED:I = 0x64

.field private static final EVENT_DATA_ATTACHED_LTE:I = 0x69

.field private static final EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED:I = 0x68

.field private static final EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED_LTE:I = 0x6d

.field private static final EVENT_DATA_DETACHED:I = 0x65

.field private static final EVENT_DATA_DETACHED_LTE:I = 0x6a

.field private static final EVENT_PS_RESTRICT_DISABLED:I = 0x67

.field private static final EVENT_PS_RESTRICT_DISABLED_LTE:I = 0x6c

.field private static final EVENT_PS_RESTRICT_ENABLED:I = 0x66

.field private static final EVENT_PS_RESTRICT_ENABLED_LTE:I = 0x6b

.field private static final LOG_TAG_PHONE:Ljava/lang/String; = "PHONE"

.field private static final TAG_PREFIX:Ljava/lang/String; = "[SvlteSstProxy]"

.field private static final mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;


# instance fields
.field private mAttachedRegistrants:Landroid/os/RegistrantList;

.field private mCdmaSst:Lcom/android/internal/telephony/ServiceStateTracker;

.field private mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

.field private mDetachedRegistrants:Landroid/os/RegistrantList;

.field private mEnabled:Z

.field private mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

.field private mLteSst:Lcom/android/internal/telephony/ServiceStateTracker;

.field private mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

.field private mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;)V
    .locals 3
    .param p1, "lteDcPhoneProxy"    # Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 45
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mAttachedRegistrants:Landroid/os/RegistrantList;

    .line 46
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mDetachedRegistrants:Landroid/os/RegistrantList;

    .line 47
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    .line 48
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    .line 49
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mEnabled:Z

    .line 54
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 55
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mCdmaSst:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 56
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mLteSst:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 57
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mCdmaSst:Lcom/android/internal/telephony/ServiceStateTracker;

    const/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mCdmaSst:Lcom/android/internal/telephony/ServiceStateTracker;

    const/16 v1, 0x65

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mCdmaSst:Lcom/android/internal/telephony/ServiceStateTracker;

    const/16 v1, 0x66

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mCdmaSst:Lcom/android/internal/telephony/ServiceStateTracker;

    const/16 v1, 0x67

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mCdmaSst:Lcom/android/internal/telephony/ServiceStateTracker;

    const/16 v1, 0x68

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mLteSst:Lcom/android/internal/telephony/ServiceStateTracker;

    const/16 v1, 0x69

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mLteSst:Lcom/android/internal/telephony/ServiceStateTracker;

    const/16 v1, 0x6a

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mLteSst:Lcom/android/internal/telephony/ServiceStateTracker;

    const/16 v1, 0x6b

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mLteSst:Lcom/android/internal/telephony/ServiceStateTracker;

    const/16 v1, 0x6c

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mLteSst:Lcom/android/internal/telephony/ServiceStateTracker;

    const/16 v1, 0x6d

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method public static getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;
    .locals 3

    .prologue
    .line 75
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "SvlteSstProxy.getInstance can\'t be called before make()"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 80
    :cond_0
    :try_start_1
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private isLteMode()Z
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getPsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 307
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvlteSstProxy]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void
.end method

.method public static make(Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;
    .locals 2
    .param p0, "lteDcPhoneProxy"    # Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .prologue
    .line 90
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;

    monitor-exit v1

    .line 96
    :goto_0
    return-object v0

    .line 95
    :cond_0
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;-><init>(Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;

    .line 96
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;

    monitor-exit v1

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyForDataConnectionAttached()V
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 185
    :cond_0
    return-void
.end method

.method private notifyForDataConnectionDetached()V
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 214
    :cond_0
    return-void
.end method

.method private notifyForDataRegStateOrRatChanged()V
    .locals 6

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->isLteMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mLteSst:Lcom/android/internal/telephony/ServiceStateTracker;

    :goto_0
    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    .line 294
    .local v1, "rat":I
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->isLteMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mLteSst:Lcom/android/internal/telephony/ServiceStateTracker;

    :goto_1
    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    .line 296
    .local v0, "drs":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataRegStateRilRadioTechnologyChanged: drs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->logd(Ljava/lang/String;)V

    .line 298
    const-string v2, "gsm.network.type"

    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mEnabled:Z

    if-eqz v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 303
    :cond_0
    return-void

    .line 293
    .end local v0    # "drs":I
    .end local v1    # "rat":I
    :cond_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mCdmaSst:Lcom/android/internal/telephony/ServiceStateTracker;

    goto :goto_0

    .line 294
    .restart local v1    # "rat":I
    :cond_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mCdmaSst:Lcom/android/internal/telephony/ServiceStateTracker;

    goto :goto_1
.end method

.method private notifyForPsRestrictedDisabled()V
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 270
    :cond_0
    return-void
.end method

.method private notifyForPsRestrictedEnabled()V
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 242
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->logd(Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->isLteMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 118
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->notifyForDataConnectionAttached()V

    goto :goto_0

    .line 121
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->notifyForDataConnectionDetached()V

    goto :goto_0

    .line 124
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->notifyForPsRestrictedEnabled()V

    goto :goto_0

    .line 127
    :pswitch_3
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->notifyForPsRestrictedDisabled()V

    goto :goto_0

    .line 130
    :pswitch_4
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->notifyForDataRegStateOrRatChanged()V

    goto :goto_0

    .line 136
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 138
    :pswitch_5
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->notifyForDataConnectionAttached()V

    goto :goto_0

    .line 141
    :pswitch_6
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->notifyForDataConnectionDetached()V

    goto :goto_0

    .line 144
    :pswitch_7
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->notifyForPsRestrictedEnabled()V

    goto :goto_0

    .line 147
    :pswitch_8
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->notifyForPsRestrictedDisabled()V

    goto :goto_0

    .line 150
    :pswitch_9
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->notifyForDataRegStateOrRatChanged()V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 136
    :pswitch_data_1
    .packed-switch 0x69
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mEnabled:Z

    return v0
.end method

.method public registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 165
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 166
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 167
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mEnabled:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->isLteMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mLteSst:Lcom/android/internal/telephony/ServiceStateTracker;

    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-nez v1, :cond_0

    .line 169
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 171
    :cond_0
    return-void

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mCdmaSst:Lcom/android/internal/telephony/ServiceStateTracker;

    goto :goto_0
.end method

.method public registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 194
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 195
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 196
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mEnabled:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->isLteMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mLteSst:Lcom/android/internal/telephony/ServiceStateTracker;

    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 200
    :cond_0
    return-void

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mCdmaSst:Lcom/android/internal/telephony/ServiceStateTracker;

    goto :goto_0
.end method

.method public registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 279
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 280
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 281
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->notifyForDataRegStateOrRatChanged()V

    .line 282
    return-void
.end method

.method public registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 251
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 252
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 253
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mEnabled:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->isLteMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mLteSst:Lcom/android/internal/telephony/ServiceStateTracker;

    :goto_0
    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 256
    :cond_0
    return-void

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mCdmaSst:Lcom/android/internal/telephony/ServiceStateTracker;

    goto :goto_0
.end method

.method public registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 223
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 224
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 225
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mEnabled:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->isLteMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mLteSst:Lcom/android/internal/telephony/ServiceStateTracker;

    :goto_0
    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 228
    :cond_0
    return-void

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mCdmaSst:Lcom/android/internal/telephony/ServiceStateTracker;

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "mEnabled"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mEnabled:Z

    .line 106
    return-void
.end method

.method public unregisterForDataConnectionAttached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 179
    return-void
.end method

.method public unregisterForDataConnectionDetached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 208
    return-void
.end method

.method public unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 290
    return-void
.end method

.method public unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 264
    return-void
.end method

.method public unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteSstProxy;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 236
    return-void
.end method
