.class public Lcom/lenovo/settings/pluginimpl/SettingsProviderImpl;
.super Ljava/lang/Object;
.source "SettingsProviderImpl.java"

# interfaces
.implements Lcom/lenovo/settings/plugin/ISettingsProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConstantIntegerBUTTON_BRIGHTNESS_MODE_AUTOMATIC()I
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public getConstantUriStringAUTO_TIME_GPS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConstantUriStringBUTTON_BRIGHTNESS_MODE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    return-void
.end method
