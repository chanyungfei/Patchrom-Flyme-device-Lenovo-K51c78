.class public Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;
.super Ljava/lang/Object;
.source "ViaPolicyManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ViaPolicyManager"

.field private static final VIA_GPS_PROCESS_CLASS_NAME:Ljava/lang/String; = "com.mediatek.internal.telephony.cdma.ViaGpsProcess"

.field private static final VIA_PLUS_CODE_IMPL_CLASS_NAME:Ljava/lang/String; = "com.mediatek.internal.telephony.cdma.ViaPlusCodeUtils"

.field private static final VIA_SMS_INTERFACES_IMPL_CLASS_NAME:Ljava/lang/String; = "com.mediatek.internal.telephony.cdma.ViaSmsInterfacesAdapter"

.field private static final VIA_UTKSERVICE_IMPL_CLASS_NAME:Ljava/lang/String; = "com.android.internal.telephony.cdma.utk.UtkService"

.field private static final mLock:Ljava/lang/Object;

.field private static sGpsProcessInstance:Lcom/mediatek/internal/telephony/cdma/IGpsProcess;

.field private static sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

.field private static sSmsInterfacesInstance:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

.field private static sUtkServiceInstanceSim1:Lcom/mediatek/internal/telephony/cdma/IUtkService;

.field private static sUtkServiceInstanceSim2:Lcom/mediatek/internal/telephony/cdma/IUtkService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disposeUtkService(I)V
    .locals 3
    .param p0, "mPhoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPlusCodeUtils dispose UtkService "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim1:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 136
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim1:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/cdma/IUtkService;->dispose()V

    .line 137
    sput-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim1:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    .line 144
    :goto_0
    return-void

    .line 138
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim2:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 139
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim2:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    invoke-interface {v0}, Lcom/mediatek/internal/telephony/cdma/IUtkService;->dispose()V

    .line 140
    sput-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim2:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    goto :goto_0

    .line 142
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPlusCodeUtils no need to dispose UtkService "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getGpsProcess(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/cdma/IGpsProcess;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 156
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sGpsProcessInstance:Lcom/mediatek/internal/telephony/cdma/IGpsProcess;

    if-nez v0, :cond_1

    .line 157
    sget-object v1, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sGpsProcessInstance:Lcom/mediatek/internal/telephony/cdma/IGpsProcess;

    if-nez v0, :cond_0

    .line 159
    invoke-static {p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->makeGpsProcess(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/cdma/IGpsProcess;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sGpsProcessInstance:Lcom/mediatek/internal/telephony/cdma/IGpsProcess;

    .line 161
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGpsProcess sGpsProcessInstance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sGpsProcessInstance:Lcom/mediatek/internal/telephony/cdma/IGpsProcess;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sGpsProcessInstance:Lcom/mediatek/internal/telephony/cdma/IGpsProcess;

    return-object v0

    .line 161
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getPlusCodeUtils()Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    if-nez v0, :cond_1

    .line 63
    sget-object v1, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->makePlusCodeUtis()Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    .line 67
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPlusCodeUtils sPlusCodeUtilsInstance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sPlusCodeUtilsInstance:Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getSmsInterfaces()Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sSmsInterfacesInstance:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    if-nez v0, :cond_1

    .line 80
    sget-object v1, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sSmsInterfacesInstance:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->makeSmsInterfaces()Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sSmsInterfacesInstance:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    .line 84
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPlusCodeUtils sSmsInterfacesInstance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sSmsInterfacesInstance:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sSmsInterfacesInstance:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getUtkService(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/mediatek/internal/telephony/cdma/IUtkService;
    .locals 5
    .param p0, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    const/4 v2, 0x0

    .line 100
    if-nez p2, :cond_0

    .line 101
    const-string v3, "getPlusCodeUtils getUtkService ic == null"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 130
    :goto_0
    return-object v2

    .line 104
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhoneId()I

    move-result v1

    .line 105
    .local v1, "mPhoneId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPlusCodeUtils getUtkService mPhoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 106
    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 107
    .local v0, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v0, :cond_1

    .line 108
    const-string v3, "getPlusCodeUtils getUtkService ca == null"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_1
    if-nez v1, :cond_4

    .line 112
    sget-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim1:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    if-nez v2, :cond_3

    .line 113
    sget-object v3, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 114
    :try_start_0
    sget-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim1:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    if-nez v2, :cond_2

    .line 115
    invoke-static {p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->makeUtkService(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/mediatek/internal/telephony/cdma/IUtkService;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim1:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    .line 117
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPlusCodeUtils sUtkServiceInstanceSim1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim1:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 120
    sget-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim1:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 122
    :cond_4
    sget-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim2:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    if-nez v2, :cond_6

    .line 123
    sget-object v3, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 124
    :try_start_2
    sget-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim2:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    if-nez v2, :cond_5

    .line 125
    invoke-static {p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->makeUtkService(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/mediatek/internal/telephony/cdma/IUtkService;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim2:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    .line 127
    :cond_5
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 129
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPlusCodeUtils sUtkServiceInstanceSim2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim2:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 130
    sget-object v2, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->sUtkServiceInstanceSim2:Lcom/mediatek/internal/telephony/cdma/IUtkService;

    goto/16 :goto_0

    .line 127
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 248
    const-string v0, "ViaPolicyManager"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void
.end method

.method private static makeGpsProcess(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/cdma/IGpsProcess;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 224
    :try_start_0
    const-string v3, "com.mediatek.internal.telephony.cdma.ViaGpsProcess"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 225
    .local v2, "gpsProcessClass":Ljava/lang/Class;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/android/internal/telephony/cdma/CDMAPhone;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Lcom/android/internal/telephony/CommandsInterface;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 227
    .local v0, "c":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 228
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/cdma/IGpsProcess;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 243
    .end local v0    # "c":Ljava/lang/reflect/Constructor;
    .end local v2    # "gpsProcessClass":Ljava/lang/Class;
    :goto_0
    return-object v3

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    const-string v3, "createGpsProcess ClassNotFoundException, return default DefaultGpsProcess"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 231
    new-instance v3, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;

    invoke-direct {v3, p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 232
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 233
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    const-string v3, "createGpsProcess IllegalAccessException, return default DefaultGpsProcess"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 234
    new-instance v3, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;

    invoke-direct {v3, p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 235
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 236
    .local v1, "ex":Ljava/lang/InstantiationException;
    const-string v3, "createGpsProcess InstantiationException, return default DefaultGpsProcess"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 237
    new-instance v3, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;

    invoke-direct {v3, p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 238
    .end local v1    # "ex":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v1

    .line 239
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    const-string v3, "createGpsProcess NoSuchMethodException, return default DefaultGpsProcess"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 240
    new-instance v3, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;

    invoke-direct {v3, p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 241
    .end local v1    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v1

    .line 242
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "createGpsProcess InvocationTargetException, return default DefaultGpsProcess"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 243
    new-instance v3, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;

    invoke-direct {v3, p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/DefaultGpsProcess;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0
.end method

.method private static makePlusCodeUtis()Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;
    .locals 3

    .prologue
    .line 169
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.cdma.ViaPlusCodeUtils"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 170
    .local v1, "policyClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/cdma/IPlusCodeUtils;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 179
    :goto_0
    return-object v2

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const-string v2, "makePlusCodeUtis ClassNotFoundException, return default DefaultPlusCodeUtils"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 173
    new-instance v2, Lcom/mediatek/internal/telephony/cdma/DefaultPlusCodeUtils;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/cdma/DefaultPlusCodeUtils;-><init>()V

    goto :goto_0

    .line 174
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 175
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const-string v2, "makePlusCodeUtis IllegalAccessException, return default DefaultPlusCodeUtils"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 176
    new-instance v2, Lcom/mediatek/internal/telephony/cdma/DefaultPlusCodeUtils;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/cdma/DefaultPlusCodeUtils;-><init>()V

    goto :goto_0

    .line 177
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 178
    .local v0, "ex":Ljava/lang/InstantiationException;
    const-string v2, "makePlusCodeUtis InstantiationException, return default DefaultPlusCodeUtils"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 179
    new-instance v2, Lcom/mediatek/internal/telephony/cdma/DefaultPlusCodeUtils;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/cdma/DefaultPlusCodeUtils;-><init>()V

    goto :goto_0
.end method

.method private static makeSmsInterfaces()Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;
    .locals 3

    .prologue
    .line 185
    :try_start_0
    const-string v2, "com.mediatek.internal.telephony.cdma.ViaSmsInterfacesAdapter"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 186
    .local v1, "policyClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 195
    :goto_0
    return-object v2

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const-string v2, "makeSmsInterfaces ClassNotFoundException, return default DefaultSmsInterfaces"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 189
    new-instance v2, Lcom/mediatek/internal/telephony/cdma/DefaultSmsInterfaces;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/cdma/DefaultSmsInterfaces;-><init>()V

    goto :goto_0

    .line 190
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 191
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const-string v2, "makeSmsInterfaces IllegalAccessException, return default DefaultSmsInterfaces"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 192
    new-instance v2, Lcom/mediatek/internal/telephony/cdma/DefaultSmsInterfaces;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/cdma/DefaultSmsInterfaces;-><init>()V

    goto :goto_0

    .line 193
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 194
    .local v0, "ex":Ljava/lang/InstantiationException;
    const-string v2, "makeSmsInterfaces InstantiationException, return default DefaultSmsInterfaces"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 195
    new-instance v2, Lcom/mediatek/internal/telephony/cdma/DefaultSmsInterfaces;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/cdma/DefaultSmsInterfaces;-><init>()V

    goto :goto_0
.end method

.method private static makeUtkService(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/mediatek/internal/telephony/cdma/IUtkService;
    .locals 7
    .param p0, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 202
    :try_start_0
    const-string v3, "com.android.internal.telephony.cdma.utk.UtkService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 203
    .local v2, "policyClass":Ljava/lang/Class;
    const-string v3, "getInstance"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/android/internal/telephony/CommandsInterface;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Lcom/android/internal/telephony/uicc/UiccCard;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 205
    .local v1, "mUtkMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/cdma/IUtkService;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 217
    .end local v1    # "mUtkMethod":Ljava/lang/reflect/Method;
    .end local v2    # "policyClass":Ljava/lang/Class;
    :goto_0
    return-object v3

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const-string v3, "makeUtkService ClassNotFoundException, return default DefaultUtkService"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 208
    new-instance v3, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;-><init>()V

    goto :goto_0

    .line 209
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 210
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const-string v3, "makeUtkService IllegalAccessException, return default DefaultUtkService"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 211
    new-instance v3, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;-><init>()V

    goto :goto_0

    .line 212
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 213
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    const-string v3, "makeUtkService NoSuchMethodException, return default DefaultUtkService"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 214
    new-instance v3, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;-><init>()V

    goto :goto_0

    .line 215
    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v0

    .line 216
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "makeUtkService InvocationTargetException, return default DefaultUtkService"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->log(Ljava/lang/String;)V

    .line 217
    new-instance v3, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;

    invoke-direct {v3}, Lcom/mediatek/internal/telephony/cdma/DefaultUtkService;-><init>()V

    goto :goto_0
.end method
