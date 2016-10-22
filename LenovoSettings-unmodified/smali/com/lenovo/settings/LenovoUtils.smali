.class public Lcom/lenovo/settings/LenovoUtils;
.super Ljava/lang/Object;
.source "LenovoUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LenovoUtils"

.field public static isSecondaryUser:Z

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 177
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/settings/LenovoUtils;->isSecondaryUser:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    .line 156
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 157
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 158
    .local v3, "height":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 160
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 161
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 162
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v7, v7, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 163
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 164
    return-object v0

    .line 158
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "config":Landroid/graphics/Bitmap$Config;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/lenovo/settings/LenovoUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static hasChild(Ljava/lang/String;)Z
    .locals 2
    .param p0, "parentKey"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-static {p0}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getItemsByParentKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 217
    .local v0, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    const/4 v1, 0x1

    .line 220
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isBQBPass()Z
    .locals 4

    .prologue
    .line 225
    const/4 v1, 0x0

    .line 227
    .local v1, "result":Z
    const-string v2, "ro.lenovo.bqb"

    const-string v3, "default"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "bqbProperty":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 230
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pass"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    const/4 v1, 0x1

    .line 240
    :cond_0
    :goto_0
    return v1

    .line 234
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isCT()Z
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Lcom/lenovo/settings/manager/PlatformInfoPlugin;->getOperator()Lcom/lenovo/settings/manager/PlatformInfoPlugin$Operators;

    move-result-object v0

    sget-object v1, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Operators;->CT:Lcom/lenovo/settings/manager/PlatformInfoPlugin$Operators;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCT(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/LenovoUtils;->mContext:Landroid/content/Context;

    .line 56
    invoke-static {}, Lcom/lenovo/settings/manager/PlatformInfoPlugin;->getOperator()Lcom/lenovo/settings/manager/PlatformInfoPlugin$Operators;

    move-result-object v0

    sget-object v1, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Operators;->CT:Lcom/lenovo/settings/manager/PlatformInfoPlugin$Operators;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCmcc()Z
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Lcom/lenovo/settings/manager/PlatformInfoPlugin;->getOperator()Lcom/lenovo/settings/manager/PlatformInfoPlugin$Operators;

    move-result-object v0

    sget-object v1, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Operators;->CMCC:Lcom/lenovo/settings/manager/PlatformInfoPlugin$Operators;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCmcc(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-static {}, Lcom/lenovo/settings/manager/PlatformInfoPlugin;->getOperator()Lcom/lenovo/settings/manager/PlatformInfoPlugin$Operators;

    move-result-object v0

    sget-object v1, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Operators;->CMCC:Lcom/lenovo/settings/manager/PlatformInfoPlugin$Operators;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDisiplayLightsSettings(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 189
    invoke-static {p0}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_BUTTON_BKG_CTRL()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "lights_settings"

    invoke-static {v0}, Lcom/lenovo/settings/LenovoUtils;->hasChild(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    :cond_0
    const/4 v0, 0x1

    .line 192
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDisplayKeySettings(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    invoke-static {p0}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_SIDE_KEY_BACKLIGHT_SUPPORT()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_ACTIVE_VOICE_SUPPORT()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_ACTIVE_TROCH_SUPPORT()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    :cond_0
    const/4 v0, 0x1

    .line 185
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDisplayLightsAndKeySettings(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    invoke-static {p0}, Lcom/lenovo/settings/LenovoUtils;->isDisiplayLightsSettings(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/lenovo/settings/LenovoUtils;->isDisplayKeySettings(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "lights_settings"

    invoke-static {v0}, Lcom/lenovo/settings/LenovoUtils;->hasChild(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    :cond_0
    const-string v0, "LenovoUtils"

    const-string v1, "display lights and key settings"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    .line 200
    :cond_1
    const-string v0, "LenovoUtils"

    const-string v1, "not display lights and key settings"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDisplayTouchSettings(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    invoke-static {p0}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_GESTURE_PICK_UP_SUPPORT()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_GESTURE_TOPSPEED_SNAP()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "touch_settings"

    invoke-static {v0}, Lcom/lenovo/settings/LenovoUtils;->hasChild(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    :cond_0
    const-string v0, "LenovoUtils"

    const-string v1, "Touch lights and key settings"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x1

    .line 212
    :goto_0
    return v0

    .line 211
    :cond_1
    const-string v0, "LenovoUtils"

    const-string v1, "not Touch lights and key settings"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMTKPlatform82(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/LenovoUtils;->mContext:Landroid/content/Context;

    .line 98
    invoke-static {}, Lcom/lenovo/settings/manager/PlatformInfoPlugin;->getMTKPlatformName()Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;

    move-result-object v0

    sget-object v1, Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;->mt6582:Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMTKPlatform92(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/LenovoUtils;->mContext:Landroid/content/Context;

    .line 107
    invoke-static {}, Lcom/lenovo/settings/manager/PlatformInfoPlugin;->getMTKPlatformName()Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;

    move-result-object v0

    sget-object v1, Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;->mt6592:Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMTKPlatform95(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/LenovoUtils;->mContext:Landroid/content/Context;

    .line 115
    invoke-static {}, Lcom/lenovo/settings/manager/PlatformInfoPlugin;->getMTKPlatformName()Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;

    move-result-object v0

    sget-object v1, Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;->mt6595:Lcom/lenovo/settings/manager/PlatformInfoPlugin$MtkPlatform;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMtkPlatform()Z
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/lenovo/settings/manager/PlatformInfoPlugin;->getPlatform()Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

    move-result-object v0

    sget-object v1, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;->MTK:Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMtkPlatform(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/LenovoUtils;->mContext:Landroid/content/Context;

    .line 70
    invoke-static {}, Lcom/lenovo/settings/manager/PlatformInfoPlugin;->getPlatform()Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

    move-result-object v0

    sget-object v1, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;->MTK:Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isQualcommPlatform()Z
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Lcom/lenovo/settings/manager/PlatformInfoPlugin;->getPlatform()Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

    move-result-object v0

    sget-object v1, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;->QUALCOMM:Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isQualcommPlatform(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/LenovoUtils;->mContext:Landroid/content/Context;

    .line 83
    invoke-static {}, Lcom/lenovo/settings/manager/PlatformInfoPlugin;->getPlatform()Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

    move-result-object v0

    sget-object v1, Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;->QUALCOMM:Lcom/lenovo/settings/manager/PlatformInfoPlugin$Platforms;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRowProject()Z
    .locals 4

    .prologue
    .line 174
    const-string v1, "row"

    const-string v2, "ro.lenovo.region"

    const-string v3, "prc"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 175
    .local v0, "rowProduct":Z
    return v0
.end method

.method public static phoneNumString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 125
    if-eqz p0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u202a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u202c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 128
    :cond_0
    return-object p0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    sget-object v0, Lcom/lenovo/settings/LenovoUtils;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/LenovoUtils;->mContext:Landroid/content/Context;

    .line 92
    :cond_0
    return-void
.end method

.method public static zoomDrawableIcon(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 140
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 141
    .local v4, "height":I
    invoke-static {p0}, Lcom/lenovo/settings/LenovoUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 142
    .local v0, "oldbmp":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 143
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v2, p1

    int-to-float v6, v3

    div-float v9, v2, v6

    .line 144
    .local v9, "scaleWidth":F
    int-to-float v2, p2

    int-to-float v6, v4

    div-float v8, v2, v6

    .line 145
    .local v8, "scaleHeight":F
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 146
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 148
    .local v7, "newbmp":Landroid/graphics/Bitmap;
    return-object v7
.end method
