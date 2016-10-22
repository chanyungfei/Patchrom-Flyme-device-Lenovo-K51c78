.class public Lcom/lenovo/settings/manager/MtkPlug;
.super Ljava/lang/Object;
.source "MtkPlug.java"

# interfaces
.implements Lcom/lenovo/settings/plugin/IMtkPlug;


# static fields
.field private static mInstance:Lcom/lenovo/settings/manager/MtkPlug;

.field private static mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mInstance:Lcom/lenovo/settings/manager/MtkPlug;

    .line 18
    sput-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mInstance:Lcom/lenovo/settings/manager/MtkPlug;

    if-eqz v0, :cond_0

    .line 22
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mInstance:Lcom/lenovo/settings/manager/MtkPlug;

    .line 26
    :goto_0
    return-object v0

    .line 24
    :cond_0
    new-instance v0, Lcom/lenovo/settings/manager/MtkPlug;

    invoke-direct {v0}, Lcom/lenovo/settings/manager/MtkPlug;-><init>()V

    sput-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mInstance:Lcom/lenovo/settings/manager/MtkPlug;

    .line 25
    invoke-static {p0}, Lcom/lenovo/settings/manager/PluginManager;->getMtkPlug(Landroid/content/Context;)Lcom/lenovo/settings/plugin/IMtkPlug;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    .line 26
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mInstance:Lcom/lenovo/settings/manager/MtkPlug;

    goto :goto_0
.end method


# virtual methods
.method public addAction(Landroid/content/IntentFilter;Ljava/lang/String;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/IntentFilter;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 76
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/settings/plugin/IMtkPlug;->addAction(Landroid/content/IntentFilter;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public addAutoBootPrf(Landroid/preference/PreferenceGroup;)V
    .locals 1
    .param p1, "prefGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 102
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/IMtkPlug;->addAutoBootPrf(Landroid/preference/PreferenceGroup;)V

    .line 103
    return-void
.end method

.method public addMdmPermCtrlPrf(Landroid/preference/PreferenceGroup;)V
    .locals 1
    .param p1, "prefGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 123
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/IMtkPlug;->addMdmPermCtrlPrf(Landroid/preference/PreferenceGroup;)V

    .line 124
    return-void
.end method

.method public addPermSwitchPrf(Landroid/preference/PreferenceGroup;)V
    .locals 1
    .param p1, "prefGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 97
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/IMtkPlug;->addPermSwitchPrf(Landroid/preference/PreferenceGroup;)V

    .line 98
    return-void
.end method

.method public addPplPrf(Landroid/preference/PreferenceGroup;)V
    .locals 1
    .param p1, "prefGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 112
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/IMtkPlug;->addPplPrf(Landroid/preference/PreferenceGroup;)V

    .line 114
    return-void
.end method

.method public clearScrapViewsIfNeeded(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 70
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/IMtkPlug;->clearScrapViewsIfNeeded(Landroid/widget/ListView;)V

    .line 72
    return-void
.end method

.method public customizeDateTimePreferenceStatus(Landroid/content/Context;Landroid/preference/ListPreference;Landroid/preference/SwitchPreference;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "listPreference"    # Landroid/preference/ListPreference;
    .param p3, "mAutoTimeZonePref"    # Landroid/preference/SwitchPreference;

    .prologue
    .line 32
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0, p1, p2, p3}, Lcom/lenovo/settings/plugin/IMtkPlug;->customizeDateTimePreferenceStatus(Landroid/content/Context;Landroid/preference/ListPreference;Landroid/preference/SwitchPreference;)V

    .line 34
    return-void
.end method

.method public customizePreferenceScreen(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "pref"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 38
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/settings/plugin/IMtkPlug;->customizePreferenceScreen(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 40
    return-void
.end method

.method public enablerIMdmPause()V
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->enablerIMdmPause()V

    .line 159
    return-void
.end method

.method public enablerIMdmResume()V
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->enablerIMdmResume()V

    .line 129
    return-void
.end method

.method public enablerPermPause()V
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->enablerPermPause()V

    .line 154
    return-void
.end method

.method public enablerPermResume()V
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->enablerPermResume()V

    .line 108
    return-void
.end method

.method public enablerPplPPause()V
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->enablerPplPPause()V

    .line 149
    return-void
.end method

.method public enablerPplPResume()V
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->enablerPplPResume()V

    .line 119
    return-void
.end method

.method public getConstantStringEXTRA_WAPI_AS_CERTIFICATE_DATA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->getConstantStringEXTRA_WAPI_AS_CERTIFICATE_DATA()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConstantStringEXTRA_WAPI_AS_CERTIFICATE_NAME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->getConstantStringEXTRA_WAPI_AS_CERTIFICATE_NAME()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConstantStringEXTRA_WAPI_USER_CERTIFICATE_DATA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->getConstantStringEXTRA_WAPI_USER_CERTIFICATE_DATA()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConstantStringEXTRA_WAPI_USER_CERTIFICATE_NAME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->getConstantStringEXTRA_WAPI_USER_CERTIFICATE_NAME()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSupportusingVoiceWeak()Z
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->isSupportusingVoiceWeak()Z

    move-result v0

    return v0
.end method

.method public releaseIDateTimeSettingsExt()V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->releaseIDateTimeSettingsExt()V

    .line 46
    return-void
.end method

.method public releaseIMdmPermissionControlExt()V
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->releaseIMdmPermissionControlExt()V

    .line 144
    return-void
.end method

.method public releaseIPermissionControlExt()V
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->releaseIPermissionControlExt()V

    .line 139
    return-void
.end method

.method public releaseIPplSettingsEntryExt()V
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IMtkPlug;->releaseIPplSettingsEntryExt()V

    .line 134
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/IMtkPlug;->setContext(Landroid/content/Context;)V

    .line 164
    return-void
.end method

.method public updateOpNameFromRec(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 1
    .param p1, "p"    # Landroid/preference/Preference;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/settings/plugin/IMtkPlug;->updateOpNameFromRec(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public updateServiceState(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 1
    .param p1, "p"    # Landroid/preference/Preference;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 87
    sget-object v0, Lcom/lenovo/settings/manager/MtkPlug;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/settings/plugin/IMtkPlug;->updateServiceState(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 88
    return-void
.end method
