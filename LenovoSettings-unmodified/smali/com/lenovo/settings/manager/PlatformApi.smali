.class public Lcom/lenovo/settings/manager/PlatformApi;
.super Ljava/lang/Object;
.source "PlatformApi.java"

# interfaces
.implements Lcom/lenovo/settings/plugin/IPlatformApi;


# static fields
.field private static mInstance:Lcom/lenovo/settings/manager/PlatformApi;

.field private static mPlatformApi:Lcom/lenovo/settings/plugin/IPlatformApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/lenovo/settings/manager/PlatformApi;->mInstance:Lcom/lenovo/settings/manager/PlatformApi;

    .line 10
    sput-object v0, Lcom/lenovo/settings/manager/PlatformApi;->mPlatformApi:Lcom/lenovo/settings/plugin/IPlatformApi;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/PlatformApi;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    sget-object v0, Lcom/lenovo/settings/manager/PlatformApi;->mInstance:Lcom/lenovo/settings/manager/PlatformApi;

    if-eqz v0, :cond_0

    .line 14
    sget-object v0, Lcom/lenovo/settings/manager/PlatformApi;->mInstance:Lcom/lenovo/settings/manager/PlatformApi;

    .line 18
    :goto_0
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Lcom/lenovo/settings/manager/PlatformApi;

    invoke-direct {v0}, Lcom/lenovo/settings/manager/PlatformApi;-><init>()V

    sput-object v0, Lcom/lenovo/settings/manager/PlatformApi;->mInstance:Lcom/lenovo/settings/manager/PlatformApi;

    .line 17
    invoke-static {p0}, Lcom/lenovo/settings/manager/PluginManager;->getPlatformApi(Landroid/content/Context;)Lcom/lenovo/settings/plugin/IPlatformApi;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/manager/PlatformApi;->mPlatformApi:Lcom/lenovo/settings/plugin/IPlatformApi;

    .line 18
    sget-object v0, Lcom/lenovo/settings/manager/PlatformApi;->mInstance:Lcom/lenovo/settings/manager/PlatformApi;

    goto :goto_0
.end method


# virtual methods
.method public getConstantUriStringLONG_CLICK_MENU_ENABLED()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/lenovo/settings/manager/PlatformApi;->mPlatformApi:Lcom/lenovo/settings/plugin/IPlatformApi;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IPlatformApi;->getConstantUriStringLONG_CLICK_MENU_ENABLED()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRomUI_PreferenceCategoryBackgroundFirst(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v0, Lcom/lenovo/settings/manager/PlatformApi;->mPlatformApi:Lcom/lenovo/settings/plugin/IPlatformApi;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/IPlatformApi;->getRomUI_PreferenceCategoryBackgroundFirst(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getRomUI_PreferenceCategoryBackgroundNormal(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    sget-object v0, Lcom/lenovo/settings/manager/PlatformApi;->mPlatformApi:Lcom/lenovo/settings/plugin/IPlatformApi;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/IPlatformApi;->getRomUI_PreferenceCategoryBackgroundNormal(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public isRomUI_v2(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-object v0, Lcom/lenovo/settings/manager/PlatformApi;->mPlatformApi:Lcom/lenovo/settings/plugin/IPlatformApi;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/IPlatformApi;->isRomUI_v2(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    sget-object v0, Lcom/lenovo/settings/manager/PlatformApi;->mPlatformApi:Lcom/lenovo/settings/plugin/IPlatformApi;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/IPlatformApi;->setContext(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public setDisplayEffectLevel(Landroid/content/Context;II)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "level"    # I
    .param p3, "flag"    # I

    .prologue
    .line 23
    sget-object v0, Lcom/lenovo/settings/manager/PlatformApi;->mPlatformApi:Lcom/lenovo/settings/plugin/IPlatformApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/lenovo/settings/plugin/IPlatformApi;->setDisplayEffectLevel(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method
