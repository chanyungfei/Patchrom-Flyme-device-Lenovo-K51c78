.class public Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "AGPSSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final AGPS_LOCATION_MODE_MSA:Ljava/lang/String; = "MSA"

.field private static final AGPS_LOCATION_MODE_MSB:Ljava/lang/String; = "MSB"

.field private static final AGPS_NETWORK_TYPE_ALL:Ljava/lang/String; = "ALL"

.field private static final AGPS_NETWORK_TYPE_HOME:Ljava/lang/String; = "HOME"

.field private static final AGPS_START_MODE_COLD:Ljava/lang/String; = "COLD"

.field private static final AGPS_START_MODE_HOT:Ljava/lang/String; = "HOT"

.field private static final AGPS_START_MODE_WARM:Ljava/lang/String; = "WARM"

.field private static final ALL:Ljava/lang/String; = "1"

.field private static final ALL_MODE:I = 0x1

.field private static final ASSISTED_GPS_NETWORK:Ljava/lang/String; = "assisted_gps_network"

.field private static final ASSISTED_GPS_POSITION_MODE:Ljava/lang/String; = "assisted_gps_position_mode"

.field private static final ASSISTED_GPS_RESET_TYPE:Ljava/lang/String; = "assisted_gps_reset_type"

.field private static final ASSISTED_GPS_SUPL_HOST:Ljava/lang/String; = "assisted_gps_supl_host"

.field private static final ASSISTED_GPS_SUPL_PORT:Ljava/lang/String; = "assisted_gps_supl_port"

.field private static final COLD:Ljava/lang/String; = "2"

.field private static final ERR_MODE:Ljava/lang/String; = "2"

.field private static final HOME:Ljava/lang/String; = "0"

.field private static final HOME_MODE:I = 0x0

.field private static final HOT:Ljava/lang/String; = "0"

.field private static final HOT_MODE:I = 0x0

.field private static final MENU_RESTORE:I = 0x2

.field private static final MENU_SAVE:I = 0x1

.field private static final MSA:Ljava/lang/String; = "1"

.field private static final MSA_MODE:I = 0x1

.field private static final MSB:Ljava/lang/String; = "0"

.field private static final MSB_MODE:I = 0x0

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final STRING_ACCESS_NETWORK:Ljava/lang/String; = "network"

.field private static final STRING_AGPS_RESET_TYPE:Ljava/lang/String; = "resettype"

.field private static final STRING_PROVIDER_ID:Ljava/lang/String; = "providerid"

.field private static final STRING_SUPL_HOST:Ljava/lang/String; = "host"

.field private static final STRING_SUPL_PORT:Ljava/lang/String; = "port"

.field static final TAG:Ljava/lang/String; = "AGPSSettings"

.field private static final WARM:Ljava/lang/String; = "1"

.field private static final WARM_MODE:I = 0x1

.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private mAssistedType:Ljava/lang/String;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mFirstTime:Z

.field private mNetworkType:Ljava/lang/String;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mResetType:Ljava/lang/String;

.field private mServer:Landroid/preference/EditTextPreference;

.field private mSettingsObserver:Ljava/util/Observer;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 109
    new-instance v0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mSettingsObserver:Ljava/util/Observer;

    return-void
.end method

.method private SetValue(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 570
    const-string v5, "host"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 571
    .local v3, "supl_host":Ljava/lang/String;
    const-string v5, "port"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 572
    .local v4, "supl_port":Ljava/lang/String;
    const-string v5, "providerid"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 573
    .local v1, "agps_provid":Ljava/lang/String;
    const-string v5, "network"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "agps_network":Ljava/lang/String;
    const-string v5, "resettype"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 576
    .local v2, "agps_reset_type":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 578
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "assisted_gps_supl_host"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 581
    :cond_0
    if-eqz v4, :cond_1

    .line 583
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "assisted_gps_supl_port"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 586
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 588
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "assisted_gps_position_mode"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 591
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 593
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "assisted_gps_network"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 596
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 598
    const-string v5, "HOT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5

    .line 600
    const-string v2, "2"

    .line 611
    :goto_0
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "assisted_gps_reset_type"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 614
    :cond_4
    return-void

    .line 602
    :cond_5
    const-string v5, "WARM"

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_6

    .line 604
    const-string v2, "1"

    goto :goto_0

    .line 608
    :cond_6
    const-string v2, "0"

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->updateUI()V

    return-void
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 367
    if-eqz p1, :cond_0

    sget-object v0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    :cond_0
    const-string p1, ""

    .line 373
    .end local p1    # "value":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 355
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    sget-object p1, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->sNotSet:Ljava/lang/String;

    .line 361
    .end local p1    # "value":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private fillUi(Z)V
    .locals 2
    .param p1, "restore"    # Z

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mFirstTime:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 327
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mFirstTime:Z

    .line 328
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mServer:Landroid/preference/EditTextPreference;

    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getSuplServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getSuplPort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mServer:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mPort:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 334
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->setPrefAgpsType()V

    .line 335
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->setPrefAgpsNetwork()V

    .line 336
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->setPrefAgpsResetType()V

    .line 338
    return-void
.end method

.method private getAndroidSdkVersion()I
    .locals 2

    .prologue
    .line 707
    const/4 v0, 0x0

    .line 709
    .local v0, "version":I
    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 712
    :goto_0
    return v0

    .line 710
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getPrefAgpsResetType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 400
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "assisted_gps_reset_type"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "agps_reset_type":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 404
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 406
    const-string v0, "HOT"

    .line 418
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .end local v0    # "agps_reset_type":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 408
    .restart local v0    # "agps_reset_type":Ljava/lang/String;
    :cond_1
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 410
    const-string v0, "WARM"

    goto :goto_0

    .line 414
    :cond_2
    const-string v0, "COLD"

    goto :goto_0

    .line 418
    :cond_3
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c029a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getPrefAgpsType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 423
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "assisted_gps_position_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "agps_type":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "agps_type":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "agps_type":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c029b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPrefNetwork()Ljava/lang/String;
    .locals 3

    .prologue
    .line 393
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "assisted_gps_network"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "agps_network":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "agps_network":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "agps_network":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0299

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSuplPort()Ljava/lang/String;
    .locals 3

    .prologue
    .line 386
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "assisted_gps_supl_port"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "supl_port":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "supl_port":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "supl_port":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0298

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSuplServer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 379
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "assisted_gps_supl_host"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "supl_host":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "supl_host":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "supl_host":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0297

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private restoreAgpsParam()V
    .locals 11

    .prologue
    .line 498
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 500
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 504
    .local v6, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 506
    .local v5, "properties":Ljava/util/Properties;
    new-instance v3, Ljava/io/File;

    const-string v8, "/etc/gps.conf"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 508
    .local v3, "file":Ljava/io/File;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 512
    const-string v8, "host"

    const-string v9, "SUPL_HOST"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v8, "port"

    const-string v9, "SUPL_PORT"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 519
    if-eqz v7, :cond_5

    .line 523
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v7

    .line 530
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "properties":Ljava/util/Properties;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    const-string v8, "MSB"

    iput-object v8, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mAssistedType:Ljava/lang/String;

    .line 531
    const-string v8, "HOME"

    iput-object v8, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mNetworkType:Ljava/lang/String;

    .line 532
    const-string v8, "HOT"

    iput-object v8, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mResetType:Ljava/lang/String;

    .line 534
    const-string v8, "providerid"

    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mAssistedType:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v8, "network"

    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v8, "resettype"

    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mResetType:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->SetValue(Landroid/os/Bundle;)V

    .line 540
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->fillUi(Z)V

    .line 542
    const-string v8, "location"

    invoke-virtual {p0, v8}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    .line 544
    .local v4, "objLocManager":Landroid/location/LocationManager;
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mResetType:Ljava/lang/String;

    const-string v9, "HOT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    .line 546
    const-string v8, "resettype"

    const-string v9, "2"

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :goto_1
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getAndroidSdkVersion()I

    move-result v8

    const/16 v9, 0x15

    if-ge v8, v9, :cond_1

    .line 559
    const-string v8, "gps"

    const-string v9, "agps_parms_changed"

    invoke-virtual {v4, v8, v9, v1}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    .line 561
    .local v0, "bRet":Z
    const-string v8, "AGPSSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoreAgpsParam, sendExtraCommand result: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    .end local v0    # "bRet":Z
    :cond_1
    return-void

    .line 524
    .end local v4    # "objLocManager":Landroid/location/LocationManager;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "properties":Ljava/util/Properties;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v8

    move-object v6, v7

    .line 526
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 514
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "properties":Ljava/util/Properties;
    :catch_1
    move-exception v2

    .line 516
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v8, "AGPSSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not open GPS configuration file /etc/gps.conf, Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 519
    if-eqz v6, :cond_0

    .line 523
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 524
    :catch_2
    move-exception v8

    goto/16 :goto_0

    .line 519
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v6, :cond_2

    .line 523
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 526
    :cond_2
    :goto_4
    throw v8

    .line 548
    .restart local v4    # "objLocManager":Landroid/location/LocationManager;
    :cond_3
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mResetType:Ljava/lang/String;

    const-string v9, "WARM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_4

    .line 550
    const-string v8, "resettype"

    const-string v9, "1"

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 554
    :cond_4
    const-string v8, "resettype"

    const-string v9, "0"

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 524
    .end local v4    # "objLocManager":Landroid/location/LocationManager;
    :catch_3
    move-exception v9

    goto :goto_4

    .line 519
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "properties":Ljava/util/Properties;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 514
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v2

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :cond_5
    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method private saveAgpsParams()V
    .locals 6

    .prologue
    .line 461
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 463
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "host"

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v3, "port"

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v3, "providerid"

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mAssistedType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v3, "network"

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->SetValue(Landroid/os/Bundle;)V

    .line 470
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mResetType:Ljava/lang/String;

    const-string v4, "HOT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 472
    const-string v3, "resettype"

    const-string v4, "2"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :goto_0
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getAndroidSdkVersion()I

    move-result v3

    const/16 v4, 0x15

    if-ge v3, v4, :cond_0

    .line 485
    const-string v3, "location"

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 487
    .local v2, "objLocManager":Landroid/location/LocationManager;
    const-string v3, "gps"

    const-string v4, "agps_parms_changed"

    invoke-virtual {v2, v3, v4, v1}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    .line 489
    .local v0, "bRet":Z
    const-string v3, "AGPSSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveAgpsParams, sendExtraCommand result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    .end local v0    # "bRet":Z
    .end local v2    # "objLocManager":Landroid/location/LocationManager;
    :cond_0
    return-void

    .line 474
    :cond_1
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mResetType:Ljava/lang/String;

    const-string v4, "WARM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 476
    const-string v3, "resettype"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 480
    :cond_2
    const-string v3, "resettype"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPrefAgpsNetwork()V
    .locals 5

    .prologue
    .line 231
    const-string v3, "agps_network"

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 232
    .local v1, "pref":Landroid/preference/ListPreference;
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 234
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0083

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "types":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getPrefNetwork()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "defPref":Ljava/lang/String;
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mNetworkType:Ljava/lang/String;

    .line 238
    const-string v3, "ALL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    const-string v3, "1"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 241
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 249
    :goto_0
    return-void

    .line 245
    :cond_0
    const-string v3, "0"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 246
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setPrefAgpsResetType()V
    .locals 5

    .prologue
    .line 254
    const-string v3, "agps_reset_type"

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 255
    .local v1, "pref":Landroid/preference/ListPreference;
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 257
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0087

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "types":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getPrefAgpsResetType()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "defPref":Ljava/lang/String;
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mResetType:Ljava/lang/String;

    .line 261
    const-string v3, "COLD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 263
    const-string v3, "2"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 264
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 277
    :goto_0
    return-void

    .line 266
    :cond_0
    const-string v3, "WARM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 268
    const-string v3, "1"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 269
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 273
    :cond_1
    const-string v3, "0"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 274
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setPrefAgpsType()V
    .locals 5

    .prologue
    .line 203
    const-string v3, "agps_pref"

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 204
    .local v1, "pref":Landroid/preference/ListPreference;
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 206
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "types":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getPrefAgpsType()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "defPref":Ljava/lang/String;
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mAssistedType:Ljava/lang/String;

    .line 210
    const-string v3, "MSB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    const-string v3, "0"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 213
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 226
    :goto_0
    return-void

    .line 215
    :cond_0
    const-string v3, "MSA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 217
    const-string v3, "1"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 218
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 222
    :cond_1
    const-string v3, "2"

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 223
    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateUI()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 282
    const-string v7, "agps_pref"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    .line 283
    .local v3, "agps_type_pref":Landroid/preference/ListPreference;
    const-string v7, "agps_network"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 284
    .local v1, "agps_network_pref":Landroid/preference/ListPreference;
    const-string v7, "agps_reset_type"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 286
    .local v2, "agps_reset_type_pref":Landroid/preference/ListPreference;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "assisted_gps_enabled"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    move v0, v5

    .line 287
    .local v0, "agpsEnabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "location_mode"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 289
    .local v4, "mode":I
    const-string v7, "AGPSSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateUI, LocationMode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", AGPS Enabled: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    if-ne v4, v10, :cond_3

    .line 295
    :cond_0
    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 296
    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 297
    invoke-virtual {v2, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 298
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v6}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 299
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v6}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 310
    :goto_1
    if-eqz v4, :cond_1

    if-ne v4, v10, :cond_4

    .line 313
    :cond_1
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 320
    :goto_2
    return-void

    .end local v0    # "agpsEnabled":Z
    .end local v4    # "mode":I
    :cond_2
    move v0, v6

    .line 286
    goto :goto_0

    .line 303
    .restart local v0    # "agpsEnabled":Z
    .restart local v4    # "mode":I
    :cond_3
    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 304
    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 305
    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 306
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v5}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 307
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v5}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto :goto_1

    .line 317
    :cond_4
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 698
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "assisted_gps_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 700
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->updateUI()V

    .line 702
    return-void

    .line 698
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 122
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 126
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "location_providers_allowed"

    aput-object v5, v4, v8

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 128
    .local v6, "settingsCursor":Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v7, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 130
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->addPreferencesFromResource(I)V

    .line 132
    if-nez p1, :cond_0

    move v0, v7

    :goto_0
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mFirstTime:Z

    .line 134
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0296

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->sNotSet:Ljava/lang/String;

    .line 136
    const-string v0, "server_addr"

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mServer:Landroid/preference/EditTextPreference;

    .line 137
    const-string v0, "server_port"

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mPort:Landroid/preference/EditTextPreference;

    .line 139
    invoke-direct {p0, v8}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->fillUi(Z)V

    .line 141
    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->setHasOptionsMenu(Z)V

    .line 143
    return-void

    :cond_0
    move v0, v8

    .line 132
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    .line 431
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 433
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0778

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 434
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0780

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 436
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 198
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 442
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 456
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 445
    :pswitch_0
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->saveAgpsParams()V

    goto :goto_0

    .line 449
    :pswitch_1
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->restoreAgpsParam()V

    goto :goto_0

    .line 442
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPause()V

    .line 182
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 184
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 186
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 188
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    .line 620
    instance-of v5, p1, Landroid/preference/ListPreference;

    if-eqz v5, :cond_2

    move-object v0, p1

    .line 622
    check-cast v0, Landroid/preference/ListPreference;

    .line 624
    .local v0, "pref":Landroid/preference/ListPreference;
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, "prefKey":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 628
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 630
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 634
    .local v2, "type":I
    const-string v5, "agps_network"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    .line 636
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0083

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 638
    .local v3, "types":[Ljava/lang/String;
    if-nez v2, :cond_3

    .line 640
    const-string v5, "HOME"

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mNetworkType:Ljava/lang/String;

    .line 647
    :cond_0
    :goto_0
    if-ne v2, v8, :cond_1

    .line 649
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0c0295

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 687
    :cond_1
    :goto_1
    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 688
    aget-object v5, v3, v2

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 692
    .end local v0    # "pref":Landroid/preference/ListPreference;
    .end local v1    # "prefKey":Ljava/lang/String;
    .end local v2    # "type":I
    .end local v3    # "types":[Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    return v8

    .line 642
    .restart local v0    # "pref":Landroid/preference/ListPreference;
    .restart local v1    # "prefKey":Ljava/lang/String;
    .restart local v2    # "type":I
    .restart local v3    # "types":[Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    :cond_3
    if-ne v2, v8, :cond_0

    .line 644
    const-string v5, "ALL"

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mNetworkType:Ljava/lang/String;

    goto :goto_0

    .line 652
    .end local v3    # "types":[Ljava/lang/String;
    :cond_4
    const-string v5, "agps_reset_type"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_7

    .line 654
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0087

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 656
    .restart local v3    # "types":[Ljava/lang/String;
    if-nez v2, :cond_5

    .line 658
    const-string v5, "HOT"

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mResetType:Ljava/lang/String;

    goto :goto_1

    .line 660
    :cond_5
    if-ne v2, v8, :cond_6

    .line 662
    const-string v5, "WARM"

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mResetType:Ljava/lang/String;

    goto :goto_1

    .line 666
    :cond_6
    const-string v5, "COLD"

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mResetType:Ljava/lang/String;

    goto :goto_1

    .line 669
    .end local v3    # "types":[Ljava/lang/String;
    :cond_7
    const-string v5, "agps_pref"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 671
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0082

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 673
    .restart local v3    # "types":[Ljava/lang/String;
    if-nez v2, :cond_8

    .line 675
    const-string v5, "MSB"

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mAssistedType:Ljava/lang/String;

    goto :goto_1

    .line 677
    :cond_8
    if-ne v2, v8, :cond_1

    .line 679
    const-string v5, "MSA"

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mAssistedType:Ljava/lang/String;

    goto :goto_1
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v2, 0x1

    const/4 v7, -0x2

    const/4 v3, 0x0

    .line 149
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 151
    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mSwitch:Landroid/widget/Switch;

    .line 152
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 153
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "assisted_gps_enabled"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 156
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    .line 160
    .local v0, "activity":Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f08002a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 162
    .local v1, "padding":I
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v3, v3, v1, v3}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 164
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getActionBar()Llenovo/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v8, v8}, Llenovo/app/ActionBar;->setDisplayOptions(II)V

    .line 165
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getActionBar()Llenovo/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v7, v7, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Llenovo/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 168
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 170
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v2, v3}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 172
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->updateUI()V

    .line 174
    return-void

    .end local v0    # "activity":Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    .end local v1    # "padding":I
    :cond_0
    move v2, v3

    .line 153
    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 343
    invoke-virtual {p0, p2}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 345
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 347
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 350
    :cond_0
    return-void
.end method
