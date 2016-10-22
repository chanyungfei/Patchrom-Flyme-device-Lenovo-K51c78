.class public Lcom/flyme/deviceoriginalsettings/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final BADNESS_COLORS:[I

.field public static final DISABLED_ALPHA:F = 0.4f

.field private static final META_DATA_PREFERENCE_ICON:Ljava/lang/String; = "com.android.settings.icon"

.field private static final META_DATA_PREFERENCE_SUMMARY:Ljava/lang/String; = "com.android.settings.summary"

.field private static final META_DATA_PREFERENCE_TITLE:Ljava/lang/String; = "com.android.settings.title"

.field public static final PARENTS_KEY_DEVICE:Ljava/lang/String; = "about_device"

.field public static final PARENTS_KEY_DEVICEINFO:Ljava/lang/String; = "deviceinfo_settings"

.field public static final PARENTS_KEY_DISPLAY:Ljava/lang/String; = "display_settings"

.field public static final PARENTS_KEY_KEYS:Ljava/lang/String; = "keys_settings"

.field public static final PARENTS_KEY_LIGHT:Ljava/lang/String; = "lights_settings"

.field public static final PARENTS_KEY_SIMLOCK:Ljava/lang/String; = "sim_lock"

.field public static final PARENTS_KEY_STATUS_INFO:Ljava/lang/String; = "status_info"

.field public static final PARENTS_KEY_SYSAPP:Ljava/lang/String; = "sysapp_settings"

.field public static final PARENTS_KEY_TOUCH:Ljava/lang/String; = "touch_settings"

.field public static final PARENTS_KEY_WIRELESS:Ljava/lang/String; = "wireless_settings"

.field public static final PLUGIN_CERAMICS:Ljava/lang/String; = "ceramics_settings"

.field public static final PLUGIN_KEY_AIR_PLANE:Ljava/lang/String; = "toggle_airplane"

.field public static final PLUGIN_KEY_APP_MANAGER:Ljava/lang/String; = "applications_settings"

.field public static final PLUGIN_KEY_CALL_SETTINGS:Ljava/lang/String; = "call_settings"

.field public static final PLUGIN_KEY_DATA_CONNECT:Ljava/lang/String; = "data_connect_settings"

.field public static final PLUGIN_KEY_FINGER_PRINT:Ljava/lang/String; = "fingerprint_settings"

.field public static final PLUGIN_KEY_FONT:Ljava/lang/String; = "font_settings"

.field public static final PLUGIN_KEY_GLOVE_MODE:Ljava/lang/String; = "glove_mode_enable"

.field public static final PLUGIN_KEY_HOTSPOT:Ljava/lang/String; = "personal_hotspot"

.field public static final PLUGIN_KEY_LEPOWER:Ljava/lang/String; = "lepower_settings"

.field public static final PLUGIN_KEY_LIGHT_EFFECT:Ljava/lang/String; = "light_settings"

.field public static final PLUGIN_KEY_LOCKSCREEN:Ljava/lang/String; = "lock_settings"

.field public static final PLUGIN_KEY_LTE_SETTINGS:Ljava/lang/String; = "mobile_4g_settings"

.field public static final PLUGIN_KEY_MOBILE_NW:Ljava/lang/String; = "mobile_network_settings"

.field public static final PLUGIN_KEY_MULTI_SIM:Ljava/lang/String; = "multi_sim_settings"

.field public static final PLUGIN_KEY_NOTIFICATION:Ljava/lang/String; = "notification_settings"

.field public static final PLUGIN_KEY_RINGTONE:Ljava/lang/String; = "ringtone_settings"

.field public static final PLUGIN_KEY_SCH_PWR_ONOFF:Ljava/lang/String; = "power_setting"

.field public static final PLUGIN_KEY_SCREEN_MODE:Ljava/lang/String; = "teos_settings"

.field public static final PLUGIN_KEY_SIMLOCK:Ljava/lang/String; = "sim_lock_plugin"

.field public static final PLUGIN_KEY_SIMSELECT:Ljava/lang/String; = "sim_select"

.field public static final PLUGIN_KEY_SMART_STANDBY:Ljava/lang/String; = "smart_standby_enable"

.field public static final PLUGIN_KEY_SYSUPDATE:Ljava/lang/String; = "system_update"

.field public static final PLUGIN_KEY_WALLPAPER:Ljava/lang/String; = "theme_settings"

.field public static final PLUGIN_KEY_WIFI:Ljava/lang/String; = "wifi_settings"

.field public static final PLUGIN_WIDE_TOUCH:Ljava/lang/String; = "wide_touch"

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "Utils"

.field public static final UPDATE_PREFERENCE_FLAG_SET_TITLE_TO_MATCHING_ACTIVITY:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/flyme/deviceoriginalsettings/Utils;->BADNESS_COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x3bc7d8
        -0x1ab6e8
        -0xb8500
        -0x540d4
        -0x9861c9
        -0xf580be
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPreferencePlugin(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "rootprs"    # Landroid/preference/PreferenceScreen;
    .param p2, "parentKey"    # Ljava/lang/String;

    .prologue
    .line 857
    invoke-static {p2}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getItemsByParentKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 858
    .local v3, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    if-nez v3, :cond_1

    .line 859
    const-string v5, "Utils"

    const-string v6, "plugins size is null"

    invoke-static {v5, v6}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    :cond_0
    return-void

    .line 864
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 865
    .local v2, "pluginSize":I
    const-string v5, "Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plugins size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 867
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .line 868
    .local v1, "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->isPluginValid()Z

    move-result v5

    if-nez v5, :cond_3

    .line 869
    :cond_2
    const-string v5, "Utils"

    const-string v6, "plugin is null or not valid."

    invoke-static {v5, v6}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 873
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v4

    .line 876
    .local v4, "prf":Landroid/preference/Preference;
    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public static addPreferencePluginSort(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 14
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "rootprs"    # Landroid/preference/PreferenceScreen;
    .param p2, "parentKey"    # Ljava/lang/String;

    .prologue
    .line 883
    invoke-static/range {p2 .. p2}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getItemsByParentKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 884
    .local v7, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_2

    .line 885
    :cond_0
    const-string v11, "Utils"

    const-string v12, "plugins size is null"

    invoke-static {v11, v12}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    :cond_1
    return-void

    .line 888
    :cond_2
    const-string v11, "Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "plugins size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 890
    .local v8, "preList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    .line 891
    .local v5, "originalCount":I
    if-lez v5, :cond_9

    .line 892
    const-string v11, "Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Original preference count="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_3

    .line 894
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v9

    .line 895
    .local v9, "pref":Landroid/preference/Preference;
    const-string v11, "Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Preference index="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", key="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 898
    .end local v9    # "pref":Landroid/preference/Preference;
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "j":I
    :goto_1
    if-lez v3, :cond_8

    .line 899
    add-int/lit8 v11, v3, -0x1

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .line 900
    .local v6, "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->isPluginValid()Z

    move-result v11

    if-nez v11, :cond_6

    .line 901
    :cond_4
    const-string v11, "Utils"

    const-string v12, "plugin is null or not valid."

    invoke-static {v11, v12}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 904
    :cond_6
    const-string v11, "Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Plugin position="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPosition()F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", key="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    const/4 v9, 0x0

    .line 908
    .restart local v9    # "pref":Landroid/preference/Preference;
    :try_start_0
    invoke-virtual {v6, p0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPreference(Landroid/content/Context;)Landroid/preference/Preference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 913
    :goto_3
    if-eqz v9, :cond_5

    .line 916
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v9}, Lcom/flyme/deviceoriginalsettings/Utils;->updatePluginPreferenceEnabled(Landroid/content/Context;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 920
    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPosition()F

    move-result v11

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    int-to-float v12, v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_7

    .line 921
    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPosition()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v8, v11, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, "e":Ljava/lang/Exception;
    const-string v11, "Utils"

    const-string v12, "[addPreferencePluginSort] getPreference() failed: "

    invoke-static {v11, v12, v0}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 911
    const/4 v9, 0x0

    goto :goto_3

    .line 923
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 926
    .end local v6    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    .end local v9    # "pref":Landroid/preference/Preference;
    :cond_8
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 928
    const/4 v1, 0x0

    .local v1, "h":I
    :goto_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_1

    .line 929
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/Preference;

    .line 930
    .local v4, "newPref":Landroid/preference/Preference;
    const-string v11, "Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "New index="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", key="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 932
    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 928
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 935
    .end local v1    # "h":I
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "newPref":Landroid/preference/Preference;
    :cond_9
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_1

    .line 937
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .line 938
    .restart local v6    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->isPluginValid()Z

    move-result v11

    if-nez v11, :cond_b

    .line 939
    :cond_a
    const-string v11, "Utils"

    const-string v12, "plugin is null or not valid."

    invoke-static {v11, v12}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 942
    :cond_b
    invoke-virtual {v6, p0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v10

    .line 943
    .local v10, "prf":Landroid/preference/Preference;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v10}, Lcom/flyme/deviceoriginalsettings/Utils;->updatePluginPreferenceEnabled(Landroid/content/Context;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 947
    invoke-virtual {p1, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_6
.end method

.method public static addPreferencePluginSortForChar(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "rootprs"    # Landroid/preference/PreferenceScreen;
    .param p2, "parentKey"    # Ljava/lang/String;

    .prologue
    const/high16 v12, 0x41200000    # 10.0f

    .line 954
    invoke-static {p2}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getItemsByParentKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 956
    .local v5, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 957
    :cond_0
    const-string v9, "Utils"

    const-string v10, "plugins size is null or size = 0, exit"

    invoke-static {v9, v10}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1035
    :cond_1
    return-void

    .line 961
    :cond_2
    const-string v9, "Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "plugins size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 963
    .local v6, "preList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v9

    if-lez v9, :cond_9

    .line 964
    const-string v9, "Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "rootprs.getPreferenceCount() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v9

    if-ge v2, v9, :cond_3

    .line 966
    const-string v9, "Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " i = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    .line 968
    .local v7, "pref":Landroid/preference/Preference;
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 970
    .end local v7    # "pref":Landroid/preference/Preference;
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "j":I
    :goto_1
    if-lez v3, :cond_8

    .line 971
    add-int/lit8 v9, v3, -0x1

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .line 972
    .local v4, "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->isPluginValid()Z

    move-result v9

    if-nez v9, :cond_6

    .line 973
    :cond_4
    const-string v9, "Utils"

    const-string v10, "plugin is null or not valid."

    invoke-static {v9, v10}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 976
    :cond_6
    const-string v9, "Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "j = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPosition()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const/4 v8, 0x0

    .line 982
    .local v8, "prf":Landroid/preference/Preference;
    :try_start_0
    invoke-virtual {v4, p0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPreference(Landroid/content/Context;)Landroid/preference/Preference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 987
    :goto_3
    if-eqz v8, :cond_5

    .line 990
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Lcom/flyme/deviceoriginalsettings/Utils;->updatePluginPreferenceEnabled(Landroid/content/Context;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 994
    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPosition()F

    move-result v9

    mul-float/2addr v9, v12

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setOrder(I)V

    .line 995
    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPosition()F

    move-result v9

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_7

    .line 996
    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPosition()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v6, v9, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 983
    :catch_0
    move-exception v0

    .line 984
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "Utils"

    const-string v10, "[addPreferencePluginSortForChar] getPreference() failed: "

    invoke-static {v9, v10, v0}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 985
    const/4 v8, 0x0

    goto :goto_3

    .line 998
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1001
    .end local v4    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    .end local v8    # "prf":Landroid/preference/Preference;
    :cond_8
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1003
    const/4 v1, 0x0

    .local v1, "h":I
    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_1

    .line 1004
    const-string v10, "Utils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " h ="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "preList.get(h)"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/preference/Preference;

    invoke-virtual {v9}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/preference/Preference;

    invoke-virtual {p1, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1003
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1009
    .end local v1    # "h":I
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_9
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 1011
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .line 1012
    .restart local v4    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->isPluginValid()Z

    move-result v9

    if-nez v9, :cond_c

    .line 1013
    :cond_a
    const-string v9, "Utils"

    const-string v10, "plugin is null or not valid."

    invoke-static {v9, v10}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    :cond_b
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1016
    :cond_c
    const-string v9, "Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "position = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPosition()F

    move-result v11

    mul-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "--key-->"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    const/4 v8, 0x0

    .line 1019
    .restart local v8    # "prf":Landroid/preference/Preference;
    :try_start_1
    invoke-virtual {v4, p0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPreference(Landroid/content/Context;)Landroid/preference/Preference;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 1024
    :goto_7
    if-eqz v8, :cond_b

    .line 1027
    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPosition()F

    move-result v9

    mul-float/2addr v9, v12

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setOrder(I)V

    .line 1028
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Lcom/flyme/deviceoriginalsettings/Utils;->updatePluginPreferenceEnabled(Landroid/content/Context;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 1032
    invoke-virtual {p1, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_6

    .line 1020
    :catch_1
    move-exception v0

    .line 1021
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v9, "Utils"

    const-string v10, "[addPreferencePluginSortForChar] getPreference() failed: "

    invoke-static {v9, v10, v0}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1022
    const/4 v8, 0x0

    goto :goto_7
.end method

.method public static addPreferencePluginSortSpecialWireless(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Ljava/lang/String;I)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "rootprs"    # Landroid/preference/PreferenceScreen;
    .param p2, "parentKey"    # Ljava/lang/String;
    .param p3, "pluginStartMove"    # I

    .prologue
    .line 1058
    invoke-static {p2}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getItemsByParentKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1060
    .local v5, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    if-nez v5, :cond_1

    .line 1061
    const-string v9, "Utils"

    const-string v10, "plugins size is null"

    invoke-static {v9, v10}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    :cond_0
    return-void

    .line 1064
    :cond_1
    const-string v9, "Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "plugins size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1066
    .local v6, "preList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v9

    if-lez v9, :cond_8

    .line 1067
    const-string v9, "Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " rootprs.getPreferenceCount() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 1069
    const-string v9, "Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "i = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    .line 1071
    .local v7, "pref":Landroid/preference/Preference;
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1068
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1073
    .end local v7    # "pref":Landroid/preference/Preference;
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "j":I
    :goto_1
    if-lez v3, :cond_7

    .line 1074
    add-int/lit8 v9, v3, -0x1

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .line 1075
    .local v4, "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->isPluginValid()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1076
    :cond_3
    const-string v9, "Utils"

    const-string v10, "plugin is null or not valid."

    invoke-static {v9, v10}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1079
    :cond_5
    const-string v9, "Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "j = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPosition()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    :try_start_0
    invoke-virtual {v4, p0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPreference(Landroid/content/Context;)Landroid/preference/Preference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1091
    .local v8, "prf":Landroid/preference/Preference;
    :goto_3
    if-eqz v8, :cond_4

    .line 1094
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Lcom/flyme/deviceoriginalsettings/Utils;->updatePluginPreferenceEnabled(Landroid/content/Context;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 1098
    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPosition()F

    move-result v9

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_6

    .line 1099
    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPosition()F

    move-result v9

    float-to-int v9, v9

    add-int/2addr v9, p3

    invoke-virtual {v6, v9, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 1087
    .end local v8    # "prf":Landroid/preference/Preference;
    :catch_0
    move-exception v0

    .line 1088
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "Utils"

    const-string v10, "[addPreferencePluginSortSpecialWireless] getPreference() failed: "

    invoke-static {v9, v10, v0}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1089
    const/4 v8, 0x0

    .restart local v8    # "prf":Landroid/preference/Preference;
    goto :goto_3

    .line 1101
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1104
    .end local v4    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    .end local v8    # "prf":Landroid/preference/Preference;
    :cond_7
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1106
    const/4 v1, 0x0

    .local v1, "h":I
    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_0

    .line 1107
    const-string v10, "Utils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "h ="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "preList.get(h)"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/preference/Preference;

    invoke-virtual {v9}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/preference/Preference;

    invoke-virtual {v9, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 1109
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/preference/Preference;

    invoke-virtual {p1, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1106
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1112
    .end local v1    # "h":I
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 1114
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .line 1115
    .restart local v4    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->isPluginValid()Z

    move-result v9

    if-nez v9, :cond_a

    .line 1116
    :cond_9
    const-string v9, "Utils"

    const-string v10, "plugin is null or not valid."

    invoke-static {v9, v10}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1119
    :cond_a
    invoke-virtual {v4, p0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v8

    .line 1120
    .restart local v8    # "prf":Landroid/preference/Preference;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Lcom/flyme/deviceoriginalsettings/Utils;->updatePluginPreferenceEnabled(Landroid/content/Context;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 1124
    invoke-virtual {p1, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_6
.end method

.method public static buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleResId"    # I
    .param p2, "positiveAction"    # Ljava/lang/Runnable;

    .prologue
    .line 717
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 718
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 719
    const v1, 0x7f0c0bad

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 720
    const v1, 0x104000a

    new-instance v2, Lcom/flyme/deviceoriginalsettings/Utils$2;

    invoke-direct {v2, p2}, Lcom/flyme/deviceoriginalsettings/Utils$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 726
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 728
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static checkIntentValid(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 1375
    if-eqz p1, :cond_0

    .line 1377
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1378
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1379
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    .line 1381
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    return v2
.end method

.method public static copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v5, 0x1

    .line 621
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 623
    .local v1, "contactUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v5}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    .line 627
    .local v0, "avatarDataStream":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 628
    const/4 v5, 0x0

    .line 637
    :goto_0
    return v5

    .line 630
    :cond_0
    if-eqz p1, :cond_1

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    .line 631
    .local v4, "userId":I
    :goto_1
    const-string v6, "user"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 632
    .local v3, "um":Landroid/os/UserManager;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 633
    .local v2, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v4, v2}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 635
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 636
    :catch_0
    move-exception v6

    goto :goto_0

    .line 630
    .end local v2    # "icon":Landroid/graphics/Bitmap;
    .end local v3    # "um":Landroid/os/UserManager;
    .end local v4    # "userId":I
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    goto :goto_1
.end method

.method public static createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 6
    .param p0, "localeStr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 479
    if-nez p0, :cond_0

    .line 480
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 488
    :goto_0
    return-object v1

    .line 481
    :cond_0
    const-string v1, "_"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "brokenDownLocale":[Ljava/lang/String;
    array-length v1, v0

    if-ne v4, v1, :cond_1

    .line 484
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 485
    :cond_1
    array-length v1, v0

    if-ne v5, v1, :cond_2

    .line 486
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 488
    :cond_2
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    aget-object v4, v0, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createRemoveConfirmationDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "removingUserId"    # I
    .param p2, "onConfirmListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 1278
    const-string v5, "user"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1279
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 1282
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 1283
    const v2, 0x7f0c0b9f

    .line 1284
    .local v2, "titleResId":I
    const v1, 0x7f0c0ba2

    .line 1295
    .local v1, "messageResId":I
    :goto_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c0ba7

    invoke-virtual {v5, v6, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1302
    .local v0, "dlg":Landroid/app/Dialog;
    return-object v0

    .line 1285
    .end local v0    # "dlg":Landroid/app/Dialog;
    .end local v1    # "messageResId":I
    .end local v2    # "titleResId":I
    :cond_0
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1286
    const v2, 0x7f0c0ba1

    .line 1287
    .restart local v2    # "titleResId":I
    const v1, 0x7f0c0ba4

    .restart local v1    # "messageResId":I
    goto :goto_0

    .line 1288
    .end local v1    # "messageResId":I
    .end local v2    # "titleResId":I
    :cond_1
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1289
    const v2, 0x7f0c001c

    .line 1290
    .restart local v2    # "titleResId":I
    const v1, 0x7f0c001d

    .restart local v1    # "messageResId":I
    goto :goto_0

    .line 1292
    .end local v1    # "messageResId":I
    .end local v2    # "titleResId":I
    :cond_2
    const v2, 0x7f0c0ba0

    .line 1293
    .restart local v2    # "titleResId":I
    const v1, 0x7f0c0ba3

    .restart local v1    # "messageResId":I
    goto :goto_0
.end method

.method public static exePauseByParentKey(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "parentKey"    # Ljava/lang/String;

    .prologue
    .line 1407
    invoke-static {p1}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getItemsByParentKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1409
    .local v2, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    if-nez v2, :cond_1

    .line 1410
    const-string v3, "Utils"

    const-string v4, "plugins size is null"

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    :cond_0
    return-void

    .line 1413
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .line 1424
    .local v1, "pluginItemInfo":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    invoke-virtual {v1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getSettingItem()Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;->pause()V

    goto :goto_0
.end method

.method public static exeResumeByParentKey(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "parentKey"    # Ljava/lang/String;

    .prologue
    .line 1385
    invoke-static {p1}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getItemsByParentKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1387
    .local v2, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    if-nez v2, :cond_1

    .line 1388
    const-string v3, "Utils"

    const-string v4, "plugins size is null"

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    :cond_0
    return-void

    .line 1391
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .line 1402
    .local v1, "pluginItemInfo":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    invoke-virtual {v1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getSettingItem()Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;->resume()V

    goto :goto_0
.end method

.method public static forceCustomPadding(Landroid/view/View;Z)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "additive"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1256
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1257
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f080053

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1259
    .local v2, "paddingSide":I
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v5

    :goto_0
    add-int v3, v2, v5

    .line 1260
    .local v3, "paddingStart":I
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    :goto_1
    add-int v1, v2, v5

    .line 1261
    .local v1, "paddingEnd":I
    const v5, 0x1050023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1264
    .local v0, "paddingBottom":I
    invoke-virtual {p0, v3, v6, v1, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1265
    return-void

    .end local v0    # "paddingBottom":I
    .end local v1    # "paddingEnd":I
    .end local v3    # "paddingStart":I
    :cond_0
    move v5, v6

    .line 1259
    goto :goto_0

    .restart local v3    # "paddingStart":I
    :cond_1
    move v5, v6

    .line 1260
    goto :goto_1
.end method

.method public static forcePrepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V
    .locals 1
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "list"    # Landroid/widget/ListView;
    .param p3, "ignoreSidePadding"    # Z

    .prologue
    .line 563
    const/high16 v0, 0x2000000

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 564
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 565
    invoke-static {p0, p1, p2, p3}, Lcom/flyme/deviceoriginalsettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 566
    return-void
.end method

.method public static formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # D
    .param p3, "withSeconds"    # Z

    .prologue
    const v5, 0x15180

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1329
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v6, p1, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 1330
    .local v4, "seconds":I
    if-nez p3, :cond_0

    .line 1332
    add-int/lit8 v4, v4, 0x1e

    .line 1335
    :cond_0
    const/4 v0, 0x0

    .local v0, "days":I
    const/4 v1, 0x0

    .local v1, "hours":I
    const/4 v2, 0x0

    .line 1336
    .local v2, "minutes":I
    if-lt v4, v5, :cond_1

    .line 1337
    div-int v0, v4, v5

    .line 1338
    mul-int/2addr v5, v0

    sub-int/2addr v4, v5

    .line 1340
    :cond_1
    const/16 v5, 0xe10

    if-lt v4, v5, :cond_2

    .line 1341
    div-int/lit16 v1, v4, 0xe10

    .line 1342
    mul-int/lit16 v5, v1, 0xe10

    sub-int/2addr v4, v5

    .line 1344
    :cond_2
    const/16 v5, 0x3c

    if-lt v4, v5, :cond_3

    .line 1345
    div-int/lit8 v2, v4, 0x3c

    .line 1346
    mul-int/lit8 v5, v2, 0x3c

    sub-int/2addr v4, v5

    .line 1348
    :cond_3
    if-eqz p3, :cond_7

    .line 1349
    if-lez v0, :cond_4

    .line 1350
    const v5, 0x7f0c0916

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1352
    :cond_4
    if-lez v1, :cond_5

    .line 1353
    const v5, 0x7f0c0917

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1355
    :cond_5
    if-lez v2, :cond_6

    .line 1356
    const v5, 0x7f0c0918

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1358
    :cond_6
    const v5, 0x7f0c0919

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1361
    :cond_7
    if-lez v0, :cond_8

    .line 1362
    const v5, 0x7f0c091a

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1364
    :cond_8
    if-lez v1, :cond_9

    .line 1365
    const v5, 0x7f0c091b

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1368
    :cond_9
    const v5, 0x7f0c091c

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private static formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 6
    .param p0, "prop"    # Landroid/net/LinkProperties;

    .prologue
    const/4 v1, 0x0

    .line 447
    if-nez p0, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-object v1

    .line 448
    :cond_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllAddresses()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 449
    const-string v3, "Utils"

    const-string v4, "InetAddress sort"

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllAddresses()Ljava/util/List;

    move-result-object v0

    .line 452
    .local v0, "addressList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    new-instance v3, Lcom/flyme/deviceoriginalsettings/Utils$1;

    invoke-direct {v3}, Lcom/flyme/deviceoriginalsettings/Utils$1;-><init>()V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 458
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 460
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 462
    const-string v1, ""

    .line 463
    .local v1, "addresses":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 464
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 466
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 468
    :cond_3
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inet addresses ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static formatPercentage(D)Ljava/lang/String;
    .locals 2
    .param p0, "percentage"    # D

    .prologue
    .line 504
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 505
    .local v0, "bf":Landroid/text/BidiFormatter;
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatPercentage(I)Ljava/lang/String;
    .locals 4
    .param p0, "percentage"    # I

    .prologue
    .line 499
    int-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/Utils;->formatPercentage(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPercentage(JJ)Ljava/lang/String;
    .locals 4
    .param p0, "amount"    # J
    .param p2, "total"    # J

    .prologue
    .line 494
    long-to-double v0, p0

    long-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/Utils;->formatPercentage(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBatteryLevel(Landroid/content/Intent;)I
    .locals 4
    .param p0, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    .line 523
    const-string v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 524
    .local v0, "level":I
    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 525
    .local v1, "scale":I
    mul-int/lit8 v2, v0, 0x64

    div-int/2addr v2, v1

    return v2
.end method

.method public static getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    .line 519
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;
    .locals 9
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 529
    move-object v0, p1

    .line 531
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "plugged"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 532
    .local v1, "plugType":I
    const-string v5, "status"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 535
    .local v3, "status":I
    if-ne v3, v8, :cond_3

    .line 536
    const v5, 0x7f0c048c

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 537
    .local v4, "statusString":Ljava/lang/String;
    if-lez v1, :cond_0

    .line 539
    if-ne v1, v7, :cond_1

    .line 540
    const v2, 0x7f0c048d

    .line 546
    .local v2, "resId":I
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 558
    .end local v2    # "resId":I
    :cond_0
    :goto_1
    return-object v4

    .line 541
    :cond_1
    if-ne v1, v8, :cond_2

    .line 542
    const v2, 0x7f0c048e

    .restart local v2    # "resId":I
    goto :goto_0

    .line 544
    .end local v2    # "resId":I
    :cond_2
    const v2, 0x7f0c048f

    .restart local v2    # "resId":I
    goto :goto_0

    .line 548
    .end local v2    # "resId":I
    .end local v4    # "statusString":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    .line 549
    const v5, 0x7f0c0490

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "statusString":Ljava/lang/String;
    goto :goto_1

    .line 550
    .end local v4    # "statusString":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x4

    if-ne v3, v5, :cond_5

    .line 551
    const v5, 0x7f0c0491

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "statusString":Ljava/lang/String;
    goto :goto_1

    .line 552
    .end local v4    # "statusString":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x5

    if-ne v3, v5, :cond_6

    .line 553
    const v5, 0x7f0c0492

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "statusString":Ljava/lang/String;
    goto :goto_1

    .line 555
    .end local v4    # "statusString":Ljava/lang/String;
    :cond_6
    const v5, 0x7f0c048b

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "statusString":Ljava/lang/String;
    goto :goto_1
.end method

.method public static getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 439
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 441
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 443
    .local v1, "prop":Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/Utils;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getInsecureTargetUser(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;
    .locals 9
    .param p0, "activityToken"    # Landroid/os/IBinder;
    .param p1, "arguments"    # Landroid/os/Bundle;
    .param p2, "intentExtras"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 1222
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v2, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 1223
    .local v2, "currentUser":Landroid/os/UserHandle;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1225
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    new-instance v5, Landroid/os/UserHandle;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 1227
    .local v5, "launchedFromUser":Landroid/os/UserHandle;
    if-eqz v5, :cond_0

    invoke-virtual {v5, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1245
    .end local v5    # "launchedFromUser":Landroid/os/UserHandle;
    :goto_0
    return-object v5

    .line 1230
    .restart local v5    # "launchedFromUser":Landroid/os/UserHandle;
    :cond_0
    if-eqz p2, :cond_1

    const-string v6, "android.intent.extra.USER"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    move-object v4, v6

    .line 1232
    .local v4, "extrasUser":Landroid/os/UserHandle;
    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v4, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    move-object v5, v4

    .line 1233
    goto :goto_0

    .end local v4    # "extrasUser":Landroid/os/UserHandle;
    :cond_1
    move-object v4, v7

    .line 1230
    goto :goto_1

    .line 1235
    .restart local v4    # "extrasUser":Landroid/os/UserHandle;
    :cond_2
    if-eqz p1, :cond_3

    const-string v6, "android.intent.extra.USER"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    move-object v1, v6

    .line 1237
    .local v1, "argumentsUser":Landroid/os/UserHandle;
    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_4

    move-object v5, v1

    .line 1238
    goto :goto_0

    .end local v1    # "argumentsUser":Landroid/os/UserHandle;
    :cond_3
    move-object v1, v7

    .line 1235
    goto :goto_2

    .line 1240
    .end local v4    # "extrasUser":Landroid/os/UserHandle;
    .end local v5    # "launchedFromUser":Landroid/os/UserHandle;
    :catch_0
    move-exception v3

    .line 1242
    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "Utils"

    const-string v8, "Could not talk to activity manager."

    invoke-static {v6, v8, v3}, Lcom/lenovo/xlog/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v7

    .line 1243
    goto :goto_0

    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v1    # "argumentsUser":Landroid/os/UserHandle;
    .restart local v4    # "extrasUser":Landroid/os/UserHandle;
    .restart local v5    # "launchedFromUser":Landroid/os/UserHandle;
    :cond_4
    move-object v5, v2

    .line 1245
    goto :goto_0
.end method

.method private static getLocalProfileGivenName(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 654
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 658
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    new-array v2, v12, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    const-string v3, "account_type IS NULL AND account_name IS NULL"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 664
    .local v6, "localRawProfile":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 694
    :cond_0
    :goto_0
    return-object v4

    .line 667
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 672
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 670
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .line 672
    .local v8, "localRowProfileId":J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 676
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "data2"

    aput-object v3, v2, v11

    const-string v3, "data3"

    aput-object v3, v2, v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 682
    .local v10, "structuredName":Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 685
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-nez v1, :cond_3

    .line 694
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 672
    .end local v8    # "localRowProfileId":J
    .end local v10    # "structuredName":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 688
    .restart local v8    # "localRowProfileId":J
    .restart local v10    # "structuredName":Landroid/database/Cursor;
    :cond_3
    const/4 v1, 0x0

    :try_start_3
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 689
    .local v7, "partialName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 690
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v7

    .line 694
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v4, v7

    goto :goto_0

    .end local v7    # "partialName":Ljava/lang/String;
    :catchall_1
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;
    .locals 7
    .param p0, "userManager"    # Landroid/os/UserManager;

    .prologue
    .line 813
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    .line 814
    .local v4, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 815
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 816
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 817
    .local v2, "profile":Landroid/os/UserHandle;
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 815
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 820
    :cond_1
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 821
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 825
    .end local v2    # "profile":Landroid/os/UserHandle;
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getMeProfileName(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "full"    # Z

    .prologue
    .line 641
    if-eqz p1, :cond_0

    .line 642
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/Utils;->getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 644
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/Utils;->getShorterNameIfPossible(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 699
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 700
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 702
    .local v6, "profile":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 710
    :goto_0
    return-object v3

    .line 705
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 710
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 708
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 710
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;
    .locals 10
    .param p0, "activityToken"    # Landroid/os/IBinder;
    .param p1, "um"    # Landroid/os/UserManager;
    .param p2, "arguments"    # Landroid/os/Bundle;
    .param p3, "intentExtras"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 1172
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-direct {v2, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 1173
    .local v2, "currentUser":Landroid/os/UserHandle;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1175
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    .line 1176
    .local v5, "launchedFromPackage":Ljava/lang/String;
    const-string v8, "com.android.settings"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1178
    .local v6, "launchedFromSettingsApp":Z
    new-instance v7, Landroid/os/UserHandle;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 1180
    .local v7, "launchedFromUser":Landroid/os/UserHandle;
    if-eqz v7, :cond_0

    invoke-virtual {v7, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1182
    invoke-static {p1, v7}, Lcom/flyme/deviceoriginalsettings/Utils;->isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1206
    .end local v5    # "launchedFromPackage":Ljava/lang/String;
    .end local v6    # "launchedFromSettingsApp":Z
    .end local v7    # "launchedFromUser":Landroid/os/UserHandle;
    :goto_0
    return-object v7

    .line 1186
    .restart local v5    # "launchedFromPackage":Ljava/lang/String;
    .restart local v6    # "launchedFromSettingsApp":Z
    .restart local v7    # "launchedFromUser":Landroid/os/UserHandle;
    :cond_0
    if-eqz p3, :cond_1

    const-string v8, "android.intent.extra.USER"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/os/UserHandle;

    move-object v4, v8

    .line 1188
    .local v4, "extrasUser":Landroid/os/UserHandle;
    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v4, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1190
    if-eqz v6, :cond_2

    invoke-static {p1, v4}, Lcom/flyme/deviceoriginalsettings/Utils;->isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v7, v4

    .line 1191
    goto :goto_0

    .end local v4    # "extrasUser":Landroid/os/UserHandle;
    :cond_1
    move-object v4, v1

    .line 1186
    goto :goto_1

    .line 1194
    .restart local v4    # "extrasUser":Landroid/os/UserHandle;
    :cond_2
    if-eqz p2, :cond_3

    const-string v8, "android.intent.extra.USER"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/os/UserHandle;

    move-object v1, v8

    .line 1196
    .local v1, "argumentsUser":Landroid/os/UserHandle;
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1198
    if-eqz v6, :cond_4

    invoke-static {p1, v1}, Lcom/flyme/deviceoriginalsettings/Utils;->isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_4

    move-object v7, v1

    .line 1199
    goto :goto_0

    .line 1202
    .end local v1    # "argumentsUser":Landroid/os/UserHandle;
    .end local v4    # "extrasUser":Landroid/os/UserHandle;
    .end local v5    # "launchedFromPackage":Ljava/lang/String;
    .end local v6    # "launchedFromSettingsApp":Z
    .end local v7    # "launchedFromUser":Landroid/os/UserHandle;
    :catch_0
    move-exception v3

    .line 1204
    .local v3, "e":Landroid/os/RemoteException;
    const-string v8, "Utils"

    const-string v9, "Could not talk to activity manager."

    invoke-static {v8, v9, v3}, Lcom/lenovo/xlog/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_4
    move-object v7, v2

    .line 1206
    goto :goto_0
.end method

.method private static getShorterNameIfPossible(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 649
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/Utils;->getLocalProfileGivenName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "given":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .end local v0    # "given":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "given":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/Utils;->getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTetheringLabel(Landroid/net/ConnectivityManager;)I
    .locals 10
    .param p0, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    const v8, 0x7f0c0798

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 594
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 595
    .local v3, "usbRegexs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v5

    .line 596
    .local v5, "wifiRegexs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, "bluetoothRegexs":[Ljava/lang/String;
    array-length v9, v3

    if-eqz v9, :cond_0

    move v2, v6

    .line 599
    .local v2, "usbAvailable":Z
    :goto_0
    array-length v9, v5

    if-eqz v9, :cond_1

    move v4, v6

    .line 600
    .local v4, "wifiAvailable":Z
    :goto_1
    array-length v9, v1

    if-eqz v9, :cond_2

    move v0, v6

    .line 602
    .local v0, "bluetoothAvailable":Z
    :goto_2
    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    move v6, v8

    .line 615
    :goto_3
    return v6

    .end local v0    # "bluetoothAvailable":Z
    .end local v2    # "usbAvailable":Z
    .end local v4    # "wifiAvailable":Z
    :cond_0
    move v2, v7

    .line 598
    goto :goto_0

    .restart local v2    # "usbAvailable":Z
    :cond_1
    move v4, v7

    .line 599
    goto :goto_1

    .restart local v4    # "wifiAvailable":Z
    :cond_2
    move v0, v7

    .line 600
    goto :goto_2

    .line 604
    .restart local v0    # "bluetoothAvailable":Z
    :cond_3
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    move v6, v8

    .line 605
    goto :goto_3

    .line 606
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    move v6, v8

    .line 607
    goto :goto_3

    .line 608
    :cond_5
    if-eqz v4, :cond_6

    .line 609
    const v6, 0x7f0c0795

    goto :goto_3

    .line 610
    :cond_6
    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 611
    const v6, 0x7f0c0797

    goto :goto_3

    .line 612
    :cond_7
    if-eqz v2, :cond_8

    .line 613
    const v6, 0x7f0c0794

    goto :goto_3

    .line 615
    :cond_8
    const v6, 0x7f0c0796

    goto :goto_3
.end method

.method public static getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "um"    # Landroid/os/UserManager;
    .param p2, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 1310
    iget-object v1, p2, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1311
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1312
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1313
    invoke-static {p0, v0}, Lcom/flyme/deviceoriginalsettings/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/flyme/deviceoriginalsettings/drawable/CircleFramedDrawable;

    move-result-object v1

    .line 1316
    .end local v0    # "icon":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    :cond_0
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public static getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 426
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 428
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 429
    .local v1, "prop":Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/Utils;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static hasMultipleUsers(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 732
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 852
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isBatteryPresent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    .line 509
    const-string v0, "present"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCharacterBlackScreenQuickShotFlashModeSupport(Landroid/content/Context;)Z
    .locals 1
    .param p0, "mActivity"    # Landroid/content/Context;

    .prologue
    .line 832
    const/4 v0, 0x0

    return v0
.end method

.method public static isGuestMode(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1430
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "security_private_mode_pattern"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1432
    .local v1, "privateMode":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    .line 1435
    .end local v1    # "privateMode":I
    :cond_0
    :goto_0
    return v2

    .line 1433
    :catch_0
    move-exception v0

    .line 1434
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Utils"

    const-string v4, "security_private_mode_pattern read failed"

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isManagedProfile(Landroid/os/UserManager;)Z
    .locals 2
    .param p0, "userManager"    # Landroid/os/UserManager;

    .prologue
    .line 1251
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1252
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    return v1
.end method

.method public static isMonkeyRunning()Z
    .locals 1

    .prologue
    .line 402
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    return v0
.end method

.method static isOemUnlockEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1040
    const-string v1, "persistent_data_block"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 1042
    .local v0, "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result v1

    return v1
.end method

.method private static isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z
    .locals 3
    .param p0, "um"    # Landroid/os/UserManager;
    .param p1, "otherUser"    # Landroid/os/UserHandle;

    .prologue
    const/4 v0, 0x0

    .line 1155
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1156
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 842
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 848
    :cond_0
    :goto_0
    return v1

    .line 846
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 848
    .local v0, "toggleable":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 409
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 411
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 415
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 417
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Z)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleResId"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;
    .param p5, "isShortcut"    # Z

    .prologue
    .line 799
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 800
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 801
    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    const-string v1, ":settings:show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 803
    const-string v1, ":settings:show_fragment_title_resid"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 804
    const-string v1, ":settings:show_fragment_title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 805
    const-string v1, ":settings:show_fragment_as_shortcut"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 806
    return-object v0
.end method

.method public static prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V
    .locals 9
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "list"    # Landroid/view/View;
    .param p3, "ignoreSidePadding"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 575
    invoke-virtual {p2}, Landroid/view/View;->getScrollBarStyle()I

    move-result v5

    const/high16 v8, 0x2000000

    if-ne v5, v8, :cond_1

    move v1, v7

    .line 576
    .local v1, "movePadding":Z
    :goto_0
    if-eqz v1, :cond_0

    instance-of v5, p0, Landroid/preference/PreferenceFrameLayout;

    if-eqz v5, :cond_0

    .line 577
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v7, v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 579
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 580
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f080053

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 581
    .local v3, "paddingSide":I
    const v5, 0x1050023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 584
    .local v2, "paddingBottom":I
    if-eqz p3, :cond_2

    move v0, v6

    .line 585
    .local v0, "effectivePaddingSide":I
    :goto_1
    invoke-virtual {p2, v0, v6, v0, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 587
    .end local v0    # "effectivePaddingSide":I
    .end local v2    # "paddingBottom":I
    .end local v3    # "paddingSide":I
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void

    .end local v1    # "movePadding":Z
    :cond_1
    move v1, v6

    .line 575
    goto :goto_0

    .restart local v1    # "movePadding":Z
    .restart local v2    # "paddingBottom":I
    .restart local v3    # "paddingSide":I
    .restart local v4    # "res":Landroid/content/res/Resources;
    :cond_2
    move v0, v3

    .line 584
    goto :goto_1
.end method

.method static setOemUnlockEnabled(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 1050
    const-string v1, "persistent_data_block"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 1052
    .local v0, "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    invoke-virtual {v0, p1}, Landroid/service/persistentdata/PersistentDataBlockManager;->setOemUnlockEnabled(Z)V

    .line 1053
    return-void
.end method

.method public static startMultwindowMode(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # I

    .prologue
    .line 839
    return-void
.end method

.method public static startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 753
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/flyme/deviceoriginalsettings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    .line 755
    return-void
.end method

.method public static startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "isShortcut"    # Z

    .prologue
    .line 760
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move-object v4, p6

    move v5, p7

    invoke-static/range {v0 .. v5}, Lcom/flyme/deviceoriginalsettings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v7

    .line 762
    .local v7, "intent":Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 764
    :try_start_0
    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    :goto_0
    return-void

    .line 765
    :catch_0
    move-exception v6

    .line 766
    .local v6, "e":Landroid/content/ActivityNotFoundException;
    const-string v0, "Utils"

    const-string v1, "startWithFragment failed!"

    invoke-static {v0, v1, v6}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 770
    .end local v6    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    :try_start_1
    invoke-virtual {p3, v7, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 771
    :catch_1
    move-exception v6

    .line 772
    .restart local v6    # "e":Landroid/content/ActivityNotFoundException;
    const-string v0, "Utils"

    const-string v1, "startWithFragment failed!"

    invoke-static {v0, v1, v6}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleResId"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;
    .param p5, "isShortcut"    # Z
    .param p6, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 779
    invoke-static/range {p0 .. p5}, Lcom/flyme/deviceoriginalsettings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v0

    .line 781
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, p6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 782
    return-void
.end method

.method public static updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "header"    # Landroid/preference/PreferenceActivity$Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Landroid/preference/PreferenceActivity$Header;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 341
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    iget-object v1, p2, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 342
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 344
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 345
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/16 v10, 0x80

    invoke-virtual {v5, v1, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 346
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 347
    .local v3, "listSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 348
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 349
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2

    .line 352
    const/4 v9, 0x0

    .line 353
    .local v9, "title":Ljava/lang/String;
    const/4 v8, 0x0

    .line 357
    .local v8, "summary":Ljava/lang/String;
    :try_start_0
    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 359
    .local v6, "res":Landroid/content/res/Resources;
    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v10, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 361
    .local v4, "metaData":Landroid/os/Bundle;
    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    .line 363
    const-string v10, "com.android.settings.title"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 364
    const-string v10, "com.android.settings.summary"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 374
    .end local v4    # "metaData":Landroid/os/Bundle;
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 375
    invoke-virtual {v7, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 381
    :cond_1
    iput-object v9, p2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 382
    iput-object v8, p2, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 384
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    iput-object v10, p2, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 387
    const/4 v10, 0x1

    .line 395
    .end local v0    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "listSize":I
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "summary":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :goto_2
    return v10

    .line 347
    .restart local v0    # "i":I
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3    # "listSize":I
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    .end local v0    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "listSize":I
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 395
    const/4 v10, 0x0

    goto :goto_2

    .line 368
    .restart local v0    # "i":I
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3    # "listSize":I
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "summary":Ljava/lang/String;
    .restart local v9    # "title":Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_1

    .line 366
    :catch_1
    move-exception v10

    goto :goto_1
.end method

.method public static updatePluginPreferenceEnabled(Landroid/content/Context;Ljava/lang/String;Landroid/preference/Preference;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginKey"    # Ljava/lang/String;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1131
    if-nez p2, :cond_0

    .line 1148
    :goto_0
    return-void

    .line 1135
    :cond_0
    const-string v5, "toggle_airplane"

    invoke-static {v5}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getPluginDependencyByKey(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 1137
    .local v0, "airPlaneDep":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1138
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1139
    invoke-virtual {p2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 1141
    :cond_1
    invoke-static {p0}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v2

    .line 1142
    .local v2, "telephonyPlugin":Lcom/lenovo/settings/manager/TelephonyPlugin;
    invoke-virtual {v2, p0}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v1

    .line 1143
    .local v1, "insertedSimCount":I
    if-lez v1, :cond_2

    :goto_1
    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    .line 1146
    .end local v1    # "insertedSimCount":I
    .end local v2    # "telephonyPlugin":Lcom/lenovo/settings/manager/TelephonyPlugin;
    :cond_3
    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public static updatePreferenceToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parentPreferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "preferenceKey"    # Ljava/lang/String;

    .prologue
    .line 274
    invoke-virtual/range {p1 .. p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/flyme/deviceoriginalsettings/IconPreferenceScreen;

    .line 276
    .local v8, "preference":Lcom/flyme/deviceoriginalsettings/IconPreferenceScreen;
    if-nez v8, :cond_0

    .line 277
    const/4 v13, 0x0

    .line 335
    :goto_0
    return v13

    .line 280
    :cond_0
    invoke-virtual {v8}, Lcom/flyme/deviceoriginalsettings/IconPreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 281
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_4

    .line 283
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 284
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/16 v13, 0x80

    invoke-virtual {v7, v3, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 285
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 286
    .local v5, "listSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_4

    .line 287
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 288
    .local v10, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_3

    .line 290
    const/4 v2, 0x0

    .line 291
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v12, 0x0

    .line 292
    .local v12, "title":Ljava/lang/String;
    const/4 v11, 0x0

    .line 296
    .local v11, "summary":Ljava/lang/String;
    :try_start_0
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    .line 298
    .local v9, "res":Landroid/content/res/Resources;
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v13, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 300
    .local v6, "metaData":Landroid/os/Bundle;
    if-eqz v9, :cond_1

    if-eqz v6, :cond_1

    .line 301
    const-string v13, "com.android.settings.icon"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 302
    const-string v13, "com.android.settings.title"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 303
    const-string v13, "com.android.settings.summary"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 313
    .end local v6    # "metaData":Landroid/os/Bundle;
    .end local v9    # "res":Landroid/content/res/Resources;
    :cond_1
    :goto_2
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 314
    invoke-virtual {v10, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 318
    :cond_2
    invoke-virtual {v8, v2}, Lcom/flyme/deviceoriginalsettings/IconPreferenceScreen;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 319
    invoke-virtual {v8, v12}, Lcom/flyme/deviceoriginalsettings/IconPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 320
    invoke-virtual {v8, v11}, Lcom/flyme/deviceoriginalsettings/IconPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 323
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/flyme/deviceoriginalsettings/IconPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 327
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 286
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "summary":Ljava/lang/String;
    .end local v12    # "title":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 333
    .end local v1    # "i":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "listSize":I
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 335
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 307
    .restart local v1    # "i":I
    .restart local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5    # "listSize":I
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    .restart local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "summary":Ljava/lang/String;
    .restart local v12    # "title":Ljava/lang/String;
    :catch_0
    move-exception v13

    goto :goto_2

    .line 305
    :catch_1
    move-exception v13

    goto :goto_2
.end method

.method public static updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parentPreferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "preferenceKey"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    const/4 v7, 0x0

    .line 213
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 214
    .local v5, "preference":Landroid/preference/Preference;
    if-nez v5, :cond_0

    .line 247
    :goto_0
    return v7

    .line 218
    :cond_0
    invoke-virtual {v5}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 219
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 222
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 223
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 224
    .local v3, "listSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 225
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 226
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    .line 230
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 234
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_1

    .line 236
    invoke-virtual {v6, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    .line 224
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 245
    .end local v0    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "listSize":I
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
