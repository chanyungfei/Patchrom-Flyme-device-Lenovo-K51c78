.class public Lcom/lenovo/romui/RomUI;
.super Ljava/lang/Object;
.source "RomUI.java"


# static fields
.field public static final PLATFORM_ROMUI_VERSION_KEY:Ljava/lang/String; = "sys.lenovo.romui.version.sdk"

.field public static final ROMUI_DEBUG_KEY:Ljava/lang/String; = "debug.romui"

.field private static final TAG:Ljava/lang/String; = "RomUI"

.field private static final sPlatform_romui_version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-string v0, "sys.lenovo.romui.version.sdk"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lenovo/romui/RomUI;->sPlatform_romui_version:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static getDataFromAttribute(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrId"    # I

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getThemeSafely()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 81
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 83
    .local v0, "out":Landroid/util/TypedValue;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    iget v2, v0, Landroid/util/TypedValue;->data:I

    .line 88
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getRomUIVersion(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 26
    .local v1, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getThemeSafely()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 28
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    if-nez v0, :cond_0

    .line 29
    const-string v3, "RomUI"

    const-string v4, "getRomUIVersion: getThemeSafely return NULL!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v2, -0x1

    .line 44
    :goto_0
    return v2

    .line 37
    :cond_0
    const/high16 v3, 0x9010000

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 38
    iget v2, v1, Landroid/util/TypedValue;->data:I

    .line 39
    .local v2, "version":I
    const-string v3, "RomUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RomUI version :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 44
    .end local v2    # "version":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getTypedValueFromAttribute(Landroid/content/Context;I)Landroid/util/TypedValue;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrId"    # I

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getThemeSafely()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 63
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 65
    .local v0, "out":Landroid/util/TypedValue;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    .end local v0    # "out":Landroid/util/TypedValue;
    :goto_0
    return-object v0

    .restart local v0    # "out":Landroid/util/TypedValue;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPlatfromSupportRomUI()Z
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/lenovo/romui/RomUI;->sPlatform_romui_version:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
