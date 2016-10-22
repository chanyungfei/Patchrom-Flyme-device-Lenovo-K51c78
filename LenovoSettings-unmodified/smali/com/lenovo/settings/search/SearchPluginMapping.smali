.class public Lcom/lenovo/settings/search/SearchPluginMapping;
.super Ljava/lang/Object;
.source "SearchPluginMapping.java"


# static fields
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
    .locals 7

    .prologue
    const v6, 0x7f0c02e9

    const v5, 0x7f020057

    const v4, 0x7f0c06d3

    const v3, 0x7f020084

    .line 19
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    .line 25
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_SCREEN_TITLE_MAP:Ljava/util/Hashtable;

    .line 31
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ENTRANCE_MAP:Ljava/util/Hashtable;

    .line 34
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "theme_settings"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "font_settings"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "teos_settings"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "wide_touch"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "light_settings"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "glove_mode_enable"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "smart_standby_enable"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "sim_lock_plugin"

    const v2, 0x7f020093

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "ceramics_settings"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    const-string v1, "sim_select"

    const v2, 0x7f020072

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_SCREEN_TITLE_MAP:Ljava/util/Hashtable;

    const-string v1, "theme_settings"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_SCREEN_TITLE_MAP:Ljava/util/Hashtable;

    const-string v1, "font_settings"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_SCREEN_TITLE_MAP:Ljava/util/Hashtable;

    const-string v1, "teos_settings"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_SCREEN_TITLE_MAP:Ljava/util/Hashtable;

    const-string v1, "wide_touch"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_SCREEN_TITLE_MAP:Ljava/util/Hashtable;

    const-string v1, "light_settings"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_SCREEN_TITLE_MAP:Ljava/util/Hashtable;

    const-string v1, "glove_mode_enable"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_SCREEN_TITLE_MAP:Ljava/util/Hashtable;

    const-string v1, "smart_standby_enable"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_SCREEN_TITLE_MAP:Ljava/util/Hashtable;

    const-string v1, "sim_lock_plugin"

    const v2, 0x7f0c0196

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_SCREEN_TITLE_MAP:Ljava/util/Hashtable;

    const-string v1, "ceramics_settings"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ENTRANCE_MAP:Ljava/util/Hashtable;

    const-string v1, "theme_settings"

    const-class v2, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ENTRANCE_MAP:Ljava/util/Hashtable;

    const-string v1, "font_settings"

    const-class v2, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ENTRANCE_MAP:Ljava/util/Hashtable;

    const-string v1, "teos_settings"

    const-class v2, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ENTRANCE_MAP:Ljava/util/Hashtable;

    const-string v1, "wide_touch"

    const-class v2, Lcom/lenovo/settings/CharSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ENTRANCE_MAP:Ljava/util/Hashtable;

    const-string v1, "light_settings"

    const-class v2, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ENTRANCE_MAP:Ljava/util/Hashtable;

    const-string v1, "glove_mode_enable"

    const-class v2, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ENTRANCE_MAP:Ljava/util/Hashtable;

    const-string v1, "smart_standby_enable"

    const-class v2, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ENTRANCE_MAP:Ljava/util/Hashtable;

    const-string v1, "sim_lock_plugin"

    const-class v2, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ENTRANCE_MAP:Ljava/util/Hashtable;

    const-string v1, "ceramics_settings"

    const-class v2, Lcom/lenovo/settings/CharSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ENTRANCE_MAP:Ljava/util/Hashtable;

    const-string v1, "system_update"

    const-class v2, Lcom/lenovo/settings/AboutActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getPluginEntranceClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "pluginPrefKey"    # Ljava/lang/String;

    .prologue
    .line 84
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
    .line 68
    sget-object v1, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_ICON_MAP:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 69
    .local v0, "iconRes":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 72
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
    .line 76
    sget-object v1, Lcom/lenovo/settings/search/SearchPluginMapping;->PLUGIN_SCREEN_TITLE_MAP:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 77
    .local v0, "titleRes":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 80
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
