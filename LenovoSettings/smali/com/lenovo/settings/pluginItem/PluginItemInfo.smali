.class public Lcom/lenovo/settings/pluginItem/PluginItemInfo;
.super Ljava/lang/Object;
.source "PluginItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/pluginItem/PluginItemInfo$1;,
        Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;
    }
.end annotation


# static fields
.field private static final KEY_CLASS:Ljava/lang/String; = "lenovo-class"

.field private static final KEY_VERSION:Ljava/lang/String; = "lenovo-version"

.field private static final TAG:Ljava/lang/String; = "Plugin"

.field private static sPathClassLoaderCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;",
            ">;"
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


# instance fields
.field public mClassContext:Landroid/content/Context;

.field private mClassLoader:Ldalvik/system/PathClassLoader;

.field protected mClassName:Ljava/lang/String;

.field protected mIntentDescription:Ljava/lang/String;

.field protected mKey:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field protected mPackageName:Ljava/lang/String;

.field protected mParentKey:Ljava/lang/String;

.field protected mPluginDependency:Ljava/lang/String;

.field protected mPosition:F

.field private mPreference:Landroid/preference/Preference;

.field private mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

.field protected mSourceDir:Ljava/lang/String;

.field protected mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 361
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    .line 363
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "personal_hotspot"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 364
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "mobile_network_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 365
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "ringtone_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 366
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "lock_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 367
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "notification_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 368
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "call_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 369
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "power_setting"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 370
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "multi_sim_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 371
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "lepower_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 372
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "applications_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 373
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 67
    if-nez p2, :cond_0

    .line 79
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageName:Ljava/lang/String;

    .line 74
    iget-object v0, p2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 75
    .local v0, "metaData":Landroid/os/Bundle;
    const-string v1, "lenovo-class"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassName:Ljava/lang/String;

    .line 76
    const-string v1, "lenovo-version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mVersion:Ljava/lang/String;

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;

    .line 78
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->initPlugin(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private getClassLoader(Ljava/lang/ClassLoader;)Ldalvik/system/PathClassLoader;
    .locals 4
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v3, 0x0

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "classLoaderItem":Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;
    sget-object v1, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPathClassLoaderCache:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 140
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPathClassLoaderCache:Ljava/util/HashMap;

    .line 145
    :goto_0
    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;

    .end local v0    # "classLoaderItem":Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;
    invoke-direct {v0, v3}, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;-><init>(Lcom/lenovo/settings/pluginItem/PluginItemInfo$1;)V

    .line 147
    .restart local v0    # "classLoaderItem":Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;
    sget-object v1, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPathClassLoaderCache:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_0
    iget-object v1, v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;->sourceDir:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;->pathClassLoader:Ldalvik/system/PathClassLoader;

    if-eqz v1, :cond_3

    .line 151
    iget-object v1, v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;->sourceDir:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;->sourceDir:Ljava/lang/String;

    .line 153
    iput-object v3, v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;->pathClassLoader:Ldalvik/system/PathClassLoader;

    .line 154
    new-instance v1, Ldalvik/system/PathClassLoader;

    iget-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v1, v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;->pathClassLoader:Ldalvik/system/PathClassLoader;

    .line 161
    :cond_1
    :goto_1
    iget-object v1, v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;->pathClassLoader:Ldalvik/system/PathClassLoader;

    return-object v1

    .line 142
    :cond_2
    sget-object v1, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPathClassLoaderCache:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "classLoaderItem":Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;
    check-cast v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;

    .restart local v0    # "classLoaderItem":Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;
    goto :goto_0

    .line 157
    :cond_3
    iget-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;->sourceDir:Ljava/lang/String;

    .line 158
    new-instance v1, Ldalvik/system/PathClassLoader;

    iget-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v1, v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;->pathClassLoader:Ldalvik/system/PathClassLoader;

    goto :goto_1
.end method

.method public static isPresetPlugin(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pluginKey"    # Ljava/lang/String;

    .prologue
    .line 376
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadObject()Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 314
    invoke-virtual {p0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPluginClass()Ljava/lang/Class;

    move-result-object v4

    .line 316
    .local v4, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v4, :cond_0

    .line 317
    const-string v8, "Plugin"

    const-string v9, "<loadObject> class is null."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    .line 355
    :goto_0
    return-object v5

    .line 322
    :cond_0
    const/4 v5, 0x0

    .line 324
    .local v5, "obj":Ljava/lang/Object;
    const/4 v8, 0x1

    :try_start_0
    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 325
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassContext:Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 338
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "obj":Ljava/lang/Object;
    :goto_1
    if-eqz v5, :cond_1

    instance-of v8, v5, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    if-eqz v8, :cond_1

    move-object v6, v5

    .line 339
    check-cast v6, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    .line 340
    .local v6, "settingItem":Lcom/lenovo/settings/pluginItem/AbstractSettingItem;
    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;->getKey()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mKey:Ljava/lang/String;

    .line 341
    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;->getParentKey()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mParentKey:Ljava/lang/String;

    .line 342
    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;->getPosition()F

    move-result v7

    iput v7, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPosition:F

    .line 344
    iput-object v6, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    .line 345
    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;->getDependencyPluginKey()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPluginDependency:Ljava/lang/String;

    goto :goto_0

    .line 326
    .end local v6    # "settingItem":Lcom/lenovo/settings/pluginItem/AbstractSettingItem;
    .restart local v5    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 327
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "Plugin"

    const-string v9, "<createObject> constructor with context not success."

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    goto :goto_1

    .line 330
    :catch_1
    move-exception v2

    .line 331
    .local v2, "e1":Ljava/lang/InstantiationException;
    const-string v8, "Plugin"

    const-string v9, "<createObject> localClass.newInstance InstantiationException."

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 332
    .end local v2    # "e1":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v3

    .line 333
    .local v3, "e2":Ljava/lang/IllegalAccessException;
    const-string v8, "Plugin"

    const-string v9, "<createObject> localClass.newInstance IllegalAccessException."

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 347
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "e2":Ljava/lang/IllegalAccessException;
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_1
    iput-object v7, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mKey:Ljava/lang/String;

    .line 348
    iput-object v7, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mParentKey:Ljava/lang/String;

    .line 349
    const/4 v8, 0x0

    iput v8, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPosition:F

    .line 350
    iput-object v7, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    .line 351
    iput-object v7, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    .line 352
    iput-object v7, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPluginDependency:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPluginDependency:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mIntentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getParentKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mParentKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginClass()Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 241
    iget-object v3, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassName:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 242
    const-string v3, "Plugin"

    const-string v4, "<loadClass> className is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 256
    :goto_0
    return-object v1

    .line 246
    :cond_0
    const/4 v1, 0x0

    .line 248
    .local v1, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassName:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassLoader:Ldalvik/system/PathClassLoader;

    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "Plugin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<loadClass> Cannot find class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 251
    goto :goto_0

    .line 252
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Plugin"

    const-string v4, "<loadClass> Class.forName, IllegalArgumentException."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 254
    goto :goto_0

    .line 255
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method public getPosition()F
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPosition:F

    return v0
.end method

.method public getPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 268
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    if-nez v3, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-object v2

    .line 272
    :cond_1
    iget-object v3, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    .line 273
    iput-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    .line 276
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 277
    .local v1, "settingsRes":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    iget-object v3, v3, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;->mClassContext:Landroid/content/Context;

    if-nez v3, :cond_5

    move-object v0, v2

    .line 278
    .local v0, "pluginRes":Landroid/content/res/Resources;
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 280
    const-string v2, "Plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update plugin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " configuration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    iput v3, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 283
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 286
    :cond_3
    iget-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    invoke-virtual {v2, p1}, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;->getPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    .line 288
    iget-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 289
    iget-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getHeaderPluginItem(Ljava/lang/String;)Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 291
    iget-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    const v3, 0x7f040081

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 292
    iget-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    const v3, 0x7f040060

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 300
    :cond_4
    iget-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    goto/16 :goto_0

    .line 277
    .end local v0    # "pluginRes":Landroid/content/res/Resources;
    :cond_5
    iget-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    iget-object v2, v2, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;->mClassContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public getSettingItem()Lcom/lenovo/settings/pluginItem/AbstractSettingItem;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    return-object v0
.end method

.method public getSourceDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public initPlugin(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->initPlugin(Landroid/content/Context;Z)V

    .line 98
    return-void
.end method

.method public initPlugin(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "force"    # Z

    .prologue
    .line 108
    if-nez p2, :cond_0

    sget-object v1, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    :goto_0
    return-void

    .line 112
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassContext:Landroid/content/Context;

    .line 114
    iget-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageName:Ljava/lang/String;

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    :goto_2
    iget-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 128
    const-string v1, "Plugin"

    const-string v2, "<Plugin> sourceDir is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "Plugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<Plugin> package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassContext:Landroid/content/Context;

    goto :goto_1

    .line 123
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 124
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "Plugin"

    const-string v2, "<Plugin> getApplicationInfo failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 132
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getClassLoader(Ljava/lang/ClassLoader;)Ldalvik/system/PathClassLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassLoader:Ldalvik/system/PathClassLoader;

    .line 134
    invoke-direct {p0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->loadObject()Ljava/lang/Object;

    goto :goto_0
.end method

.method public isPluginValid()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 304
    iget-object v3, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    if-nez v3, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v1

    .line 308
    :cond_1
    iget-object v3, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 309
    .local v0, "pkgState":I
    if-eqz v0, :cond_2

    if-ne v2, v0, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassContext:Landroid/content/Context;

    .line 83
    iput-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    .line 84
    iput-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    .line 85
    return-void
.end method

.method public releaseForHeaderPluginItem()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iput-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassContext:Landroid/content/Context;

    .line 90
    iput-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    .line 91
    iput-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    .line 92
    iput-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassLoader:Ldalvik/system/PathClassLoader;

    .line 94
    :cond_0
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassName:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0
    .param p1, "dependency"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPluginDependency:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setIntentDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "intentDes"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mIntentDescription:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "newKey"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mKey:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageName:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setParentKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "newKey"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mParentKey:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setPosition(F)V
    .locals 0
    .param p1, "newPosition"    # F

    .prologue
    .line 185
    iput p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPosition:F

    .line 186
    return-void
.end method

.method public setSourceDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceDir"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mVersion:Ljava/lang/String;

    .line 210
    return-void
.end method
