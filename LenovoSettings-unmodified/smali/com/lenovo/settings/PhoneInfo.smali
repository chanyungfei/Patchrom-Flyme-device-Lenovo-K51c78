.class public Lcom/lenovo/settings/PhoneInfo;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PhoneInfo.java"


# static fields
.field private static final KEY_CAMERA_INFO:Ljava/lang/String; = "camera_info"

.field private static final KEY_FLASH_INFO:Ljava/lang/String; = "flash_info"

.field private static final KEY_MEMORY_INFO:Ljava/lang/String; = "memory_info"

.field private static final KEY_PROCESSOR_INFO:Ljava/lang/String; = "processor_info"

.field private static final KEY_SCREEN_INFO:Ljava/lang/String; = "screen_info"

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneInfo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private setSummary(Ljava/lang/String;I)V
    .locals 1
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "resID"    # I

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/PhoneInfo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 83
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(I)V

    .line 86
    :cond_0
    return-void
.end method

.method private setSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/PhoneInfo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 90
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f06001f

    invoke-virtual {p0, v0}, Lcom/lenovo/settings/PhoneInfo;->addPreferencesFromResource(I)V

    .line 79
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 98
    invoke-virtual {p0}, Lcom/lenovo/settings/PhoneInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0081

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 99
    return-void
.end method
