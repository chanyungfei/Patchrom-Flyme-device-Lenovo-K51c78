.class public Lcom/flyme/deviceoriginalsettings/deviceinfo/LegalInformationActivity;
.super Landroid/preference/PreferenceActivity;
.source "LegalInformationActivity.java"


# static fields
.field private static final KEY_COPYRIGHT:Ljava/lang/String; = "copyright"

.field private static final KEY_LENOVO_LICENSE:Ljava/lang/String; = "lenovo_license"

.field private static final KEY_LICENSE:Ljava/lang/String; = "license"

.field private static final KEY_TERMS:Ljava/lang/String; = "terms"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 20
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f060029

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/LegalInformationActivity;->addPreferencesFromResource(I)V

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/LegalInformationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/LegalInformationActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "copyright"

    invoke-static {p0, v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 28
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/LegalInformationActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "license"

    invoke-static {p0, v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 29
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/LegalInformationActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "terms"

    invoke-static {p0, v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 31
    const-string v0, "false"

    const-string v1, "ro.lenovo.cta"

    const-string v2, "def"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 32
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/LegalInformationActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "lenovo_license"

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/LegalInformationActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 34
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 38
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 46
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 40
    :pswitch_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/LegalInformationActivity;->finish()V

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
