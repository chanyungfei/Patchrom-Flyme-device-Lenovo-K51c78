.class public Lcom/lenovo/settings/manager/FeatureOption;
.super Ljava/lang/Object;
.source "FeatureOption.java"

# interfaces
.implements Lcom/lenovo/settings/plugin/IFeatureOption;


# static fields
.field private static mFeatureOption:Lcom/lenovo/settings/plugin/IFeatureOption;

.field private static mInstance:Lcom/lenovo/settings/manager/FeatureOption;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    sput-object v0, Lcom/lenovo/settings/manager/FeatureOption;->mInstance:Lcom/lenovo/settings/manager/FeatureOption;

    .line 11
    sput-object v0, Lcom/lenovo/settings/manager/FeatureOption;->mFeatureOption:Lcom/lenovo/settings/plugin/IFeatureOption;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    sget-object v0, Lcom/lenovo/settings/manager/FeatureOption;->mInstance:Lcom/lenovo/settings/manager/FeatureOption;

    if-eqz v0, :cond_0

    .line 15
    sget-object v0, Lcom/lenovo/settings/manager/FeatureOption;->mInstance:Lcom/lenovo/settings/manager/FeatureOption;

    .line 19
    :goto_0
    return-object v0

    .line 17
    :cond_0
    new-instance v0, Lcom/lenovo/settings/manager/FeatureOption;

    invoke-direct {v0}, Lcom/lenovo/settings/manager/FeatureOption;-><init>()V

    sput-object v0, Lcom/lenovo/settings/manager/FeatureOption;->mInstance:Lcom/lenovo/settings/manager/FeatureOption;

    .line 18
    invoke-static {p0}, Lcom/lenovo/settings/manager/PluginManager;->getFeatureOption(Landroid/content/Context;)Lcom/lenovo/settings/plugin/IFeatureOption;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/manager/FeatureOption;->mFeatureOption:Lcom/lenovo/settings/plugin/IFeatureOption;

    .line 19
    sget-object v0, Lcom/lenovo/settings/manager/FeatureOption;->mInstance:Lcom/lenovo/settings/manager/FeatureOption;

    goto :goto_0
.end method


# virtual methods
.method public isSupportGestureLightUpScreen()Z
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/lenovo/settings/manager/FeatureOption;->mFeatureOption:Lcom/lenovo/settings/plugin/IFeatureOption;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IFeatureOption;->isSupportGestureLightUpScreen()Z

    move-result v0

    return v0
.end method

.method public isSupportGestureSeriesLock()Z
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/lenovo/settings/manager/FeatureOption;->mFeatureOption:Lcom/lenovo/settings/plugin/IFeatureOption;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IFeatureOption;->isSupportGestureSeriesLock()Z

    move-result v0

    return v0
.end method

.method public isSupportLENOVO_ACTIVE_TROCH_SUPPORT()Z
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/lenovo/settings/manager/FeatureOption;->mFeatureOption:Lcom/lenovo/settings/plugin/IFeatureOption;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IFeatureOption;->isSupportLENOVO_ACTIVE_TROCH_SUPPORT()Z

    move-result v0

    return v0
.end method

.method public isSupportLENOVO_ACTIVE_VOICE_SUPPORT()Z
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/lenovo/settings/manager/FeatureOption;->mFeatureOption:Lcom/lenovo/settings/plugin/IFeatureOption;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IFeatureOption;->isSupportLENOVO_ACTIVE_VOICE_SUPPORT()Z

    move-result v0

    return v0
.end method

.method public isSupportLENOVO_BUTTON_BKG_CTRL()Z
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/lenovo/settings/manager/FeatureOption;->mFeatureOption:Lcom/lenovo/settings/plugin/IFeatureOption;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IFeatureOption;->isSupportLENOVO_BUTTON_BKG_CTRL()Z

    move-result v0

    return v0
.end method

.method public isSupportLENOVO_EXPERENCE_PROGRAM_SUPORT()Z
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/lenovo/settings/manager/FeatureOption;->mFeatureOption:Lcom/lenovo/settings/plugin/IFeatureOption;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IFeatureOption;->isSupportLENOVO_EXPERENCE_PROGRAM_SUPORT()Z

    move-result v0

    return v0
.end method

.method public isSupportLENOVO_GESTURE_PICK_UP_SUPPORT()Z
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/lenovo/settings/manager/FeatureOption;->mFeatureOption:Lcom/lenovo/settings/plugin/IFeatureOption;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IFeatureOption;->isSupportLENOVO_GESTURE_PICK_UP_SUPPORT()Z

    move-result v0

    return v0
.end method

.method public isSupportLENOVO_GESTURE_TOPSPEED_SNAP()Z
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/lenovo/settings/manager/FeatureOption;->mFeatureOption:Lcom/lenovo/settings/plugin/IFeatureOption;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IFeatureOption;->isSupportLENOVO_GESTURE_TOPSPEED_SNAP()Z

    move-result v0

    return v0
.end method

.method public isSupportLENOVO_LCD_INVERT_SUPPORT()Z
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/lenovo/settings/manager/FeatureOption;->mFeatureOption:Lcom/lenovo/settings/plugin/IFeatureOption;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IFeatureOption;->isSupportLENOVO_LCD_INVERT_SUPPORT()Z

    move-result v0

    return v0
.end method

.method public isSupportLENOVO_SIDE_KEY_BACKLIGHT_SUPPORT()Z
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/lenovo/settings/manager/FeatureOption;->mFeatureOption:Lcom/lenovo/settings/plugin/IFeatureOption;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IFeatureOption;->isSupportLENOVO_SIDE_KEY_BACKLIGHT_SUPPORT()Z

    move-result v0

    return v0
.end method

.method public isSupportLENOVO_SINGLE_HAND_SUPPORT()Z
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/lenovo/settings/manager/FeatureOption;->mFeatureOption:Lcom/lenovo/settings/plugin/IFeatureOption;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IFeatureOption;->isSupportLENOVO_SINGLE_HAND_SUPPORT()Z

    move-result v0

    return v0
.end method

.method public isSupportLENOVO_SMART_ROTATION_SUPPORT()Z
    .locals 3

    .prologue
    .line 25
    :try_start_0
    sget-object v1, Lcom/lenovo/settings/manager/FeatureOption;->mFeatureOption:Lcom/lenovo/settings/plugin/IFeatureOption;

    invoke-interface {v1}, Lcom/lenovo/settings/plugin/IFeatureOption;->isSupportLENOVO_SMART_ROTATION_SUPPORT()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 29
    :goto_0
    return v1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FeatureOption"

    const-string v2, "This has Exception"

    invoke-static {v1, v2, v0}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSupportLENOVO_WIFI_DISPLAY_SUPPORT()Z
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/lenovo/settings/manager/FeatureOption;->mFeatureOption:Lcom/lenovo/settings/plugin/IFeatureOption;

    invoke-interface {v0}, Lcom/lenovo/settings/plugin/IFeatureOption;->isSupportLENOVO_WIFI_DISPLAY_SUPPORT()Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    sget-object v0, Lcom/lenovo/settings/manager/FeatureOption;->mFeatureOption:Lcom/lenovo/settings/plugin/IFeatureOption;

    invoke-interface {v0, p1}, Lcom/lenovo/settings/plugin/IFeatureOption;->setContext(Landroid/content/Context;)V

    .line 81
    return-void
.end method
