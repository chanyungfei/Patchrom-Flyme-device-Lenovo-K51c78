.class public Landroid/content/res/VibeExtraConfiguration;
.super Ljava/lang/Object;
.source "VibeExtraConfiguration.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final CONFIG_FLIPFONT:I = 0x20000000

.field private static final DEBUG:Z = false

.field private static final SYSTEM_PROP_FONT_SCALE:Ljava/lang/String; = "persist.sys.font_scale"

.field private static final TAG:Ljava/lang/String; = "VibeExtraConfiguration"

.field public static final VIBEUI_FONT_NAME_INVALID:Ljava/lang/String; = ""

.field public static final VIBEUI_FONT_PATH_INVALID:Ljava/lang/String; = ""

.field private static final VIBEUI_SYSPROP_FONT_NAME:Ljava/lang/String; = "persist.sys.skin.fontname"

.field private static final VIBEUI_SYSPROP_FONT_PATH:Ljava/lang/String; = "persist.sys.skin.fontpath"


# instance fields
.field public mFontName:Ljava/lang/String;

.field public mFontPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Landroid/content/res/VibeExtraConfiguration;->mFontPath:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Landroid/content/res/VibeExtraConfiguration;->mFontName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private static freeAllCachesIfNeeded(Landroid/content/res/Configuration;I)V
    .locals 0
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "configDiff"    # I

    .prologue
    .line 208
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 209
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 210
    return-void
.end method

.method public static getFontScale()F
    .locals 5

    .prologue
    .line 254
    const/4 v2, 0x0

    .line 255
    .local v2, "strValue":Ljava/lang/String;
    const/high16 v1, 0x3f800000    # 1.0f

    .line 257
    .local v1, "fontScale":F
    const-string/jumbo v3, "persist.sys.font_scale"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 260
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 268
    :goto_0
    return v1

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public static getVIBEUIFontName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 170
    const-string/jumbo v1, "persist.sys.skin.fontname"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method public static getVIBEUIFontPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    const-string/jumbo v1, "persist.sys.skin.fontpath"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "path":Ljava/lang/String;
    return-object v0
.end method

.method public static handleConfigurationChanged(Landroid/app/Application;Landroid/content/res/Configuration;I)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "configuration"    # Landroid/content/res/Configuration;
    .param p2, "configDiff"    # I

    .prologue
    .line 214
    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 215
    invoke-static {p1, p2}, Landroid/content/res/VibeExtraConfiguration;->freeAllCachesIfNeeded(Landroid/content/res/Configuration;I)V

    .line 216
    invoke-static {}, Landroid/graphics/Typeface;->VIBEUI_setThemeFont()V

    .line 218
    :cond_0
    return-void
.end method

.method public static isNotoSansHansFont()Z
    .locals 6

    .prologue
    .line 274
    :try_start_0
    invoke-static {}, Landroid/content/res/VibeExtraConfiguration;->getVIBEUIFontPath()Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, "fontPath":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, ""

    if-eq v3, v4, :cond_0

    .line 276
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v1, "fontFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "fontName":Ljava/lang/String;
    const-string v4, "NotoSansHans-Regular.otf"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 283
    .end local v1    # "fontFile":Ljava/io/File;
    .end local v2    # "fontName":Ljava/lang/String;
    :goto_0
    return v4

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "VibeExtraConfiguration"

    const-string v5, "isNotoSansHansFont exception !"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static needNewResources(I)Z
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 133
    .local v0, "flag":Z
    const/high16 v1, 0x20000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    .line 134
    const/4 v0, 0x1

    .line 139
    :cond_0
    return v0
.end method

.method public static onActivityLaunch(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->isCts()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-static {}, Landroid/graphics/Typeface;->VIBEUI_forceToSystemDefault()V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-static {}, Landroid/graphics/Typeface;->VIBEUI_setThemeFont()V

    goto :goto_0
.end method

.method public static onConfigChanged(ILandroid/content/res/Configuration;)V
    .locals 1
    .param p0, "changes"    # I
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 200
    const/high16 v0, 0x20000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p1, Landroid/content/res/Configuration;->mVibeExtraConfiguration:Landroid/content/res/VibeExtraConfiguration;

    iget-object v0, v0, Landroid/content/res/VibeExtraConfiguration;->mFontPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/res/VibeExtraConfiguration;->setVIBEUIFontPath(Ljava/lang/String;)V

    .line 202
    iget-object v0, p1, Landroid/content/res/Configuration;->mVibeExtraConfiguration:Landroid/content/res/VibeExtraConfiguration;

    iget-object v0, v0, Landroid/content/res/VibeExtraConfiguration;->mFontName:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/res/VibeExtraConfiguration;->setVIBEUIFontName(Ljava/lang/String;)V

    .line 204
    :cond_0
    return-void
.end method

.method public static setFontScale(F)V
    .locals 3
    .param p0, "fontScale"    # F

    .prologue
    .line 246
    :try_start_0
    const-string/jumbo v1, "persist.sys.font_scale"

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VibeExtraConfiguration"

    const-string/jumbo v2, "setFontScale exception !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static setVIBEUIFontName(Ljava/lang/String;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 189
    const-string v1, "VibeExtraConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVIBEUIFontName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :try_start_0
    const-string/jumbo v1, "persist.sys.skin.fontname"

    invoke-static {v1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VibeExtraConfiguration"

    const-string/jumbo v2, "setVIBEUIFontName exception !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static setVIBEUIFontPath(Ljava/lang/String;)V
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 180
    const-string v1, "VibeExtraConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVIBEUIFontPath("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :try_start_0
    const-string/jumbo v1, "persist.sys.skin.fontpath"

    invoke-static {v1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VibeExtraConfiguration"

    const-string/jumbo v2, "setVIBEUIFontPath exception !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateIntent(Landroid/content/Intent;I)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "changes"    # I

    .prologue
    .line 235
    const/high16 v0, 0x20000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 236
    const-string v0, "android.intent.extra.configuration.font_changed"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 237
    const-string v0, "VibeExtraConfiguration"

    const-string v1, "It is a VIBEUI Font changed Intent, Update it!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/content/res/VibeExtraConfiguration;)I
    .locals 2
    .param p1, "extraconfiguration"    # Landroid/content/res/VibeExtraConfiguration;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/content/res/VibeExtraConfiguration;->mFontPath:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/res/VibeExtraConfiguration;->mFontPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 58
    check-cast p1, Landroid/content/res/VibeExtraConfiguration;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/content/res/VibeExtraConfiguration;->compareTo(Landroid/content/res/VibeExtraConfiguration;)I

    move-result v0

    return v0
.end method

.method public diff(Landroid/content/res/VibeExtraConfiguration;)I
    .locals 3
    .param p1, "extraconfiguration"    # Landroid/content/res/VibeExtraConfiguration;

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 119
    .local v0, "i":I
    iget-object v1, p0, Landroid/content/res/VibeExtraConfiguration;->mFontPath:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/res/VibeExtraConfiguration;->mFontPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    .line 126
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Landroid/content/res/VibeExtraConfiguration;->mFontPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/VibeExtraConfiguration;->mFontPath:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/VibeExtraConfiguration;->mFontName:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setTo(Landroid/content/res/VibeExtraConfiguration;)V
    .locals 1
    .param p1, "extraconfiguration"    # Landroid/content/res/VibeExtraConfiguration;

    .prologue
    .line 70
    iget-object v0, p1, Landroid/content/res/VibeExtraConfiguration;->mFontPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/res/VibeExtraConfiguration;->mFontPath:Ljava/lang/String;

    .line 71
    iget-object v0, p1, Landroid/content/res/VibeExtraConfiguration;->mFontName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/res/VibeExtraConfiguration;->mFontName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setToDefaults()V
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Landroid/content/res/VibeExtraConfiguration;->getVIBEUIFontPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/VibeExtraConfiguration;->mFontPath:Ljava/lang/String;

    .line 89
    invoke-static {}, Landroid/content/res/VibeExtraConfiguration;->getVIBEUIFontName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/VibeExtraConfiguration;->mFontName:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v0, "stringbuilder":Ljava/lang/StringBuilder;
    const-string v1, " VibeFont("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/content/res/VibeExtraConfiguration;->mFontPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v1, p0, Landroid/content/res/VibeExtraConfiguration;->mFontName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFrom(Landroid/content/res/VibeExtraConfiguration;)I
    .locals 3
    .param p1, "extraconfiguration"    # Landroid/content/res/VibeExtraConfiguration;

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, "i":I
    iget-object v1, p0, Landroid/content/res/VibeExtraConfiguration;->mFontPath:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/res/VibeExtraConfiguration;->mFontPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    .line 100
    iget-object v1, p1, Landroid/content/res/VibeExtraConfiguration;->mFontPath:Ljava/lang/String;

    iput-object v1, p0, Landroid/content/res/VibeExtraConfiguration;->mFontPath:Ljava/lang/String;

    .line 101
    iget-object v1, p1, Landroid/content/res/VibeExtraConfiguration;->mFontName:Ljava/lang/String;

    iput-object v1, p0, Landroid/content/res/VibeExtraConfiguration;->mFontName:Ljava/lang/String;

    .line 106
    :cond_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 145
    iget-object v0, p0, Landroid/content/res/VibeExtraConfiguration;->mFontPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Landroid/content/res/VibeExtraConfiguration;->mFontName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    return-void
.end method
