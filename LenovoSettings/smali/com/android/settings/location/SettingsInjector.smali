.class Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;
.super Ljava/lang/Object;
.source "SettingsInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/location/SettingsInjector$1;,
        Lcom/flyme/deviceoriginalsettings/location/SettingsInjector$Setting;,
        Lcom/flyme/deviceoriginalsettings/location/SettingsInjector$StatusLoadingHandler;,
        Lcom/flyme/deviceoriginalsettings/location/SettingsInjector$ServiceSettingClickedListener;
    }
.end annotation


# static fields
.field private static final INJECTED_STATUS_UPDATE_TIMEOUT_MILLIS:J = 0x3e8L

.field static final TAG:Ljava/lang/String; = "SettingsInjector"

.field private static final WHAT_RECEIVED_STATUS:I = 0x2

.field private static final WHAT_RELOAD:I = 0x1

.field private static final WHAT_TIMEOUT:I = 0x3


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/flyme/deviceoriginalsettings/location/SettingsInjector$Setting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;->mContext:Landroid/content/Context;

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;->mSettings:Ljava/util/Set;

    .line 100
    new-instance v0, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector$StatusLoadingHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector$StatusLoadingHandler;-><init>(Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;Lcom/flyme/deviceoriginalsettings/location/SettingsInjector$1;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;->mHandler:Landroid/os/Handler;

    .line 101
    return-void
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;->mSettings:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addServiceSetting(Ljava/util/List;Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;)Landroid/preference/Preference;
    .locals 8
    .param p2, "info"    # Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;",
            ")",
            "Landroid/preference/Preference;"
        }
    .end annotation

    .prologue
    .local p1, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    const/4 v7, 0x0

    .line 265
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 266
    .local v3, "pm":Landroid/content/pm/PackageManager;
    iget-object v5, p2, Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;->packageName:Ljava/lang/String;

    iget v6, p2, Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;->iconId:I

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 267
    .local v0, "appIcon":Landroid/graphics/drawable/Drawable;
    iget-object v5, p2, Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 268
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v5, p2, Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;->title:Ljava/lang/String;

    iget-object v6, p2, Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 269
    .local v1, "badgedAppLabel":Ljava/lang/CharSequence;
    iget-object v5, p2, Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;->title:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 272
    const/4 v1, 0x0

    .line 274
    :cond_0
    new-instance v4, Lcom/flyme/deviceoriginalsettings/location/DimmableIconPreference;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/flyme/deviceoriginalsettings/location/DimmableIconPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 275
    .local v4, "pref":Landroid/preference/Preference;
    iget-object v5, p2, Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 276
    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 277
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 278
    new-instance v5, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector$ServiceSettingClickedListener;

    invoke-direct {v5, p0, p2}, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector$ServiceSettingClickedListener;-><init>(Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 280
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    return-object v4
.end method

.method private getSettings(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 13
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    .line 113
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 114
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.location.SettingInjectorService"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 117
    .local v4, "profileId":I
    const/16 v9, 0x80

    invoke-virtual {v3, v2, v9, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 119
    .local v6, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v9, "SettingsInjector"

    invoke-static {v9, v12}, Lcom/lenovo/xlog/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 120
    const-string v9, "SettingsInjector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found services for profile id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    .local v8, "settings":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 125
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    :try_start_0
    invoke-static {v5, p1, v3}, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;->parseServiceInfo(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Landroid/content/pm/PackageManager;)Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;

    move-result-object v7

    .line 126
    .local v7, "setting":Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;
    if-nez v7, :cond_1

    .line 127
    const-string v9, "SettingsInjector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to load service info "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 131
    .end local v7    # "setting":Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v9, "SettingsInjector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to load service info "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 129
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7    # "setting":Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;
    :cond_1
    :try_start_1
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 133
    .end local v7    # "setting":Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;
    :catch_1
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "SettingsInjector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to load service info "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 137
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    const-string v9, "SettingsInjector"

    invoke-static {v9, v12}, Lcom/lenovo/xlog/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 138
    const-string v9, "SettingsInjector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Loaded settings for profile id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_3
    return-object v8
.end method

.method private static parseAttributes(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 204
    sget-object v0, Landroid/R$styleable;->SettingInjectorService:[I

    invoke-virtual {p3, p4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 208
    .local v6, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "title":Ljava/lang/String;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 211
    .local v3, "iconId":I
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 213
    .local v5, "settingsActivity":Ljava/lang/String;
    const-string v0, "SettingsInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const-string v0, "SettingsInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parsed title: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", iconId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", settingsActivity: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 217
    invoke-static/range {v0 .. v5}, Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/lang/String;)Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 220
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "iconId":I
    .end local v5    # "settingsActivity":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private static parseServiceInfo(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Landroid/content/pm/PackageManager;)Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;
    .locals 11
    .param p0, "service"    # Landroid/content/pm/ResolveInfo;
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v6, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 154
    .local v6, "si":Landroid/content/pm/ServiceInfo;
    iget-object v0, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 156
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_1

    .line 157
    const-string v8, "SettingsInjector"

    const/4 v9, 0x5

    invoke-static {v8, v9}, Lcom/lenovo/xlog/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 158
    const-string v8, "SettingsInjector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring attempt to inject setting from app not in system image: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v8, 0x0

    .line 193
    :cond_0
    :goto_0
    return-object v8

    .line 164
    :cond_1
    const/4 v4, 0x0

    .line 166
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v8, "android.location.SettingInjectorService"

    invoke-virtual {v6, p2, v8}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 167
    if-nez v4, :cond_3

    .line 168
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No android.location.SettingInjectorService meta-data for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :catch_0
    move-exception v2

    .line 189
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to load resources for package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v8

    if-eqz v4, :cond_2

    .line 193
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v8

    .line 172
    :cond_3
    :try_start_2
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 176
    .local v1, "attrs":Landroid/util/AttributeSet;
    :cond_4
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 179
    :cond_5
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "nodeName":Ljava/lang/String;
    const-string v8, "injected-location-setting"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 181
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v9, "Meta-data does not start with injected-location-setting tag"

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 185
    :cond_6
    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-virtual {p2, v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v5

    .line 187
    .local v5, "res":Landroid/content/res/Resources;
    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v8, v9, p1, v5, v1}, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;->parseAttributes(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 192
    if-eqz v4, :cond_0

    .line 193
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0
.end method


# virtual methods
.method public getInjectedSettings(I)Ljava/util/List;
    .locals 13
    .param p1, "profileId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;->mContext:Landroid/content/Context;

    const-string v11, "user"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 232
    .local v8, "um":Landroid/os/UserManager;
    invoke-virtual {v8}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v5

    .line 233
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v3, "prefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 235
    .local v4, "profileCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 236
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserHandle;

    .line 237
    .local v9, "userHandle":Landroid/os/UserHandle;
    const/4 v10, -0x2

    if-eq p1, v10, :cond_0

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    if-ne p1, v10, :cond_1

    .line 238
    :cond_0
    invoke-direct {p0, v9}, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;->getSettings(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v7

    .line 239
    .local v7, "settings":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;

    .line 240
    .local v6, "setting":Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;
    invoke-direct {p0, v3, v6}, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;->addServiceSetting(Ljava/util/List;Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;)Landroid/preference/Preference;

    move-result-object v2

    .line 241
    .local v2, "pref":Landroid/preference/Preference;
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;->mSettings:Ljava/util/Set;

    new-instance v11, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector$Setting;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v6, v2, v12}, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector$Setting;-><init>(Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;Landroid/preference/Preference;Lcom/flyme/deviceoriginalsettings/location/SettingsInjector$1;)V

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 235
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pref":Landroid/preference/Preference;
    .end local v6    # "setting":Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;
    .end local v7    # "settings":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/flyme/deviceoriginalsettings/location/InjectedSetting;>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    .end local v9    # "userHandle":Landroid/os/UserHandle;
    :cond_2
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;->reloadStatusMessages()V

    .line 248
    return-object v3
.end method

.method public reloadStatusMessages()V
    .locals 3

    .prologue
    .line 255
    const-string v0, "SettingsInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const-string v0, "SettingsInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reloadingStatusMessages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;->mSettings:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 259
    return-void
.end method
