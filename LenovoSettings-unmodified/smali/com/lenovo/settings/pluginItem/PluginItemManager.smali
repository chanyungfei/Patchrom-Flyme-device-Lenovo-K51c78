.class public Lcom/lenovo/settings/pluginItem/PluginItemManager;
.super Ljava/lang/Object;
.source "PluginItemManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginItemManager"

.field private static sFullPluginItemCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/settings/pluginItem/PluginItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sHeaderPluginItemCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/settings/pluginItem/PluginItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sPluginDependency:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sPrefItemCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/settings/pluginItem/PluginItemInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sPresetPlugin:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sFullPluginItemCache:Ljava/util/Hashtable;

    .line 35
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sHeaderPluginItemCache:Ljava/util/Hashtable;

    .line 41
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sPrefItemCache:Ljava/util/Hashtable;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sPluginDependency:Ljava/util/HashMap;

    .line 239
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sPresetPlugin:Ljava/util/HashSet;

    .line 241
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "com.android.wifi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "com.lenovo.android.settings.tether"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "com.lenovo.simsettings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "com.lenovo.leos.mobileNetworkSettings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "com.android.profilesettings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "com.lenovo.keyguard.settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "com.lenovo.callsetting"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "com.mediatek.schpwronoff"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "com.lenovo.geminisettings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "com.lenovo.leos.simsettings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "com.lenovo.powersetting"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "com.lenovo.security"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "com.lenovo.email"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 257
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addHeaderPluginItem(Lcom/lenovo/settings/pluginItem/PluginItemInfo;)V
    .locals 2
    .param p0, "plugin"    # Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .prologue
    .line 134
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sHeaderPluginItemCache:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-void
.end method

.method public static addPluginDependency(Lcom/lenovo/settings/pluginItem/PluginItemInfo;)V
    .locals 4
    .param p0, "plugin"    # Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .prologue
    .line 198
    if-nez p0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getDependency()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "depPluginKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 204
    sget-object v2, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sPluginDependency:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 205
    .local v1, "pluginDependency":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-nez v1, :cond_2

    .line 206
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "pluginDependency":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 207
    .restart local v1    # "pluginDependency":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    sget-object v2, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sPluginDependency:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sHeaderPluginItemCache:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 50
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sPrefItemCache:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 51
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sPluginDependency:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 52
    return-void
.end method

.method public static getHeaderPluginItem(Ljava/lang/String;)Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    .locals 1
    .param p0, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sHeaderPluginItemCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .line 146
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getHeaderPluginItems()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/settings/pluginItem/PluginItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sHeaderPluginItemCache:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    return-object v0
.end method

.method public static getItemsByParentKey(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/settings/pluginItem/PluginItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sPrefItemCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static getPluginDependencyByKey(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    const-string v1, "toggle_airplane"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 216
    .local v0, "airplaneDep":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v1, "mobile_network_settings"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v1, "call_settings"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v1, "multi_sim_settings"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v1, "sim_lock_plugin"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v1, "sim_select"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .end local v0    # "airplaneDep":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sPluginDependency:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    move-object v0, v1

    goto :goto_0
.end method

.method public static getPluginItemIfExisted(Ljava/lang/String;)Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    .locals 1
    .param p0, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sFullPluginItemCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .line 70
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPrefPluginCount()I
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sPrefItemCache:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public static getPrefPluginItems(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "pKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/settings/pluginItem/PluginItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    sget-object v1, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sPrefItemCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 172
    .local v0, "cachedList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "cachedList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .restart local v0    # "cachedList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    sget-object v1, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sPrefItemCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_0
    return-object v0
.end method

.method public static loadAllSettingItems(Landroid/content/Context;)Ljava/util/Hashtable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/settings/pluginItem/PluginItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sFullPluginItemCache:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sFullPluginItemCache:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 62
    :cond_0
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sFullPluginItemCache:Ljava/util/Hashtable;

    const/4 v1, 0x0

    const-class v2, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->loadPluginItems(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 63
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sFullPluginItemCache:Ljava/util/Hashtable;

    return-object v0
.end method

.method private static loadPluginItems(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/settings/pluginItem/PluginItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 93
    .local v4, "pluginList":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x84

    invoke-virtual {v8, v2, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 96
    .local v6, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v6, :cond_0

    .line 97
    const-string v8, "PluginItemManager"

    const-string v9, "<loadPluginItems> resolveInfoList is null."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 101
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 102
    .local v7, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-nez v7, :cond_2

    .line 103
    const-string v8, "PluginItemManager"

    const-string v9, "<loadPluginItems> serviceInfo is null."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :cond_2
    sget-object v8, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sPresetPlugin:Ljava/util/HashSet;

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 107
    const-string v8, "PluginItemManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Do not load "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", because its a preset plugin."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_3
    if-eqz p1, :cond_4

    iget-object v8, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 111
    :cond_4
    new-instance v3, Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    invoke-direct {v3, p0, v7}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V

    .line 112
    .local v3, "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    invoke-virtual {v3}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "cn":Ljava/lang/String;
    if-nez v0, :cond_5

    .line 114
    const-string v8, "PluginItemManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<loadPluginItems> package:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not found class."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :cond_5
    invoke-virtual {v3}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->isPluginValid()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v3}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v3}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getParentKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 121
    invoke-virtual {v3}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 126
    .end local v0    # "cn":Ljava/lang/String;
    .end local v3    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_6
    return-object v4
.end method

.method public static loadSettingItemsFromPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/settings/pluginItem/PluginItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    const-class v0, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->loadPluginItems(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public static releaseHeaderPluginItems()V
    .locals 4

    .prologue
    .line 228
    sget-object v3, Lcom/lenovo/settings/pluginItem/PluginItemManager;->sHeaderPluginItemCache:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 229
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .line 230
    .local v2, "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    if-eqz v2, :cond_0

    .line 231
    invoke-virtual {v2}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->releaseForHeaderPluginItem()V

    goto :goto_0

    .line 234
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    .end local v2    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    :cond_1
    return-void
.end method
