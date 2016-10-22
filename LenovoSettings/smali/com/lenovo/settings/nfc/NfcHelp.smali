.class public Lcom/lenovo/settings/nfc/NfcHelp;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "NfcHelp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/nfc/NfcHelp;->addPreferencesFromResource(I)V

    .line 22
    invoke-virtual {p0}, Lcom/lenovo/settings/nfc/NfcHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0321

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 23
    return-void
.end method
