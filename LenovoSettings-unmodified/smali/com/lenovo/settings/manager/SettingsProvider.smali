.class public Lcom/lenovo/settings/manager/SettingsProvider;
.super Ljava/lang/Object;
.source "SettingsProvider.java"

# interfaces
.implements Lcom/lenovo/settings/plugin/ISettingsProvider;


# static fields
.field private static mInstance:Lcom/lenovo/settings/manager/SettingsProvider;

.field private static mPlugin:Lcom/lenovo/settings/plugin/ISettingsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/lenovo/settings/manager/SettingsProvider;->mInstance:Lcom/lenovo/settings/manager/SettingsProvider;

    .line 10
    sput-object v0, Lcom/lenovo/settings/manager/SettingsProvider;->mPlugin:Lcom/lenovo/settings/plugin/ISettingsProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/SettingsProvider;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    sget-object v0, Lcom/lenovo/settings/manager/SettingsProvider;->mInstance:Lcom/lenovo/settings/manager/SettingsProvider;

    if-eqz v0, :cond_0

    .line 14
    sget-object v0, Lcom/lenovo/settings/manager/SettingsProvider;->mInstance:Lcom/lenovo/settings/manager/SettingsProvider;

    .line 18
    :goto_0
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Lcom/lenovo/settings/manager/SettingsProvider;

    invoke-direct {v0}, Lcom/lenovo/settings/manager/SettingsProvider;-><init>()V

    sput-object v0, Lcom/lenovo/settings/manager/SettingsProvider;->mInstance:Lcom/lenovo/settings/manager/SettingsProvider;

    .line 17
    invoke-static {p0}, Lcom/lenovo/settings/manager/PluginManager;->getSettingsProvider(Landroid/content/Context;)Lcom/lenovo/settings/plugin/ISettingsProvider;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/manager/SettingsProvider;->mPlugin:Lcom/lenovo/settings/plugin/ISettingsProvider;

    .line 18
    sget-object v0, Lcom/lenovo/settings/manager/SettingsProvider;->mInstance:Lcom/lenovo/settings/manager/SettingsProvider;

    goto :goto_0
.end method


# virtual methods
.method public getConstantIntegerBUTTON_BRIGHTNESS_MODE_AUTOMATIC()I
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/lenovo/settings/manager/SettingsProvider;->mPlugin:Lcom/lenovo/settings/plugin/ISettingsProvider;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/ISettingsProvider;->getConstantIntegerBUTTON_BRIGHTNESS_MODE_AUTOMATIC()I

    move-result v0

    return v0
.end method

.method public getConstantUriStringAUTO_TIME_GPS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/lenovo/settings/manager/SettingsProvider;->mPlugin:Lcom/lenovo/settings/plugin/ISettingsProvider;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/ISettingsProvider;->getConstantUriStringAUTO_TIME_GPS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConstantUriStringBUTTON_BRIGHTNESS_MODE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/lenovo/settings/manager/SettingsProvider;->mPlugin:Lcom/lenovo/settings/plugin/ISettingsProvider;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/ISettingsProvider;->getConstantUriStringBUTTON_BRIGHTNESS_MODE()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-object v0, Lcom/lenovo/settings/manager/SettingsProvider;->mPlugin:Lcom/lenovo/settings/plugin/ISettingsProvider;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/ISettingsProvider;->setContext(Landroid/content/Context;)V

    .line 39
    return-void
.end method
