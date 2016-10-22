.class Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
.super Landroid/preference/Preference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoutePreference"
.end annotation


# instance fields
.field private final mRoute:Landroid/media/MediaRouter$RouteInfo;

.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    const v4, 0x7f0c05f8

    const/4 v3, 0x6

    .line 844
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 845
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 847
    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 848
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 849
    const-string v0, "WifiDisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set route summary as description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 851
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setEnabled(Z)V

    .line 852
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 853
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setOrder(I)V

    .line 854
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 856
    const-string v0, "WifiDisplaySettings"

    const-string v1, "Route is selected and connecting"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const v0, 0x7f0c05f7

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    .line 891
    :cond_0
    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 892
    return-void

    .line 858
    :cond_1
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 859
    const-string v0, "WifiDisplaySettings"

    const-string v1, "Route is selected and connected"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    invoke-virtual {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    goto :goto_0

    .line 864
    :cond_2
    const-string v0, "WifiDisplaySettings"

    const-string v1, "Route is selected but no connecting and no connected, just show wireless display"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const v0, 0x7f0c0be8

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    goto :goto_0

    .line 869
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 870
    const-string v0, "WifiDisplaySettings"

    const-string v1, "Route is unselected and enabled"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setOrder(I)V

    .line 874
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 875
    const-string v0, "WifiDisplaySettings"

    const-string v1, "Route is unselected but connected"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-virtual {p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    goto :goto_0

    .line 880
    :cond_4
    const-string v0, "WifiDisplaySettings"

    const-string v1, "Route is unselected and disabled"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setOrder(I)V

    .line 882
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 883
    const-string v0, "WifiDisplaySettings"

    const-string v1, "route status code is STATUS_IN_USE"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const v0, 0x7f0c05f9

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    goto :goto_0

    .line 886
    :cond_5
    const-string v0, "WifiDisplaySettings"

    const-string v1, "route status code is not available"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const v0, 0x7f0c05fa

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 896
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    # invokes: Lcom/android/settings/wfd/WifiDisplaySettings;->toggleRoute(Landroid/media/MediaRouter$RouteInfo;)V
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1500(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;)V

    .line 897
    const/4 v0, 0x1

    return v0
.end method
