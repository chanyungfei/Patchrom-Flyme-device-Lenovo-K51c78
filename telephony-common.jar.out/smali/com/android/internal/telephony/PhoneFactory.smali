.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# static fields
.field static final EVDO_DT_SUPPORT:Ljava/lang/String; = "ril.evdo.dtsupport"

.field static final LOG_TAG:Ljava/lang/String; = "PhoneFactory"

.field static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field private static mBgDataChangeUpdate:Ljava/lang/Runnable;

.field private static mBgDataLastSetting:Z

.field private static mNetworkManager:Lcom/mediatek/internal/telephony/NetworkManager;

.field private static mProxyController:Lcom/android/internal/telephony/ProxyController;

.field private static mRadioManager:Lcom/mediatek/internal/telephony/RadioManager;

.field private static mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private static sActiveSvlteModeSlotId:I

.field private static sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private static sCommandsInterfaceLteDcs:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;

.field static final sLockProxyPhones:Ljava/lang/Object;

.field private static sLteDcPhoneProxys:[Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

.field private static sMadeDefaults:Z

.field private static sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private static sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;

.field private static sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

.field private static sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

.field private static sSvlteUiccController:Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;

.field private static sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    .line 80
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    .line 81
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;

    .line 83
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 94
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 95
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .line 97
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 100
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    .line 114
    const-string v0, "true"

    const-string v1, "persist.backgrounddata.enable"

    const-string v2, " false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->mBgDataLastSetting:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->mBgDataLastSetting:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 71
    sput-boolean p0, Lcom/android/internal/telephony/PhoneFactory;->mBgDataLastSetting:Z

    return p0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method private static calculateNetworkType(Landroid/content/Context;I)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .prologue
    .line 417
    const/4 v1, -0x1

    .line 418
    .local v1, "networkMode":I
    const-string v3, "persist.radio.simswitch"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 421
    .local v0, "capabilityPhoneId":I
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidPhoneId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 422
    const-string v3, "PhoneFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateNetworkType error, phone id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 450
    .end local v1    # "networkMode":I
    .local v2, "networkMode":I
    :goto_0
    return v2

    .line 426
    .end local v2    # "networkMode":I
    .restart local v1    # "networkMode":I
    :cond_0
    sget v3, Lcom/android/internal/telephony/PhoneFactory;->sActiveSvlteModeSlotId:I

    if-ne v3, p1, :cond_1

    .line 427
    const/4 v1, 0x4

    move v2, v1

    .line 428
    .end local v1    # "networkMode":I
    .restart local v2    # "networkMode":I
    goto :goto_0

    .line 429
    .end local v2    # "networkMode":I
    .restart local v1    # "networkMode":I
    :cond_1
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidateSlotId(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 430
    if-ne p1, v0, :cond_2

    .line 431
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(Landroid/content/Context;)I

    move-result v1

    :goto_1
    move v2, v1

    .line 435
    .end local v1    # "networkMode":I
    .restart local v2    # "networkMode":I
    goto :goto_0

    .line 433
    .end local v2    # "networkMode":I
    .restart local v1    # "networkMode":I
    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    .line 438
    :cond_3
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result p1

    .line 441
    sget v3, Lcom/android/internal/telephony/PhoneFactory;->sActiveSvlteModeSlotId:I

    if-eq v3, p1, :cond_5

    .line 442
    const/4 v1, 0x4

    :cond_4
    :goto_2
    move v2, v1

    .line 450
    .end local v1    # "networkMode":I
    .restart local v2    # "networkMode":I
    goto :goto_0

    .line 443
    .end local v2    # "networkMode":I
    .restart local v1    # "networkMode":I
    :cond_5
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidateSlotId(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 444
    if-ne p1, v0, :cond_6

    .line 445
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(Landroid/content/Context;)I

    move-result v1

    goto :goto_2

    .line 447
    :cond_6
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public static calculatePreferredNetworkType(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 620
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    sget v3, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 623
    .local v0, "networkType":I
    const-string v1, "PhoneFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculatePreferredNetworkType: networkType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return v0
.end method

.method public static calculatePreferredNetworkType(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneSubId"    # I

    .prologue
    .line 635
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preferred_network_mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 638
    .local v0, "networkType":I
    const-string v1, "PhoneFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculatePreferredNetworkType: phoneSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " networkType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return v0
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 746
    const-string v8, "PhoneFactory:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v8

    check-cast v8, [Lcom/android/internal/telephony/PhoneProxy;

    move-object v7, v8

    check-cast v7, [Lcom/android/internal/telephony/PhoneProxy;

    .line 748
    .local v7, "phones":[Lcom/android/internal/telephony/PhoneProxy;
    const/4 v2, -0x1

    .line 749
    .local v2, "i":I
    move-object v0, v7

    .local v0, "arr$":[Lcom/android/internal/telephony/PhoneProxy;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 751
    .local v6, "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    add-int/lit8 v2, v2, 0x1

    .line 754
    :try_start_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneBase;

    .line 755
    .local v5, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v5, p0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 762
    const-string v8, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 765
    :try_start_1
    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 769
    :goto_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 770
    const-string v8, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 749
    .end local v5    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 756
    :catch_0
    move-exception v1

    .line 757
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Telephony DebugService: Could not get Phone["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 766
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :catch_1
    move-exception v1

    .line 767
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 774
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v6    # "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v8

    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DctController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 780
    :goto_3
    :try_start_3
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 784
    :goto_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 785
    const-string v8, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 788
    :try_start_4
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v8

    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 792
    :goto_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 793
    return-void

    .line 775
    :catch_2
    move-exception v1

    .line 776
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 781
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 782
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 789
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 790
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public static getCdmaPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 536
    sget-boolean v1, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v1, :cond_0

    .line 537
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Default phones haven\'t been made yet!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 540
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 541
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 549
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 553
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    :goto_0
    monitor-exit v2

    .line 554
    return-object v0

    .line 543
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 544
    .restart local v0    # "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .line 553
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 541
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCdmaPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .param p0, "phoneId"    # I

    .prologue
    .line 455
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 457
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 466
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p0

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 472
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    :goto_0
    monitor-exit v2

    .line 473
    return-object v0

    .line 459
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p0

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4, p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 461
    .restart local v0    # "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .line 472
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 457
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDataSubscription()J
    .locals 4

    .prologue
    .line 712
    const/4 v1, -0x1

    .line 715
    .local v1, "subId":I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_data_call"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 721
    :goto_0
    int-to-long v2, v1

    return-wide v2

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "PhoneFactory"

    const-string v3, "Settings Exception Reading Dual Sim Data Call Values"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 485
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v2

    .line 486
    :try_start_0
    sget-boolean v1, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v1, :cond_0

    .line 487
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Default phones haven\'t been made yet!"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 496
    .local v0, "phoneId":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 489
    .end local v0    # "phoneId":I
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 490
    .restart local v0    # "phoneId":I
    const-string v1, "PhoneFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultPhone before revised: phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    if-ltz v0, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 492
    :cond_1
    const/4 v0, 0x0

    .line 494
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v1, v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public static getDefaultSubscription()I
    .locals 1

    .prologue
    .line 645
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v0

    return v0
.end method

.method public static getGsmPhone()Lcom/android/internal/telephony/Phone;
    .locals 3

    .prologue
    .line 558
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 559
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 560
    :cond_0
    const/4 v0, 0x0

    .line 562
    :cond_1
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    return-object v1
.end method

.method public static getGsmPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .param p0, "phoneId"    # I

    .prologue
    .line 477
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 478
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p0

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 480
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    return-object v0

    .line 481
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 6
    .param p0, "phoneId"    # I

    .prologue
    .line 501
    const-string v0, ""

    .line 503
    .local v0, "dbgInfo":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v3

    .line 504
    :try_start_0
    sget-boolean v2, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v2, :cond_0

    .line 505
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Default phones haven\'t been made yet!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 523
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 507
    :cond_0
    const v2, 0x7fffffff

    if-ne p0, v2, :cond_1

    .line 508
    :try_start_1
    const-string v0, "phoneId == DEFAULT_PHONE_ID return sProxyPhone"

    .line 509
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;

    .line 521
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    :goto_0
    const-string v2, "PhoneFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPhone:- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " phone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    monitor-exit v3

    return-object v1

    .line 512
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 513
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneIdByPhoneId(I)I

    move-result p0

    .line 516
    :cond_2
    const-string v0, "phoneId != DEFAULT_PHONE_ID return sProxyPhones[phoneId]"

    .line 517
    if-ltz p0, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge p0, v2, :cond_3

    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v2, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :goto_1
    goto :goto_0

    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getPhones()[Lcom/android/internal/telephony/Phone;
    .locals 3

    .prologue
    .line 527
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v1

    .line 528
    :try_start_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_0

    .line 529
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 531
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public static getSMSSubscription()I
    .locals 4

    .prologue
    .line 726
    const/4 v1, -0x1

    .line 728
    .local v1, "subId":I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_sms"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 734
    :goto_0
    return v1

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "PhoneFactory"

    const-string v3, "Settings Exception Reading Dual Sim SMS Values"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getVoiceSubscription()I
    .locals 4

    .prologue
    .line 650
    const/4 v1, -0x1

    .line 653
    .local v1, "subId":I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_voice_call"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 659
    :goto_0
    return v1

    .line 655
    :catch_0
    move-exception v0

    .line 656
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "PhoneFactory"

    const-string v3, "Settings Exception Reading Dual Sim Voice Call Values"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getWorldPhone()Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;
    .locals 2

    .prologue
    .line 566
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    if-nez v0, :cond_0

    .line 567
    const-string v0, "PhoneFactory"

    const-string v1, "sWorldPhone is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    return-object v0
.end method

.method public static isEvdoDTSupport()Z
    .locals 2

    .prologue
    .line 796
    const-string v0, "ril.evdo.dtsupport"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    const/4 v0, 0x1

    .line 799
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPromptEnabled()Z
    .locals 6

    .prologue
    .line 664
    const/4 v0, 0x0

    .line 665
    .local v0, "prompt":Z
    const/4 v2, 0x0

    .line 667
    .local v2, "value":I
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_sim_voice_prompt"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 672
    :goto_0
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 673
    :goto_1
    const-string v3, "PhoneFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prompt option:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    return v0

    .line 669
    :catch_0
    move-exception v1

    .line 670
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "PhoneFactory"

    const-string v4, "Settings Exception Reading Dual Sim Voice Prompt Values"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 672
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static isSMSPromptEnabled()Z
    .locals 6

    .prologue
    .line 688
    const/4 v0, 0x0

    .line 689
    .local v0, "prompt":Z
    const/4 v2, 0x0

    .line 691
    .local v2, "value":I
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_sim_sms_prompt"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 696
    :goto_0
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 697
    :goto_1
    const-string v3, "PhoneFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMS Prompt option:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    return v0

    .line 693
    :catch_0
    move-exception v1

    .line 694
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "PhoneFactory"

    const-string v4, "Settings Exception Reading Dual Sim SMS Prompt Values"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 696
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 23
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    sget-object v19, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v19

    .line 129
    :try_start_0
    sget-boolean v18, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v18, :cond_11

    .line 130
    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 133
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->create()Lcom/android/internal/telephony/TelephonyDevController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    const/16 v16, 0x0

    .line 137
    .local v16, "retryCount":I
    :goto_0
    const/4 v8, 0x0

    .line 138
    .local v8, "hasException":Z
    add-int/lit8 v16, v16, 0x1

    .line 143
    :try_start_1
    new-instance v18, Landroid/net/LocalServerSocket;

    const-string v20, "com.android.internal.telephony"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :goto_1
    if-nez v8, :cond_4

    .line 160
    :try_start_2
    new-instance v18, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v18, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 163
    sget v15, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 164
    .local v15, "preferredNetworkMode":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v18

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 165
    const/4 v15, 0x7

    .line 168
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getDefault(Landroid/content/Context;)I

    move-result v5

    .line 169
    .local v5, "cdmaSubscription":I
    const-string v18, "PhoneFactory"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Cdma Subscription set to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v11

    .line 175
    .local v11, "numPhones":I
    new-array v10, v11, [I

    .line 176
    .local v10, "networkModes":[I
    new-array v0, v11, [Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v18, v0

    sput-object v18, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    .line 177
    new-array v0, v11, [Lcom/android/internal/telephony/RIL;

    move-object/from16 v18, v0

    sput-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 180
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 181
    new-array v0, v11, [Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-object/from16 v18, v0

    sput-object v18, Lcom/android/internal/telephony/PhoneFactory;->sLteDcPhoneProxys:[Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 182
    new-array v0, v11, [Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    sput-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaceLteDcs:[Lcom/android/internal/telephony/CommandsInterface;

    .line 183
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v18

    sput v18, Lcom/android/internal/telephony/PhoneFactory;->sActiveSvlteModeSlotId:I

    .line 184
    sget v18, Lcom/android/internal/telephony/PhoneFactory;->sActiveSvlteModeSlotId:I

    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    const/16 v18, 0x0

    :goto_2
    invoke-static/range {v18 .. v18}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setCdmaSocketSlotId(I)V

    .line 190
    :cond_1
    const-string v18, "persist.radio.simswitch"

    const-string v20, "1"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 193
    .local v4, "capabilityPhoneId":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    if-ge v9, v11, :cond_9

    .line 212
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isEvdoDTSupport()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v18

    if-eqz v18, :cond_7

    .line 214
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v20, "preferred_network_mode"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    aput v18, v10, v9
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    :goto_4
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_2

    .line 224
    const/16 v18, 0x1

    :try_start_4
    aput v18, v10, v9

    .line 226
    :cond_2
    const-string v18, "PhoneFactory"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "EVDO Network Mode set to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget v21, v10, v9

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_3
    :goto_5
    const-string v18, "PhoneFactory"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RILJ Sub = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v18, "PhoneFactory"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "capabilityPhoneId="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " Network Mode set to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget v21, v10, v9

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    new-instance v20, Lcom/android/internal/telephony/RIL;

    aget v21, v10, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    aput-object v20, v18, v9

    .line 193
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 144
    .end local v4    # "capabilityPhoneId":I
    .end local v5    # "cdmaSubscription":I
    .end local v9    # "i":I
    .end local v10    # "networkModes":[I
    .end local v11    # "numPhones":I
    .end local v15    # "preferredNetworkMode":I
    :catch_0
    move-exception v7

    .line 145
    .local v7, "ex":Ljava/io/IOException;
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 150
    .end local v7    # "ex":Ljava/io/IOException;
    :cond_4
    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_5

    .line 151
    new-instance v18, Ljava/lang/RuntimeException;

    const-string v20, "PhoneFactory probably already running"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 352
    .end local v8    # "hasException":Z
    .end local v16    # "retryCount":I
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v18

    .line 154
    .restart local v8    # "hasException":Z
    .restart local v16    # "retryCount":I
    :cond_5
    const-wide/16 v20, 0x7d0

    :try_start_5
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 155
    :catch_1
    move-exception v18

    goto/16 :goto_0

    .line 184
    .restart local v5    # "cdmaSubscription":I
    .restart local v10    # "networkModes":[I
    .restart local v11    # "numPhones":I
    .restart local v15    # "preferredNetworkMode":I
    :cond_6
    :try_start_6
    sget v18, Lcom/android/internal/telephony/PhoneFactory;->sActiveSvlteModeSlotId:I

    goto/16 :goto_2

    .line 217
    .restart local v4    # "capabilityPhoneId":I
    .restart local v9    # "i":I
    :catch_2
    move-exception v17

    .line 218
    .local v17, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v18, "PhoneFactory"

    const-string v20, "Settings Exception Reading Value At Index for Settings.Global.PREFERRED_NETWORK_MODE"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    aput v15, v10, v9

    goto/16 :goto_4

    .line 229
    .end local v17    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_7
    add-int/lit8 v18, v4, -0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_8

    .line 230
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(Landroid/content/Context;)I

    move-result v18

    aput v18, v10, v9

    .line 235
    :goto_6
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 236
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/android/internal/telephony/PhoneFactory;->calculateNetworkType(Landroid/content/Context;I)I

    move-result v18

    aput v18, v10, v9

    goto/16 :goto_5

    .line 232
    :cond_8
    const/16 v18, 0x1

    aput v18, v10, v9

    goto :goto_6

    .line 247
    :cond_9
    const-string v18, "PhoneFactory"

    const-string v20, "Creating SubscriptionController"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionController;

    .line 252
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v18

    sput-object v18, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 254
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 255
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;->make()Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;

    move-result-object v18

    sput-object v18, Lcom/android/internal/telephony/PhoneFactory;->sSvlteUiccController:Lcom/mediatek/internal/telephony/uicc/SvlteUiccController;

    .line 259
    :cond_a
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v11, v1}, Lcom/mediatek/internal/telephony/RadioManager;->init(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v18

    sput-object v18, Lcom/android/internal/telephony/PhoneFactory;->mRadioManager:Lcom/mediatek/internal/telephony/RadioManager;

    .line 261
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v11, v1}, Lcom/mediatek/internal/telephony/NetworkManager;->init(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/NetworkManager;

    move-result-object v18

    sput-object v18, Lcom/android/internal/telephony/PhoneFactory;->mNetworkManager:Lcom/mediatek/internal/telephony/NetworkManager;

    .line 263
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v18

    if-nez v18, :cond_d

    .line 265
    const/4 v9, 0x0

    :goto_7
    if-ge v9, v11, :cond_e

    .line 266
    const/4 v13, 0x0

    .line 267
    .local v13, "phone":Lcom/android/internal/telephony/PhoneBase;
    aget v18, v10, v9

    invoke-static/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v14

    .line 269
    .local v14, "phoneType":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_c

    .line 270
    new-instance v13, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local v13    # "phone":Lcom/android/internal/telephony/PhoneBase;
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v18, v18, v9

    sget-object v20, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v13, v0, v1, v2, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 290
    .restart local v13    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_b
    :goto_8
    const-string v18, "PhoneFactory"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Creating Phone with type = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " sub = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    new-instance v20, Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    aput-object v20, v18, v9

    .line 265
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 272
    :cond_c
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v14, v0, :cond_b

    .line 274
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 283
    new-instance v13, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v13    # "phone":Lcom/android/internal/telephony/PhoneBase;
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v18, v18, v9

    sget-object v20, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v13, v0, v1, v2, v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .restart local v13    # "phone":Lcom/android/internal/telephony/PhoneBase;
    goto :goto_8

    .line 276
    :pswitch_0
    new-instance v13, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    .end local v13    # "phone":Lcom/android/internal/telephony/PhoneBase;
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v18, v18, v9

    sget-object v20, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v13, v0, v1, v2, v9}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 278
    .restart local v13    # "phone":Lcom/android/internal/telephony/PhoneBase;
    goto :goto_8

    .line 295
    .end local v13    # "phone":Lcom/android/internal/telephony/PhoneBase;
    .end local v14    # "phoneType":I
    :cond_d
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneFactory;->svlteInit(Landroid/content/Context;)V

    .line 298
    :cond_e
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    sget-object v20, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    sget-object v21, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProxyController;->getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/PhoneProxy;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ProxyController;

    move-result-object v18

    sput-object v18, Lcom/android/internal/telephony/PhoneFactory;->mProxyController:Lcom/android/internal/telephony/ProxyController;

    .line 304
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    const/16 v20, 0x0

    aget-object v18, v18, v20

    sput-object v18, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;

    .line 305
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    const/16 v20, 0x0

    aget-object v18, v18, v20

    sput-object v18, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 309
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v6

    .line 311
    .local v6, "componentName":Landroid/content/ComponentName;
    const-string v12, "NONE"

    .line 312
    .local v12, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_f

    .line 313
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 315
    :cond_f
    const-string v18, "PhoneFactory"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "defaultSmsApplication: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/SmsApplication;->initSmsPackageMonitor(Landroid/content/Context;)V

    .line 320
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 322
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v20

    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    check-cast v18, [Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->updatePhonesAvailability([Lcom/android/internal/telephony/PhoneProxy;)V

    .line 323
    const-string v18, "PhoneFactory"

    const-string v20, "Creating SubInfoRecordUpdater "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v18, Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    sget-object v20, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    sget-object v21, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v18, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .line 326
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v18

    sget-object v20, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->updatePhonesAvailability([Lcom/android/internal/telephony/PhoneProxy;)V

    .line 327
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSupport()Z

    move-result v18

    if-eqz v18, :cond_10

    .line 328
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneWrapper;->getWorldPhoneInstance()Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    move-result-object v18

    sput-object v18, Lcom/android/internal/telephony/PhoneFactory;->sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    .line 331
    :cond_10
    new-instance v18, Lcom/android/internal/telephony/PhoneFactory$1;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneFactory$1;-><init>()V

    sput-object v18, Lcom/android/internal/telephony/PhoneFactory;->mBgDataChangeUpdate:Ljava/lang/Runnable;

    .line 349
    sget-object v18, Lcom/android/internal/telephony/PhoneFactory;->mBgDataChangeUpdate:Ljava/lang/Runnable;

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 352
    .end local v4    # "capabilityPhoneId":I
    .end local v5    # "cdmaSubscription":I
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "hasException":Z
    .end local v9    # "i":I
    .end local v10    # "networkModes":[I
    .end local v11    # "numPhones":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v15    # "preferredNetworkMode":I
    .end local v16    # "retryCount":I
    :cond_11
    monitor-exit v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 353
    return-void

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 121
    return-void
.end method

.method public static makeImsPhone(Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/imsphone/ImsPhone;
    .locals 1
    .param p0, "phoneNotifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p1, "defaultPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 742
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneFactory;->makePhone(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    return-object v0
.end method

.method public static makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 2
    .param p0, "sipUri"    # Ljava/lang/String;

    .prologue
    .line 579
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultSubscription(I)V
    .locals 6
    .param p0, "subId"    # I

    .prologue
    .line 587
    const-string v3, "persist.radio.default.sub"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v2

    .line 590
    .local v2, "phoneId":I
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v4

    .line 592
    if-ltz v2, :cond_0

    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 593
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v3, v3, v2

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;

    .line 594
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v2

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 595
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 597
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "defaultMccMnc":Ljava/lang/String;
    const-string v3, "PhoneFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update mccmnc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 605
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 606
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 607
    invoke-static {v1, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 608
    const-string v3, "PhoneFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDefaultSubscription : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Broadcasting Default Subscription Changed..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 611
    return-void

    .line 597
    .end local v0    # "defaultMccMnc":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public static setPromptEnabled(Z)V
    .locals 4
    .param p0, "enabled"    # Z

    .prologue
    .line 680
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 681
    .local v0, "value":I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_voice_prompt"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 683
    const-string v1, "PhoneFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoicePromptOption to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return-void

    .line 680
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setSMSPromptEnabled(Z)V
    .locals 4
    .param p0, "enabled"    # Z

    .prologue
    .line 704
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 705
    .local v0, "value":I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_sms_prompt"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 707
    const-string v1, "PhoneFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSMSPromptOption to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    return-void

    .line 704
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static svlteInit(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 357
    const/4 v5, 0x0

    .line 358
    .local v5, "svlteDcPhone":Lcom/android/internal/telephony/PhoneBase;
    const/4 v0, 0x0

    .line 359
    .local v0, "cdmaPhone":Lcom/android/internal/telephony/PhoneBase;
    const/4 v2, -0x1

    .line 360
    .local v2, "networkType":I
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getDefault(Landroid/content/Context;)I

    move-result v1

    .line 361
    .local v1, "cdmaSubscription":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 362
    .local v3, "numPhones":I
    const/4 v4, 0x0

    .local v4, "phoneId":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 363
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getLteDcPhoneId(I)I

    move-result v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/PhoneFactory;->calculateNetworkType(Landroid/content/Context;I)I

    move-result v2

    .line 364
    const-string v6, "PhoneFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "svlteInit, phoneId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", networkType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    sget v6, Lcom/android/internal/telephony/PhoneFactory;->sActiveSvlteModeSlotId:I

    if-ne v6, v4, :cond_0

    .line 366
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v0    # "cdmaPhone":Lcom/android/internal/telephony/PhoneBase;
    sget-object v6, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v6, v6, v4

    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, p0, v6, v7, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 371
    .restart local v0    # "cdmaPhone":Lcom/android/internal/telephony/PhoneBase;
    sget-object v6, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaceLteDcs:[Lcom/android/internal/telephony/CommandsInterface;

    new-instance v7, Lcom/android/internal/telephony/RIL;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getLteDcPhoneId(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, p0, v2, v1, v8}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    aput-object v7, v6, v4

    .line 375
    new-instance v5, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteDcPhone;

    .end local v5    # "svlteDcPhone":Lcom/android/internal/telephony/PhoneBase;
    sget-object v6, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaceLteDcs:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v6, v6, v4

    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getLteDcPhoneId(I)I

    move-result v8

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteDcPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 379
    .restart local v5    # "svlteDcPhone":Lcom/android/internal/telephony/PhoneBase;
    sget-object v6, Lcom/android/internal/telephony/PhoneFactory;->sLteDcPhoneProxys:[Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    new-instance v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    const/4 v8, 0x3

    invoke-direct {v7, v5, v0, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;I)V

    aput-object v7, v6, v4

    .line 401
    :goto_1
    sget-object v6, Lcom/android/internal/telephony/PhoneFactory;->sLteDcPhoneProxys:[Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->initialize()V

    .line 402
    sget-object v6, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sLteDcPhoneProxys:[Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    aget-object v7, v7, v4

    aput-object v7, v6, v4

    .line 362
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 383
    :cond_0
    new-instance v5, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteDcPhone;

    .end local v5    # "svlteDcPhone":Lcom/android/internal/telephony/PhoneBase;
    sget-object v6, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v6, v6, v4

    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v5, p0, v6, v7, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteDcPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 388
    .restart local v5    # "svlteDcPhone":Lcom/android/internal/telephony/PhoneBase;
    sget-object v6, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaceLteDcs:[Lcom/android/internal/telephony/CommandsInterface;

    new-instance v7, Lcom/android/internal/telephony/RIL;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getLteDcPhoneId(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, p0, v2, v1, v8}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    aput-object v7, v6, v4

    .line 392
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v0    # "cdmaPhone":Lcom/android/internal/telephony/PhoneBase;
    sget-object v6, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaceLteDcs:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v6, v6, v4

    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getLteDcPhoneId(I)I

    move-result v8

    invoke-direct {v0, p0, v6, v7, v8}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 397
    .restart local v0    # "cdmaPhone":Lcom/android/internal/telephony/PhoneBase;
    sget-object v6, Lcom/android/internal/telephony/PhoneFactory;->sLteDcPhoneProxys:[Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    new-instance v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    const/4 v8, 0x2

    invoke-direct {v7, v5, v0, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;I)V

    aput-object v7, v6, v4

    goto :goto_1

    .line 404
    :cond_1
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->make(Landroid/content/Context;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .line 405
    sget-object v6, Lcom/android/internal/telephony/PhoneFactory;->sLteDcPhoneProxys:[Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->connectRilSocket()V

    .line 407
    sget v6, Lcom/android/internal/telephony/PhoneFactory;->sActiveSvlteModeSlotId:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_2

    sget v6, Lcom/android/internal/telephony/PhoneFactory;->sActiveSvlteModeSlotId:I

    if-ge v6, v3, :cond_2

    .line 409
    sget-object v6, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaceLteDcs:[Lcom/android/internal/telephony/CommandsInterface;

    sget v8, Lcom/android/internal/telephony/PhoneFactory;->sActiveSvlteModeSlotId:I

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/UiccController;->setSvlteCi(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 410
    sget-object v6, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    sget v7, Lcom/android/internal/telephony/PhoneFactory;->sActiveSvlteModeSlotId:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/UiccController;->setSvlteIndex(I)V

    .line 412
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/PhoneFactory;->sLteDcPhoneProxys:[Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;->make([Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRoamingController;

    .line 413
    return-void
.end method
