.class public Lcom/lenovo/settings/search/SearchPluginMapping;
.super Ljava/lang/Object;
.source "SearchPluginMapping.java"


# static fields
.field private static final HEADER_PLUGIN_ICON_MAP:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PLUGIN_ENTRANCE_MAP:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PLUGIN_ICON_MAP:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PLUGIN_SCREEN_TITLE_MAP:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, 0x7f020073

    const v6, 0x7f0c02ec

    const v5, 0x7f020057

    const v4, 0x7f0c06df

    const v3, 0x7f020085

    .line 18
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->HEADER_PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    .line 24
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    .line 30
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_SCREEN_TITLE_MAP:Ljava/util/Hashtable;

    .line 36
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ENTRANCE_MAP:Ljava/util/Hashtable;

    .line 39
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->HEADER_PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "com.android.wifi"

    const v2, 0x7f020099

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->HEADER_PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "com.lenovo.simsettings"

    const v2, 0x7f020081

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->HEADER_PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "com.lenovo.leos.mobileNetworkSettings"

    const v2, 0x7f020081

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->HEADER_PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "com.android.profilesettings"

    const v2, 0x7f020097

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->HEADER_PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "com.lenovo.keyguard.settings"

    const v2, 0x7f02008a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->HEADER_PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "com.android.systemui"

    const v2, 0x7f020090

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->HEADER_PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "com.mediatek.schpwronoff"

    const v2, 0x7f020093

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->HEADER_PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "com.lenovo.geminisettings"

    const v2, 0x7f02008c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->HEADER_PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "com.lenovo.leos.simsettings"

    const v2, 0x7f02008c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->HEADER_PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "com.lenovo.powersetting"

    const v2, 0x7f020088

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->HEADER_PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "com.lenovo.security"

    const v2, 0x7f020077

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->HEADER_PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "com.lenovo.ota"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "theme_settings"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "font_settings"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "teos_settings"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "wide_touch"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "light_settings"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "glove_mode_enable"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "smart_standby_enable"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "sim_lock_plugin"

    const v2, 0x7f020094

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "ceramics_settings"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "sim_select"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "fingerprint_lockscreen_gesture"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "smart_scene_preference"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_SCREEN_TITLE_MAP:Ljava/util/Hashtable;

    const-string v1, "theme_settings"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_SCREEN_TITLE_MAP:Ljava/util/Hashtable;

    const-string v1, "font_settings"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_SCREEN_TITLE_MAP:Ljava/util/Hashtable;

    const-string v1, "teos_settings"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_SCREEN_TITLE_MAP:Ljava/util/Hashtable;

    const-string v1, "wide_touch"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_SCREEN_TITLE_MAP:Ljava/util/Hashtable;

    const-string v1, "light_settings"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_SCREEN_TITLE_MAP:Ljava/util/Hashtable;

    const-string v1, "glove_mode_enable"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_SCREEN_TITLE_MAP:Ljava/util/Hashtable;

    const-string v1, "smart_standby_enable"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_SCREEN_TITLE_MAP:Ljava/util/Hashtable;

    const-string v1, "sim_lock_plugin"

    const v2, 0x7f0c0197

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_SCREEN_TITLE_MAP:Ljava/util/Hashtable;

    const-string v1, "ceramics_settings"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_SCREEN_TITLE_MAP:Ljava/util/Hashtable;

    const-string v1, "fingerprint_lockscreen_gesture"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_SCREEN_TITLE_MAP:Ljava/util/Hashtable;

    const-string v1, "smart_scene_preference"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_SCREEN_TITLE_MAP:Ljava/util/Hashtable;

    const-string v1, "system_update"

    const v2, 0x7f0c07db

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ENTRANCE_MAP:Ljava/util/Hashtable;

    const-string v1, "theme_settings"

    const-class v2, Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ENTRANCE_MAP:Ljava/util/Hashtable;

    const-string v1, "font_settings"

    const-class v2, Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ENTRANCE_MAP:Ljava/util/Hashtable;

    const-string v1, "teos_settings"

    const-class v2, Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ENTRANCE_MAP:Ljava/util/Hashtable;

    const-string v1, "wide_touch"

    const-class v2, Lcom/lenovo/settings/CharSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ENTRANCE_MAP:Ljava/util/Hashtable;

    const-string v1, "light_settings"

    const-class v2, Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ENTRANCE_MAP:Ljava/util/Hashtable;

    const-string v1, "glove_mode_enable"

    const-class v2, Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ENTRANCE_MAP:Ljava/util/Hashtable;

    const-string v1, "smart_standby_enable"

    const-class v2, Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ENTRANCE_MAP:Ljava/util/Hashtable;

    const-string v1, "sim_lock_plugin"

    const-class v2, Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ENTRANCE_MAP:Ljava/util/Hashtable;

    const-string v1, "ceramics_settings"

    const-class v2, Lcom/lenovo/settings/CharSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ENTRANCE_MAP:Ljava/util/Hashtable;

    const-string v1, "fingerprint_lockscreen_gesture"

    const-class v2, Lcom/lenovo/settings/CharSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ENTRANCE_MAP:Ljava/util/Hashtable;

    const-string v1, "smart_scene_preference"

    const-class v2, Lcom/lenovo/settings/CharSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ENTRANCE_MAP:Ljava/util/Hashtable;

    const-string v1, "system_update"

    const-class v2, Lcom/lenovo/settings/AboutActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getHeaderPluginIconRes(Ljava/lang/String;)I
    .locals 2
    .param p0, "pluginPkgName"    # Ljava/lang/String;

    .prologue
    .line 93
    sget-object v1, Lcom/lenovo/settings/search/SearchPluginMapping;->HEADER_PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 94
    .local v0, "iconRes":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 97
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final getPluginEntranceClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "pluginPrefKey"    # Ljava/lang/String;

    .prologue
    .line 117
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ENTRANCE_MAP:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final getPluginIconRes(Ljava/lang/String;)I
    .locals 2
    .param p0, "pluginPrefKey"    # Ljava/lang/String;

    .prologue
    .line 101
    sget-object v1, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 102
    .local v0, "iconRes":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 105
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final getPluginScreenTitle(Ljava/lang/String;)I
    .locals 2
    .param p0, "pluginPrefKey"    # Ljava/lang/String;

    .prologue
    .line 109
    sget-object v1, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_SCREEN_TITLE_MAP:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 110
    .local v0, "titleRes":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 113
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
