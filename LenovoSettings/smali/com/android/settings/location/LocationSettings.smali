.class public Lcom/flyme/deviceoriginalsettings/location/LocationSettings;
.super Lcom/flyme/deviceoriginalsettings/location/LocationSettingsBase;
.source "LocationSettings.java"

# interfaces
.implements Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/lenovo/settings/search/Indexable;


# static fields
.field private static final ASSISTED_GPS_SUPL_HOST:Ljava/lang/String; = "assisted_gps_supl_host"

.field private static final ASSISTED_GPS_SUPL_PORT:Ljava/lang/String; = "assisted_gps_supl_port"

.field private static final KEY_LOCATION_MODE:Ljava/lang/String; = "location_mode"

.field private static final KEY_LOCATION_SERVICES:Ljava/lang/String; = "location_services"

.field private static final KEY_MANAGED_PROFILE_CATEGORY:Ljava/lang/String; = "managed_profile_location_category"

.field private static final KEY_MANAGED_PROFILE_PREFERENCE:Ljava/lang/String; = "managed_profile_location_switch"

.field private static final KEY_RECENT_LOCATION_REQUESTS:Ljava/lang/String; = "recent_location_requests"

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "LocationSettings"


# instance fields
.field private injector:Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;

.field private mAGPSSettingPreference:Landroid/preference/Preference;

.field private mAGPSSettingPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

.field private mLocationMode:Landroid/preference/Preference;

.field private mManagedProfile:Landroid/os/UserHandle;

.field private mManagedProfilePreference:Landroid/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

.field private mUm:Landroid/os/UserManager;

.field private mValidListener:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 546
    new-instance v0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$5;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$5;-><init>()V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettingsBase;-><init>()V

    .line 105
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mValidListener:Z

    .line 128
    new-instance v0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/location/LocationSettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mAGPSSettingPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 176
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mValidListener:Z

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/location/LocationSettings;)Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->injector:Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;

    return-object v0
.end method

.method private addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/preference/PreferenceScreen;
    .param p3, "lockdownOnLocationAccess"    # Z

    .prologue
    .line 424
    const-string v3, "location_services"

    invoke-virtual {p2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 426
    .local v0, "categoryLocationServices":Landroid/preference/PreferenceCategory;
    new-instance v3, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;

    invoke-direct {v3, p1}, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->injector:Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;

    .line 427
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->injector:Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;

    if-eqz p3, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    :goto_0
    invoke-virtual {v4, v3}, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;->getInjectedSettings(I)Ljava/util/List;

    move-result-object v2

    .line 430
    .local v2, "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v3, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$4;

    invoke-direct {v3, p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$4;-><init>(Lcom/flyme/deviceoriginalsettings/location/LocationSettings;)V

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 440
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 441
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.location.InjectedSettingChanged"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 442
    const-string v3, "android.location.MODE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 445
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 446
    invoke-direct {p0, v2, v0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 451
    :goto_1
    return-void

    .line 427
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_0
    const/4 v3, -0x2

    goto :goto_0

    .line 449
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_1
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 3
    .param p2, "container"    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v2, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$2;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$2;-><init>(Lcom/flyme/deviceoriginalsettings/location/LocationSettings;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 256
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 257
    .local v0, "entry":Landroid/preference/Preference;
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 259
    .end local v0    # "entry":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private changeManagedProfileLocationAccessStatus(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "summaryResId"    # I

    .prologue
    .line 405
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 410
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 409
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 15

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    .line 263
    .local v0, "activity":Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 264
    .local v8, "root":Landroid/preference/PreferenceScreen;
    if-eqz v8, :cond_0

    .line 265
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 267
    :cond_0
    const v11, 0x7f060022

    invoke-virtual {p0, v11}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->addPreferencesFromResource(I)V

    .line 268
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 270
    invoke-direct {p0, v8}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->setupManagedProfileCategory(Landroid/preference/PreferenceScreen;)V

    .line 271
    const-string v11, "location_mode"

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    .line 272
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    new-instance v12, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$3;

    invoke-direct {v12, p0, v0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$3;-><init>(Lcom/flyme/deviceoriginalsettings/location/LocationSettings;Lcom/flyme/deviceoriginalsettings/SettingsActivity;)V

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 299
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isCmcc()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 301
    new-instance v11, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mAGPSSettingPreference:Landroid/preference/Preference;

    .line 302
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isQualcommPlatform()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 304
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mAGPSSettingPreference:Landroid/preference/Preference;

    const v12, 0x7f0c027f

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 310
    :goto_0
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mAGPSSettingPreference:Landroid/preference/Preference;

    const v12, 0x7f04005d

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 311
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mAGPSSettingPreference:Landroid/preference/Preference;

    iget-object v12, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mAGPSSettingPreferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 312
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mAGPSSettingPreference:Landroid/preference/Preference;

    iget-object v12, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    invoke-virtual {v12}, Landroid/preference/Preference;->getOrder()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setOrder(I)V

    .line 313
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mAGPSSettingPreference:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 314
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mAGPSSettingPreference:Landroid/preference/Preference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 360
    :cond_1
    :goto_1
    const-string v11, "recent_location_requests"

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceCategory;

    iput-object v11, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    .line 362
    new-instance v6, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;

    invoke-direct {v6, v0}, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;-><init>(Lcom/flyme/deviceoriginalsettings/SettingsActivity;)V

    .line 363
    .local v6, "recentApps":Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;
    invoke-virtual {v6}, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v7

    .line 364
    .local v7, "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_7

    .line 365
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v7, v11}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 375
    :goto_2
    const/4 v4, 0x0

    .line 379
    .local v4, "lockdownOnLocationAccess":Z
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const-string v12, "no_share_location"

    iget-object v13, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v11, v12, v13}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 381
    const/4 v4, 0x1

    .line 383
    :cond_2
    invoke-direct {p0, v0, v8, v4}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V

    .line 384
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->setHasOptionsMenu(Z)V

    .line 386
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->refreshLocationMode()V

    .line 387
    return-object v8

    .line 308
    .end local v4    # "lockdownOnLocationAccess":Z
    .end local v6    # "recentApps":Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;
    .end local v7    # "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_3
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mAGPSSettingPreference:Landroid/preference/Preference;

    const v12, 0x7f0c027e

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 318
    :cond_4
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mAGPSSettingPreference:Landroid/preference/Preference;

    .line 320
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "assisted_gps_enabled"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_1

    .line 322
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "assisted_gps_supl_host"

    invoke-static {v11, v12}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "assisted_gps_supl_port"

    invoke-static {v11, v12}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_1

    .line 325
    :cond_5
    const/4 v9, 0x0

    .line 329
    .local v9, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 331
    .local v5, "properties":Ljava/util/Properties;
    new-instance v3, Ljava/io/File;

    const-string v11, "/etc/gps.conf"

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    .local v3, "file":Ljava/io/File;
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .local v10, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5, v10}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 337
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "assisted_gps_supl_host"

    const-string v13, "SUPL_HOST"

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 338
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "assisted_gps_supl_port"

    const-string v13, "SUPL_PORT"

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 344
    if-eqz v10, :cond_1

    .line 348
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 349
    :catch_0
    move-exception v11

    goto/16 :goto_1

    .line 339
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "properties":Ljava/util/Properties;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 341
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v11, "LocationSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not open GPS configuration file /etc/gps.conf, Exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 344
    if-eqz v9, :cond_1

    .line 348
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 349
    :catch_2
    move-exception v11

    goto/16 :goto_1

    .line 344
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_4
    if-eqz v9, :cond_6

    .line 348
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 351
    :cond_6
    :goto_5
    throw v11

    .line 368
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "recentApps":Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;
    .restart local v7    # "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_7
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 369
    .local v1, "banner":Landroid/preference/Preference;
    const v11, 0x7f040063

    invoke-virtual {v1, v11}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 370
    const v11, 0x7f0c07bd

    invoke-virtual {v1, v11}, Landroid/preference/Preference;->setTitle(I)V

    .line 371
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 372
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 349
    .end local v1    # "banner":Landroid/preference/Preference;
    .end local v6    # "recentApps":Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;
    .end local v7    # "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v12

    goto :goto_5

    .line 344
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "properties":Ljava/util/Properties;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 339
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v2

    move-object v9, v10

    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private setupManagedProfileCategory(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v1, 0x0

    .line 393
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    .line 394
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    .line 396
    const-string v0, "managed_profile_location_category"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 397
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    .line 402
    :goto_0
    return-void

    .line 399
    :cond_0
    const-string v0, "managed_profile_location_switch"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    .line 400
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method private updateAGPSSettingPreference()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 157
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mAGPSSettingPreference:Landroid/preference/Preference;

    if-nez v5, :cond_0

    .line 171
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "location_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 162
    .local v1, "mode":I
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "user"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 163
    .local v3, "um":Landroid/os/UserManager;
    const-string v5, "no_share_location"

    invoke-virtual {v3, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    .line 165
    .local v2, "restricted":Z
    if-nez v2, :cond_2

    const/4 v5, 0x3

    if-eq v1, v5, :cond_1

    if-ne v1, v0, :cond_2

    .line 167
    .local v0, "enabled":Z
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mAGPSSettingPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 169
    const-string v4, "LocationSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAGPSSettingPreference, enabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "enabled":Z
    :cond_2
    move v0, v4

    .line 165
    goto :goto_1
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 455
    const v0, 0x7f0c0bc9

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/location/LocationSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 183
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    .line 184
    .local v0, "activity":Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    .line 186
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getSwitchBar()Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    .line 187
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->getSwitch()Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    .line 188
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->show()V

    .line 189
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettingsBase;->onDestroyView()V

    .line 194
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->hide()V

    .line 195
    return-void
.end method

.method public onModeChanged(IZ)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 460
    packed-switch p1, :pswitch_data_0

    .line 480
    :goto_0
    if-eqz p1, :cond_3

    move v0, v1

    .line 481
    .local v0, "enabled":Z
    :goto_1
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    if-nez p2, :cond_4

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->setEnabled(Z)V

    .line 482
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 491
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->updateAGPSSettingPreference()V

    .line 495
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 497
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eq v0, v3, :cond_1

    .line 499
    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mValidListener:Z

    if-eqz v3, :cond_0

    .line 500
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 502
    :cond_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 503
    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mValidListener:Z

    if-eqz v3, :cond_1

    .line 504
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 508
    :cond_1
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    .line 509
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const-string v4, "no_share_location"

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 510
    const v1, 0x7f0c07b6

    invoke-direct {p0, v2, v1}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->changeManagedProfileLocationAccessStatus(ZI)V

    .line 523
    :cond_2
    :goto_4
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->injector:Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;->reloadStatusMessages()V

    .line 524
    return-void

    .line 462
    .end local v0    # "enabled":Z
    :pswitch_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0c07bb

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 465
    :pswitch_1
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0c07ba

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 468
    :pswitch_2
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0c07b9

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 471
    :pswitch_3
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0c07b8

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 480
    goto :goto_1

    .restart local v0    # "enabled":Z
    :cond_4
    move v3, v2

    .line 481
    goto :goto_2

    :cond_5
    move v3, v2

    .line 482
    goto :goto_3

    .line 513
    :cond_6
    if-eqz v0, :cond_7

    .line 514
    const v2, 0x7f0c0029

    invoke-direct {p0, v1, v2}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->changeManagedProfileLocationAccessStatus(ZI)V

    goto :goto_4

    .line 516
    :cond_7
    const v1, 0x7f0c0027

    invoke-direct {p0, v2, v1}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->changeManagedProfileLocationAccessStatus(ZI)V

    goto :goto_4

    .line 460
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 232
    :try_start_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mValidListener:Z

    .line 240
    :cond_0
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettingsBase;->onPause()V

    .line 246
    return-void

    .line 233
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettingsBase;->onResume()V

    .line 214
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 220
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->updateAGPSSettingPreference()V

    .line 223
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mValidListener:Z

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mValidListener:Z

    .line 227
    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 8
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const v1, 0x7f0c018f

    .line 531
    if-eqz p2, :cond_0

    .line 532
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->setLocationMode(I)V

    .line 537
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v3, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move v3, v1

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    return-void

    .line 534
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->setLocationMode(I)V

    goto :goto_0
.end method
