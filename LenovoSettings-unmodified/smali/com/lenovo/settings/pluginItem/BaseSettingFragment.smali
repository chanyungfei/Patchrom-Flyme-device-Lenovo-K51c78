.class public Lcom/lenovo/settings/pluginItem/BaseSettingFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BaseSettingFragment.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mHostContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public initFragment(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/BaseSettingFragment;->mContext:Landroid/content/Context;

    .line 28
    if-eqz p1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/BaseSettingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->setTheme(I)V

    .line 32
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/pluginItem/BaseSettingFragment;->mHostContext:Landroid/content/Context;

    .line 17
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/settings/pluginItem/BaseSettingFragment;->mHostContext:Landroid/content/Context;

    .line 24
    return-void
.end method
