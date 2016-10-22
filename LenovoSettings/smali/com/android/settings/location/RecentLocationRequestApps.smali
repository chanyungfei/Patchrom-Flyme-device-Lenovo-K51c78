.class public Lcom/flyme/deviceoriginalsettings/location/RecentLocationRequestApps;
.super Lcom/flyme/deviceoriginalsettings/location/LocationSettingsBase;
.source "RecentLocationRequestApps.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettingsBase;-><init>()V

    return-void
.end method

.method private addPreferencesSorted(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/RecentLocationRequestApps;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 82
    .local v2, "root":Landroid/preference/PreferenceScreen;
    new-instance v3, Lcom/flyme/deviceoriginalsettings/location/RecentLocationRequestApps$1;

    invoke-direct {v3, p0}, Lcom/flyme/deviceoriginalsettings/location/RecentLocationRequestApps$1;-><init>(Lcom/flyme/deviceoriginalsettings/location/RecentLocationRequestApps;)V

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 88
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 89
    .local v0, "entry":Landroid/preference/Preference;
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 91
    .end local v0    # "entry":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 6

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/RecentLocationRequestApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    .line 55
    .local v0, "activity":Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/RecentLocationRequestApps;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 56
    .local v4, "root":Landroid/preference/PreferenceScreen;
    if-eqz v4, :cond_0

    .line 57
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 60
    :cond_0
    const v5, 0x7f06002f

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/location/RecentLocationRequestApps;->addPreferencesFromResource(I)V

    .line 62
    new-instance v2, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;

    invoke-direct {v2, v0}, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;-><init>(Lcom/flyme/deviceoriginalsettings/SettingsActivity;)V

    .line 63
    .local v2, "recentApps":Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;
    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v3

    .line 64
    .local v3, "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 65
    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/location/RecentLocationRequestApps;->addPreferencesSorted(Ljava/util/List;)V

    .line 76
    :goto_0
    return-object v4

    .line 68
    :cond_1
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 69
    .local v1, "banner":Landroid/preference/Preference;
    const v5, 0x7f040063

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 70
    const v5, 0x7f0c07c9

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 71
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/RecentLocationRequestApps;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 73
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 103
    const v0, 0x7f0c0bdc

    return v0
.end method

.method public onModeChanged(IZ)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    .line 95
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 97
    .local v0, "enabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/RecentLocationRequestApps;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 98
    .local v1, "root":Landroid/preference/PreferenceScreen;
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 99
    return-void

    .line 95
    .end local v0    # "enabled":Z
    .end local v1    # "root":Landroid/preference/PreferenceScreen;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettingsBase;->onPause()V

    .line 51
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettingsBase;->onResume()V

    .line 45
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/location/RecentLocationRequestApps;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 46
    return-void
.end method
