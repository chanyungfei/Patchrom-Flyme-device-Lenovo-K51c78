.class public interface abstract Lcom/lenovo/settings/plugin/IMtkPlug;
.super Ljava/lang/Object;
.source "IMtkPlug.java"


# virtual methods
.method public abstract addAction(Landroid/content/IntentFilter;Ljava/lang/String;)V
.end method

.method public abstract addAutoBootPrf(Landroid/preference/PreferenceGroup;)V
.end method

.method public abstract addMdmPermCtrlPrf(Landroid/preference/PreferenceGroup;)V
.end method

.method public abstract addPermSwitchPrf(Landroid/preference/PreferenceGroup;)V
.end method

.method public abstract addPplPrf(Landroid/preference/PreferenceGroup;)V
.end method

.method public abstract clearScrapViewsIfNeeded(Landroid/widget/ListView;)V
.end method

.method public abstract customizeDateTimePreferenceStatus(Landroid/content/Context;Landroid/preference/ListPreference;Landroid/preference/SwitchPreference;)V
.end method

.method public abstract customizePreferenceScreen(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
.end method

.method public abstract enablerIMdmPause()V
.end method

.method public abstract enablerIMdmResume()V
.end method

.method public abstract enablerPermPause()V
.end method

.method public abstract enablerPermResume()V
.end method

.method public abstract enablerPplPPause()V
.end method

.method public abstract enablerPplPResume()V
.end method

.method public abstract getConstantStringEXTRA_WAPI_AS_CERTIFICATE_DATA()Ljava/lang/String;
.end method

.method public abstract getConstantStringEXTRA_WAPI_AS_CERTIFICATE_NAME()Ljava/lang/String;
.end method

.method public abstract getConstantStringEXTRA_WAPI_USER_CERTIFICATE_DATA()Ljava/lang/String;
.end method

.method public abstract getConstantStringEXTRA_WAPI_USER_CERTIFICATE_NAME()Ljava/lang/String;
.end method

.method public abstract isSupportusingVoiceWeak()Z
.end method

.method public abstract releaseIDateTimeSettingsExt()V
.end method

.method public abstract releaseIMdmPermissionControlExt()V
.end method

.method public abstract releaseIPermissionControlExt()V
.end method

.method public abstract releaseIPplSettingsEntryExt()V
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method

.method public abstract updateOpNameFromRec(Landroid/preference/Preference;Ljava/lang/String;)V
.end method

.method public abstract updateServiceState(Landroid/preference/Preference;Ljava/lang/String;)V
.end method
