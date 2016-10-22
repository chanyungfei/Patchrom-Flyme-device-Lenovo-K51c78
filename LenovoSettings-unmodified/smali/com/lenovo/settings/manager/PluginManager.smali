.class public Lcom/lenovo/settings/manager/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# static fields
.field private static isSupportPlugin:Z

.field private static mFeatureOption:Lcom/lenovo/settings/plugin/IFeatureOption;

.field private static mMtkFeature:Lcom/lenovo/settings/plugin/IMtkFeature;

.field private static mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

.field private static mMtkTelephone:Lcom/lenovo/settings/plugin/IMtkTelephone;

.field private static mPlatformApi:Lcom/lenovo/settings/plugin/IPlatformApi;

.field private static mQcomPlug:Lcom/lenovo/settings/plugin/IQCOMPlug;

.field private static mSettingsProvider:Lcom/lenovo/settings/plugin/ISettingsProvider;

.field private static mTelephony:Lcom/lenovo/settings/plugin/ITelephony;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/settings/manager/PluginManager;->isSupportPlugin:Z

    .line 27
    sput-object v1, Lcom/lenovo/settings/manager/PluginManager;->mFeatureOption:Lcom/lenovo/settings/plugin/IFeatureOption;

    .line 46
    sput-object v1, Lcom/lenovo/settings/manager/PluginManager;->mSettingsProvider:Lcom/lenovo/settings/plugin/ISettingsProvider;

    .line 65
    sput-object v1, Lcom/lenovo/settings/manager/PluginManager;->mMtkFeature:Lcom/lenovo/settings/plugin/IMtkFeature;

    .line 86
    sput-object v1, Lcom/lenovo/settings/manager/PluginManager;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    .line 106
    sput-object v1, Lcom/lenovo/settings/manager/PluginManager;->mTelephony:Lcom/lenovo/settings/plugin/ITelephony;

    .line 126
    sput-object v1, Lcom/lenovo/settings/manager/PluginManager;->mPlatformApi:Lcom/lenovo/settings/plugin/IPlatformApi;

    .line 147
    sput-object v1, Lcom/lenovo/settings/manager/PluginManager;->mQcomPlug:Lcom/lenovo/settings/plugin/IQCOMPlug;

    .line 167
    sput-object v1, Lcom/lenovo/settings/manager/PluginManager;->mMtkTelephone:Lcom/lenovo/settings/plugin/IMtkTelephone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFeatureOption(Landroid/content/Context;)Lcom/lenovo/settings/plugin/IFeatureOption;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mFeatureOption:Lcom/lenovo/settings/plugin/IFeatureOption;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mFeatureOption:Lcom/lenovo/settings/plugin/IFeatureOption;

    .line 43
    :goto_0
    return-object v0

    .line 34
    :cond_0
    sget-boolean v0, Lcom/lenovo/settings/manager/PluginManager;->isSupportPlugin:Z

    if-eqz v0, :cond_1

    .line 35
    const-class v0, Lcom/lenovo/settings/plugin/IFeatureOption;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lenovo/settings/pluginproxy/PluginProxy;->loadObject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/plugin/IFeatureOption;

    sput-object v0, Lcom/lenovo/settings/manager/PluginManager;->mFeatureOption:Lcom/lenovo/settings/plugin/IFeatureOption;

    .line 38
    :cond_1
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mFeatureOption:Lcom/lenovo/settings/plugin/IFeatureOption;

    if-nez v0, :cond_2

    .line 39
    new-instance v0, Lcom/lenovo/settings/pluginimpl/FeatureOptionImpl;

    invoke-direct {v0}, Lcom/lenovo/settings/pluginimpl/FeatureOptionImpl;-><init>()V

    sput-object v0, Lcom/lenovo/settings/manager/PluginManager;->mFeatureOption:Lcom/lenovo/settings/plugin/IFeatureOption;

    .line 43
    :goto_1
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mFeatureOption:Lcom/lenovo/settings/plugin/IFeatureOption;

    goto :goto_0

    .line 41
    :cond_2
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mFeatureOption:Lcom/lenovo/settings/plugin/IFeatureOption;

    invoke-interface {v0, p0}, Lcom/lenovo/settings/plugin/IFeatureOption;->setContext(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public static getMtkFeature(Landroid/content/Context;)Lcom/lenovo/settings/plugin/IMtkFeature;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mMtkFeature:Lcom/lenovo/settings/plugin/IMtkFeature;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mMtkFeature:Lcom/lenovo/settings/plugin/IMtkFeature;

    .line 83
    :goto_0
    return-object v0

    .line 73
    :cond_0
    sget-boolean v0, Lcom/lenovo/settings/manager/PluginManager;->isSupportPlugin:Z

    if-eqz v0, :cond_1

    .line 74
    const-class v0, Lcom/lenovo/settings/plugin/IMtkFeature;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lenovo/settings/pluginproxy/PluginProxy;->loadObject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/plugin/IMtkFeature;

    sput-object v0, Lcom/lenovo/settings/manager/PluginManager;->mMtkFeature:Lcom/lenovo/settings/plugin/IMtkFeature;

    .line 78
    :cond_1
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mMtkFeature:Lcom/lenovo/settings/plugin/IMtkFeature;

    if-nez v0, :cond_2

    .line 79
    new-instance v0, Lcom/lenovo/settings/pluginimpl/MtkFeatureImpl;

    invoke-direct {v0}, Lcom/lenovo/settings/pluginimpl/MtkFeatureImpl;-><init>()V

    sput-object v0, Lcom/lenovo/settings/manager/PluginManager;->mMtkFeature:Lcom/lenovo/settings/plugin/IMtkFeature;

    .line 83
    :goto_1
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mMtkFeature:Lcom/lenovo/settings/plugin/IMtkFeature;

    goto :goto_0

    .line 81
    :cond_2
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mMtkFeature:Lcom/lenovo/settings/plugin/IMtkFeature;

    invoke-interface {v0, p0}, Lcom/lenovo/settings/plugin/IMtkFeature;->setContext(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public static getMtkPlug(Landroid/content/Context;)Lcom/lenovo/settings/plugin/IMtkPlug;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    .line 103
    :goto_0
    return-object v0

    .line 94
    :cond_0
    sget-boolean v0, Lcom/lenovo/settings/manager/PluginManager;->isSupportPlugin:Z

    if-eqz v0, :cond_1

    .line 95
    const-class v0, Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lenovo/settings/pluginproxy/PluginProxy;->loadObject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/plugin/IMtkPlug;

    sput-object v0, Lcom/lenovo/settings/manager/PluginManager;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    .line 98
    :cond_1
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    if-nez v0, :cond_2

    .line 99
    new-instance v0, Lcom/lenovo/settings/pluginimpl/MtkPlugImpl;

    invoke-direct {v0}, Lcom/lenovo/settings/pluginimpl/MtkPlugImpl;-><init>()V

    sput-object v0, Lcom/lenovo/settings/manager/PluginManager;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    .line 103
    :goto_1
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    goto :goto_0

    .line 101
    :cond_2
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mMtkPlug:Lcom/lenovo/settings/plugin/IMtkPlug;

    invoke-interface {v0, p0}, Lcom/lenovo/settings/plugin/IMtkPlug;->setContext(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public static getMtkTelephone(Landroid/content/Context;)Lcom/lenovo/settings/plugin/IMtkTelephone;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mMtkTelephone:Lcom/lenovo/settings/plugin/IMtkTelephone;

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mMtkTelephone:Lcom/lenovo/settings/plugin/IMtkTelephone;

    .line 185
    :goto_0
    return-object v0

    .line 175
    :cond_0
    sget-boolean v0, Lcom/lenovo/settings/manager/PluginManager;->isSupportPlugin:Z

    if-eqz v0, :cond_1

    .line 176
    const-class v0, Lcom/lenovo/settings/plugin/IMtkTelephone;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lenovo/settings/pluginproxy/PluginProxy;->loadObject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/plugin/IMtkTelephone;

    sput-object v0, Lcom/lenovo/settings/manager/PluginManager;->mMtkTelephone:Lcom/lenovo/settings/plugin/IMtkTelephone;

    .line 180
    :cond_1
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mMtkTelephone:Lcom/lenovo/settings/plugin/IMtkTelephone;

    if-nez v0, :cond_2

    .line 181
    new-instance v0, Lcom/lenovo/settings/pluginimpl/MtkTelephoneImpl;

    invoke-direct {v0}, Lcom/lenovo/settings/pluginimpl/MtkTelephoneImpl;-><init>()V

    sput-object v0, Lcom/lenovo/settings/manager/PluginManager;->mMtkTelephone:Lcom/lenovo/settings/plugin/IMtkTelephone;

    .line 185
    :goto_1
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mMtkTelephone:Lcom/lenovo/settings/plugin/IMtkTelephone;

    goto :goto_0

    .line 183
    :cond_2
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mMtkTelephone:Lcom/lenovo/settings/plugin/IMtkTelephone;

    invoke-interface {v0, p0}, Lcom/lenovo/settings/plugin/IMtkTelephone;->setContext(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public static getPlatformApi(Landroid/content/Context;)Lcom/lenovo/settings/plugin/IPlatformApi;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mPlatformApi:Lcom/lenovo/settings/plugin/IPlatformApi;

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mPlatformApi:Lcom/lenovo/settings/plugin/IPlatformApi;

    .line 144
    :goto_0
    return-object v0

    .line 134
    :cond_0
    sget-boolean v0, Lcom/lenovo/settings/manager/PluginManager;->isSupportPlugin:Z

    if-eqz v0, :cond_1

    .line 135
    const-class v0, Lcom/lenovo/settings/plugin/IPlatformApi;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lenovo/settings/pluginproxy/PluginProxy;->loadObject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/plugin/IPlatformApi;

    sput-object v0, Lcom/lenovo/settings/manager/PluginManager;->mPlatformApi:Lcom/lenovo/settings/plugin/IPlatformApi;

    .line 139
    :cond_1
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mPlatformApi:Lcom/lenovo/settings/plugin/IPlatformApi;

    if-nez v0, :cond_2

    .line 140
    new-instance v0, Lcom/lenovo/settings/pluginimpl/PlatformApiImpl;

    invoke-direct {v0}, Lcom/lenovo/settings/pluginimpl/PlatformApiImpl;-><init>()V

    sput-object v0, Lcom/lenovo/settings/manager/PluginManager;->mPlatformApi:Lcom/lenovo/settings/plugin/IPlatformApi;

    .line 144
    :goto_1
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mPlatformApi:Lcom/lenovo/settings/plugin/IPlatformApi;

    goto :goto_0

    .line 142
    :cond_2
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mPlatformApi:Lcom/lenovo/settings/plugin/IPlatformApi;

    invoke-interface {v0, p0}, Lcom/lenovo/settings/plugin/IPlatformApi;->setContext(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public static getQcomPlug(Landroid/content/Context;)Lcom/lenovo/settings/plugin/IQCOMPlug;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mQcomPlug:Lcom/lenovo/settings/plugin/IQCOMPlug;

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mQcomPlug:Lcom/lenovo/settings/plugin/IQCOMPlug;

    .line 164
    :goto_0
    return-object v0

    .line 155
    :cond_0
    sget-boolean v0, Lcom/lenovo/settings/manager/PluginManager;->isSupportPlugin:Z

    if-eqz v0, :cond_1

    .line 156
    const-class v0, Lcom/lenovo/settings/plugin/IQCOMPlug;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lenovo/settings/pluginproxy/PluginProxy;->loadObject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/plugin/IQCOMPlug;

    sput-object v0, Lcom/lenovo/settings/manager/PluginManager;->mQcomPlug:Lcom/lenovo/settings/plugin/IQCOMPlug;

    .line 159
    :cond_1
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mQcomPlug:Lcom/lenovo/settings/plugin/IQCOMPlug;

    if-nez v0, :cond_2

    .line 160
    new-instance v0, Lcom/lenovo/settings/pluginimpl/QCOMPlugImpl;

    invoke-direct {v0}, Lcom/lenovo/settings/pluginimpl/QCOMPlugImpl;-><init>()V

    sput-object v0, Lcom/lenovo/settings/manager/PluginManager;->mQcomPlug:Lcom/lenovo/settings/plugin/IQCOMPlug;

    .line 164
    :goto_1
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mQcomPlug:Lcom/lenovo/settings/plugin/IQCOMPlug;

    goto :goto_0

    .line 162
    :cond_2
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mQcomPlug:Lcom/lenovo/settings/plugin/IQCOMPlug;

    invoke-interface {v0, p0}, Lcom/lenovo/settings/plugin/IQCOMPlug;->setContext(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public static getSettingsProvider(Landroid/content/Context;)Lcom/lenovo/settings/plugin/ISettingsProvider;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mSettingsProvider:Lcom/lenovo/settings/plugin/ISettingsProvider;

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mSettingsProvider:Lcom/lenovo/settings/plugin/ISettingsProvider;

    .line 62
    :goto_0
    return-object v0

    .line 53
    :cond_0
    sget-boolean v0, Lcom/lenovo/settings/manager/PluginManager;->isSupportPlugin:Z

    if-eqz v0, :cond_1

    .line 54
    const-class v0, Lcom/lenovo/settings/plugin/ISettingsProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lenovo/settings/pluginproxy/PluginProxy;->loadObject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/plugin/ISettingsProvider;

    sput-object v0, Lcom/lenovo/settings/manager/PluginManager;->mSettingsProvider:Lcom/lenovo/settings/plugin/ISettingsProvider;

    .line 57
    :cond_1
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mSettingsProvider:Lcom/lenovo/settings/plugin/ISettingsProvider;

    if-nez v0, :cond_2

    .line 58
    new-instance v0, Lcom/lenovo/settings/pluginimpl/SettingsProviderImpl;

    invoke-direct {v0}, Lcom/lenovo/settings/pluginimpl/SettingsProviderImpl;-><init>()V

    sput-object v0, Lcom/lenovo/settings/manager/PluginManager;->mSettingsProvider:Lcom/lenovo/settings/plugin/ISettingsProvider;

    .line 62
    :goto_1
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mSettingsProvider:Lcom/lenovo/settings/plugin/ISettingsProvider;

    goto :goto_0

    .line 60
    :cond_2
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mSettingsProvider:Lcom/lenovo/settings/plugin/ISettingsProvider;

    invoke-interface {v0, p0}, Lcom/lenovo/settings/plugin/ISettingsProvider;->setContext(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public static getTelephony(Landroid/content/Context;)Lcom/lenovo/settings/plugin/ITelephony;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mTelephony:Lcom/lenovo/settings/plugin/ITelephony;

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mTelephony:Lcom/lenovo/settings/plugin/ITelephony;

    .line 123
    :goto_0
    return-object v0

    .line 114
    :cond_0
    sget-boolean v0, Lcom/lenovo/settings/manager/PluginManager;->isSupportPlugin:Z

    if-eqz v0, :cond_1

    .line 115
    const-class v0, Lcom/lenovo/settings/plugin/ITelephony;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lenovo/settings/pluginproxy/PluginProxy;->loadObject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/plugin/ITelephony;

    sput-object v0, Lcom/lenovo/settings/manager/PluginManager;->mTelephony:Lcom/lenovo/settings/plugin/ITelephony;

    .line 118
    :cond_1
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mTelephony:Lcom/lenovo/settings/plugin/ITelephony;

    if-nez v0, :cond_2

    .line 119
    new-instance v0, Lcom/lenovo/settings/pluginimpl/TelephonyImpl;

    invoke-direct {v0}, Lcom/lenovo/settings/pluginimpl/TelephonyImpl;-><init>()V

    sput-object v0, Lcom/lenovo/settings/manager/PluginManager;->mTelephony:Lcom/lenovo/settings/plugin/ITelephony;

    .line 123
    :goto_1
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mTelephony:Lcom/lenovo/settings/plugin/ITelephony;

    goto :goto_0

    .line 121
    :cond_2
    sget-object v0, Lcom/lenovo/settings/manager/PluginManager;->mTelephony:Lcom/lenovo/settings/plugin/ITelephony;

    invoke-interface {v0, p0}, Lcom/lenovo/settings/plugin/ITelephony;->setContext(Landroid/content/Context;)V

    goto :goto_1
.end method
