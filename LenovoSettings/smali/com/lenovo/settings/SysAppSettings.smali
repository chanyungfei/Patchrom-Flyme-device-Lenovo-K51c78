.class public Lcom/lenovo/settings/SysAppSettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "SysAppSettings.java"

# interfaces
.implements Lcom/lenovo/settings/search/Indexable;


# static fields
.field private static final KEY_VIDEO:Ljava/lang/String; = "video"

.field private static final PKG_KEY_AND_NAME:[[Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mVideoPreference:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 76
    new-instance v0, Lcom/lenovo/settings/SysAppSettings$1;

    invoke-direct {v0}, Lcom/lenovo/settings/SysAppSettings$1;-><init>()V

    sput-object v0, Lcom/lenovo/settings/SysAppSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

    .line 110
    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "email"

    aput-object v2, v1, v4

    const-string v2, "com.lenovo.email"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "video"

    aput-object v2, v1, v4

    const-string v2, "com.lenovo.video"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "calendar"

    aput-object v2, v1, v4

    const-string v2, "com.lenovo.calendar"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "file_manager"

    aput-object v3, v2, v4

    const-string v3, "com.lenovo.FileBrowser"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/settings/SysAppSettings;->PKG_KEY_AND_NAME:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private pkgInstalled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/lenovo/settings/SysAppSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 102
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 103
    .local v1, "pkgState":I
    if-eqz v1, :cond_0

    if-ne v4, v1, :cond_1

    :cond_0
    move v3, v4

    .line 106
    .end local v1    # "pkgState":I
    :cond_1
    :goto_0
    return v3

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v3, 0x7f060040

    invoke-virtual {p0, v3}, Lcom/lenovo/settings/SysAppSettings;->addPreferencesFromResource(I)V

    .line 45
    const-string v3, "video"

    invoke-virtual {p0, v3}, Lcom/lenovo/settings/SysAppSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/settings/SysAppSettings;->mVideoPreference:Landroid/preference/Preference;

    .line 46
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isCmcc()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/lenovo/settings/SysAppSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/settings/SysAppSettings;->mVideoPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/settings/SysAppSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 50
    .local v2, "root":Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/lenovo/settings/SysAppSettings;->PKG_KEY_AND_NAME:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 51
    sget-object v3, Lcom/lenovo/settings/SysAppSettings;->PKG_KEY_AND_NAME:[[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-direct {p0, v3}, Lcom/lenovo/settings/SysAppSettings;->pkgInstalled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 52
    sget-object v3, Lcom/lenovo/settings/SysAppSettings;->PKG_KEY_AND_NAME:[[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 53
    .local v1, "preference":Landroid/preference/Preference;
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 50
    .end local v1    # "preference":Landroid/preference/Preference;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_2
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 60
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "calendar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 62
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.lenovo.calendar"

    const-string v4, "com.lenovo.calendar.GeneralSettingsActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v3, "com.lenovo.calendar.action.START_SETTINGS"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0}, Lcom/lenovo/settings/SysAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 72
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 66
    :cond_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "email"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lenovo.email.activity.setup.ACCOUNT_MANAGER_ENTRY"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, "settingsIntent":Landroid/content/Intent;
    const-string v3, "com.lenovo.email"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0}, Lcom/lenovo/settings/SysAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 72
    .end local v1    # "settingsIntent":Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method
