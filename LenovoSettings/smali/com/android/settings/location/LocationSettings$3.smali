.class Lcom/flyme/deviceoriginalsettings/location/LocationSettings$3;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

.field final synthetic val$activity:Lcom/flyme/deviceoriginalsettings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/location/LocationSettings;Lcom/flyme/deviceoriginalsettings/SettingsActivity;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$3;->val$activity:Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 12
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const v3, 0x7f0c07c1

    const/4 v2, 0x0

    .line 276
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$3;->val$activity:Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    const-class v1, Lcom/flyme/deviceoriginalsettings/location/LocationMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    const/4 v6, 0x0

    move-object v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 281
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0c018f

    const-class v0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-class v0, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    move v5, v3

    move-object v9, v2

    invoke-static/range {v4 .. v11}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const/4 v0, 0x1

    return v0
.end method
