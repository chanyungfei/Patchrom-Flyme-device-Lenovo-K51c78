.class public Lcom/lenovo/settings/SysAppSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SysAppSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v1, 0x7f06003c

    invoke-virtual {p0, v1}, Lcom/lenovo/settings/SysAppSettings;->addPreferencesFromResource(I)V

    .line 34
    invoke-virtual {p0}, Lcom/lenovo/settings/SysAppSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 35
    .local v0, "rootprs":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/lenovo/settings/SysAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "sysapp_settings"

    invoke-static {v1, v0, v2}, Lcom/android/settings/Utils;->addPreferencePluginSort(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 36
    return-void
.end method
