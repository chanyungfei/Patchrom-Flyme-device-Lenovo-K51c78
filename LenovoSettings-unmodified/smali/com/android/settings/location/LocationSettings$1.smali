.class Lcom/android/settings/location/LocationSettings$1;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationSettings;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/settings/location/LocationSettings$1;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 13
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const v3, 0x7f0c027f

    const/4 v2, 0x0

    .line 133
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    new-instance v12, Landroid/content/Intent;

    const-string v0, "com.mediatek.settings.launch_agps_setting_enter"

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v12, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings$1;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 144
    .end local v12    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings$1;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings$1;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0c018f

    const-class v0, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings$1;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-class v0, Lcom/android/settings/SubSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    move v5, v3

    move-object v9, v2

    invoke-static/range {v4 .. v11}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x1

    return v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings$1;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/location/AGPSSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/location/LocationSettings$1;->this$0:Lcom/android/settings/location/LocationSettings;

    const/4 v6, 0x0

    move-object v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method
