.class public Lvibeui/content/res/AppIconThemeServices;
.super Lvibeui/content/res/IAppIconThemeService$Stub;
.source "AppIconThemeServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvibeui/content/res/AppIconThemeServices$MyZipFile;
    }
.end annotation


# static fields
.field private static final ICON_MAP_PATH_STRING:Ljava/lang/String; = "/system/etc/icons.xml"

.field private static final KEY_THEME_ID:Ljava/lang/String; = "LENOVO_LAUNCHER_THEME_ID"

.field private static final KEY_THEME_PATH:Ljava/lang/String; = "LENOVO_LAUNCHER_THEME_PATH"

.field private static final LENOVO_THEME_CONFIG_PATH:Ljava/lang/String; = "/system/etc/lenovo_theme_config.xml"

.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "AppIconThemeServices"

.field public static final SERVICE_NAME:Ljava/lang/String; = "AppIconThemeServices"

.field public static final SPLIT:Ljava/lang/String; = ";"

.field private static final THEME_LELAUNCHER_DO_ACTION:Ljava/lang/String; = "action_themecenter_themechange_lelauncher"

.field private static final sDefaultDensity:I

.field private static final sOptimalDensities:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIconMapLock:Ljava/lang/Object;

.field private mIsReady:Z

.field private mIsReadyLock:Ljava/lang/Object;

.field private mPath:Ljava/lang/String;

.field private final mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeStamp:J

.field private mZipFile:Lvibeui/content/res/AppIconThemeServices$MyZipFile;

.field private mZipFileLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Lvibeui/content/res/AppIconThemeServices;->sDefaultDensity:I

    .line 69
    sget v0, Lvibeui/content/res/AppIconThemeServices;->sDefaultDensity:I

    invoke-static {v0}, Lvibeui/content/res/ThemeDensityUtils;->getOptimalDensityOrder(I)[I

    move-result-object v0

    sput-object v0, Lvibeui/content/res/AppIconThemeServices;->sOptimalDensities:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Lvibeui/content/res/IAppIconThemeService$Stub;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lvibeui/content/res/AppIconThemeServices;->mIsReadyLock:Ljava/lang/Object;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvibeui/content/res/AppIconThemeServices;->mIsReady:Z

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lvibeui/content/res/AppIconThemeServices;->mIconMap:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lvibeui/content/res/AppIconThemeServices;->mIconMapLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lvibeui/content/res/AppIconThemeServices;->mZipFileLock:Ljava/lang/Object;

    .line 74
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lvibeui/content/res/AppIconThemeServices;->mTimeStamp:J

    .line 287
    new-instance v0, Lvibeui/content/res/AppIconThemeServices$1;

    invoke-direct {v0, p0}, Lvibeui/content/res/AppIconThemeServices$1;-><init>(Lvibeui/content/res/AppIconThemeServices;)V

    iput-object v0, p0, Lvibeui/content/res/AppIconThemeServices;->mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    iput-object p1, p0, Lvibeui/content/res/AppIconThemeServices;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lvibeui/content/res/AppIconThemeServices;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lvibeui/content/res/AppIconThemeServices;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lvibeui/content/res/AppIconThemeServices;->handleThemeChange(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lvibeui/content/res/AppIconThemeServices;)V
    .locals 0
    .param p0, "x0"    # Lvibeui/content/res/AppIconThemeServices;

    .prologue
    .line 37
    invoke-direct {p0}, Lvibeui/content/res/AppIconThemeServices;->parseIconMapFile()V

    return-void
.end method

.method static synthetic access$202(Lvibeui/content/res/AppIconThemeServices;J)J
    .locals 1
    .param p0, "x0"    # Lvibeui/content/res/AppIconThemeServices;
    .param p1, "x1"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lvibeui/content/res/AppIconThemeServices;->mTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$300(Lvibeui/content/res/AppIconThemeServices;Z)V
    .locals 0
    .param p0, "x0"    # Lvibeui/content/res/AppIconThemeServices;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lvibeui/content/res/AppIconThemeServices;->setIsReadyState(Z)V

    return-void
.end method

.method static synthetic access$400(Lvibeui/content/res/AppIconThemeServices;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lvibeui/content/res/AppIconThemeServices;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lvibeui/content/res/AppIconThemeServices;->sendSwitchCompleted(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final getIconsFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 465
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/icons.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 466
    .local v0, "iconsFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    .end local v0    # "iconsFile":Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0    # "iconsFile":Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final getLenovoThemeConfigFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 477
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/lenovo_theme_config.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 478
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return-object v0

    .restart local v0    # "file":Ljava/io/File;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final getMapFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v2, p0, Lvibeui/content/res/AppIconThemeServices;->mIconMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 113
    :try_start_0
    iget-object v1, p0, Lvibeui/content/res/AppIconThemeServices;->mIconMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    .local v0, "newName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 115
    monitor-exit v2

    .line 119
    .end local v0    # "newName":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "newName":Ljava/lang/String;
    :cond_0
    monitor-exit v2

    move-object v0, p1

    goto :goto_0

    .line 120
    .end local v0    # "newName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final getThemZipFilePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 489
    const/4 v1, 0x0

    .line 490
    .local v1, "zipFile":Ljava/io/File;
    invoke-direct {p0}, Lvibeui/content/res/AppIconThemeServices;->getThemePathFromSetting()Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 492
    new-instance v1, Ljava/io/File;

    .end local v1    # "zipFile":Ljava/io/File;
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 493
    .restart local v1    # "zipFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 502
    :goto_0
    return-object v2

    .line 497
    :cond_0
    invoke-direct {p0}, Lvibeui/content/res/AppIconThemeServices;->parseLenovoThemeConfig()Ljava/lang/String;

    move-result-object v0

    .line 498
    new-instance v1, Ljava/io/File;

    .end local v1    # "zipFile":Ljava/io/File;
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 499
    .restart local v1    # "zipFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 500
    goto :goto_0

    .line 502
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getThemeFileInner(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "inPackageName"    # Ljava/lang/String;
    .param p2, "inResoucePath"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v12, p0, Lvibeui/content/res/AppIconThemeServices;->mZipFileLock:Ljava/lang/Object;

    monitor-enter v12

    .line 195
    :try_start_0
    iget-object v11, p0, Lvibeui/content/res/AppIconThemeServices;->mZipFile:Lvibeui/content/res/AppIconThemeServices$MyZipFile;

    if-nez v11, :cond_0

    .line 196
    const/4 v11, 0x0

    monitor-exit v12

    .line 269
    :goto_0
    return-object v11

    .line 198
    :cond_0
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 200
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v11

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 217
    :cond_2
    :try_start_2
    const-string v11, "/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v6, v11, 0x1

    .line 218
    .local v6, "indexSplit":I
    const/4 v11, -0x1

    if-ne v6, v11, :cond_3

    .line 219
    const/4 v11, 0x0

    goto :goto_0

    .line 221
    :cond_3
    new-instance v8, Ljava/lang/StringBuffer;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 222
    .local v8, "nameBuf":Ljava/lang/StringBuffer;
    const-string v11, "."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 223
    const/4 v11, -0x1

    if-ne v6, v11, :cond_4

    .line 224
    const/4 v11, 0x0

    goto :goto_0

    .line 227
    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    const-string v12, ""

    invoke-virtual {v8, v6, v11, v12}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "."

    const-string v14, "_"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "__"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, "fileName":Ljava/lang/String;
    invoke-direct {p0, v3}, Lvibeui/content/res/AppIconThemeServices;->getMapFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 231
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".png"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 232
    const/4 v9, 0x0

    .line 233
    .local v9, "outDensity":I
    const/4 v10, 0x0

    .line 234
    .local v10, "zipEntry":Ljava/util/zip/ZipEntry;
    const/4 v4, 0x0

    .line 235
    .local v4, "filePath":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    sget-object v11, Lvibeui/content/res/AppIconThemeServices;->sOptimalDensities:[I

    array-length v11, v11

    if-ge v5, v11, :cond_7

    .line 236
    sget-object v11, Lvibeui/content/res/AppIconThemeServices;->sOptimalDensities:[I

    aget v11, v11, v5

    invoke-static {v11}, Lvibeui/content/res/ThemeDensityUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "densitySuffix":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "res/drawable"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 238
    .local v7, "name":Ljava/lang/String;
    iget-object v12, p0, Lvibeui/content/res/AppIconThemeServices;->mZipFileLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 239
    :try_start_3
    iget-object v11, p0, Lvibeui/content/res/AppIconThemeServices;->mZipFile:Lvibeui/content/res/AppIconThemeServices$MyZipFile;

    if-nez v11, :cond_6

    .line 240
    const/4 v11, 0x0

    monitor-exit v12

    goto/16 :goto_0

    .line 243
    :catchall_1
    move-exception v11

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 266
    .end local v1    # "densitySuffix":Ljava/lang/String;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "indexSplit":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "nameBuf":Ljava/lang/StringBuffer;
    .end local v9    # "outDensity":I
    .end local v10    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v2

    .line 267
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 269
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 242
    .restart local v1    # "densitySuffix":Ljava/lang/String;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v4    # "filePath":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v6    # "indexSplit":I
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "nameBuf":Ljava/lang/StringBuffer;
    .restart local v9    # "outDensity":I
    .restart local v10    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_6
    :try_start_5
    iget-object v11, p0, Lvibeui/content/res/AppIconThemeServices;->mZipFile:Lvibeui/content/res/AppIconThemeServices$MyZipFile;

    invoke-virtual {v11, v7}, Lvibeui/content/res/AppIconThemeServices$MyZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v10

    .line 243
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 244
    if-eqz v10, :cond_8

    .line 245
    move-object v4, v7

    .line 246
    :try_start_6
    sget-object v11, Lvibeui/content/res/AppIconThemeServices;->sOptimalDensities:[I

    aget v9, v11, v5

    .line 263
    .end local v1    # "densitySuffix":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    :cond_7
    if-eqz v4, :cond_5

    .line 264
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v11

    goto/16 :goto_0

    .line 235
    .restart local v1    # "densitySuffix":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private getThemePathFromSetting()Ljava/lang/String;
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lvibeui/content/res/AppIconThemeServices;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "LENOVO_LAUNCHER_THEME_PATH"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleThemeChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "themePath"    # Ljava/lang/String;
    .param p2, "themeId"    # Ljava/lang/String;

    .prologue
    .line 309
    const/4 v1, 0x0

    .line 310
    .local v1, "mIsChangeSuccess":Z
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lvibeui/content/res/AppIconThemeServices;->setIsReadyState(Z)V

    .line 311
    iget-object v4, p0, Lvibeui/content/res/AppIconThemeServices;->mZipFileLock:Ljava/lang/Object;

    monitor-enter v4

    .line 313
    :try_start_0
    iget-object v3, p0, Lvibeui/content/res/AppIconThemeServices;->mZipFile:Lvibeui/content/res/AppIconThemeServices$MyZipFile;

    if-eqz v3, :cond_0

    .line 314
    iget-object v3, p0, Lvibeui/content/res/AppIconThemeServices;->mZipFile:Lvibeui/content/res/AppIconThemeServices$MyZipFile;

    invoke-virtual {v3}, Lvibeui/content/res/AppIconThemeServices$MyZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    :cond_0
    :goto_0
    const/4 v3, 0x0

    :try_start_1
    iput-object v3, p0, Lvibeui/content/res/AppIconThemeServices;->mZipFile:Lvibeui/content/res/AppIconThemeServices$MyZipFile;

    .line 321
    move-object v2, p1

    .line 322
    .local v2, "ziPath":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 323
    const/4 v3, 0x0

    iput-object v3, p0, Lvibeui/content/res/AppIconThemeServices;->mPath:Ljava/lang/String;

    .line 334
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    if-eqz v1, :cond_1

    .line 336
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lvibeui/content/res/AppIconThemeServices$2;

    invoke-direct {v4, p0, p1, p2}, Lvibeui/content/res/AppIconThemeServices$2;-><init>(Lvibeui/content/res/AppIconThemeServices;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "parseIconMapFile"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 348
    :cond_1
    return-void

    .line 326
    :cond_2
    :try_start_2
    iput-object v2, p0, Lvibeui/content/res/AppIconThemeServices;->mPath:Ljava/lang/String;

    .line 327
    new-instance v3, Lvibeui/content/res/AppIconThemeServices$MyZipFile;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lvibeui/content/res/AppIconThemeServices;->mPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p0, v5}, Lvibeui/content/res/AppIconThemeServices$MyZipFile;-><init>(Lvibeui/content/res/AppIconThemeServices;Ljava/io/File;)V

    iput-object v3, p0, Lvibeui/content/res/AppIconThemeServices;->mZipFile:Lvibeui/content/res/AppIconThemeServices$MyZipFile;

    .line 328
    const/4 v1, 0x1

    .line 329
    invoke-direct {p0, p1, p2}, Lvibeui/content/res/AppIconThemeServices;->setThemeValueToSetting(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 334
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "ziPath":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 316
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private isReady()Z
    .locals 2

    .prologue
    .line 97
    iget-object v1, p0, Lvibeui/content/res/AppIconThemeServices;->mIsReadyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    iget-boolean v0, p0, Lvibeui/content/res/AppIconThemeServices;->mIsReady:Z

    monitor-exit v1

    return v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final parseIconMapFile()V
    .locals 17

    .prologue
    .line 524
    const/4 v2, 0x0

    .line 525
    .local v2, "fileInputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v14, v0, Lvibeui/content/res/AppIconThemeServices;->mZipFileLock:Ljava/lang/Object;

    monitor-enter v14

    .line 526
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lvibeui/content/res/AppIconThemeServices;->mZipFile:Lvibeui/content/res/AppIconThemeServices$MyZipFile;

    if-nez v13, :cond_1

    .line 527
    monitor-exit v14

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lvibeui/content/res/AppIconThemeServices;->mZipFile:Lvibeui/content/res/AppIconThemeServices$MyZipFile;

    const-string v15, "res/xml/icons.xml"

    invoke-virtual {v13, v15}, Lvibeui/content/res/AppIconThemeServices$MyZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 530
    .local v12, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v12, :cond_2

    .line 532
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lvibeui/content/res/AppIconThemeServices;->mZipFile:Lvibeui/content/res/AppIconThemeServices$MyZipFile;

    invoke-virtual {v13, v12}, Lvibeui/content/res/AppIconThemeServices$MyZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 533
    const-string v13, "AppIconThemeServices"

    const-string v15, "parseIconMapFile"

    const-string v16, "get icons.xml from zipFile"

    move-object/from16 v0, v16

    invoke-static {v13, v15, v0}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v2

    .line 538
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .local v3, "fileInputStream":Ljava/io/InputStream;
    :goto_1
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 539
    if-nez v3, :cond_b

    .line 540
    invoke-direct/range {p0 .. p0}, Lvibeui/content/res/AppIconThemeServices;->getIconsFile()Ljava/io/File;

    move-result-object v5

    .line 541
    .local v5, "iconsFile":Ljava/io/File;
    if-nez v5, :cond_3

    move-object v2, v3

    .line 542
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 534
    .end local v5    # "iconsFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 535
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v3, v2

    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_1

    .line 538
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .end local v12    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v13

    :goto_2
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v13

    .line 545
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v5    # "iconsFile":Ljava/io/File;
    .restart local v12    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_3
    :try_start_4
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 546
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    :try_start_5
    const-string v13, "AppIconThemeServices"

    const-string v14, "parseIconMapFile"

    const-string v15, "get icons.xml from /system/etc/icons.xml"

    invoke-static {v13, v14, v15}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 551
    .end local v5    # "iconsFile":Ljava/io/File;
    :goto_3
    if-eqz v2, :cond_0

    .line 554
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 555
    .local v4, "iconMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 557
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v13, 0x0

    :try_start_6
    invoke-interface {v8, v2, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 561
    :cond_4
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .local v11, "type":I
    const/4 v13, 0x2

    if-eq v11, v13, :cond_5

    const/4 v13, 0x1

    if-ne v11, v13, :cond_4

    .line 565
    :cond_5
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    .line 567
    .local v7, "outerDepth":I
    :cond_6
    :goto_4
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    const/4 v13, 0x1

    if-eq v11, v13, :cond_9

    const/4 v13, 0x3

    if-ne v11, v13, :cond_7

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-le v13, v7, :cond_9

    .line 569
    :cond_7
    const/4 v13, 0x3

    if-eq v11, v13, :cond_6

    const/4 v13, 0x4

    if-eq v11, v13, :cond_6

    .line 573
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 575
    .local v9, "tagName":Ljava/lang/String;
    const-string v13, "drawable"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 576
    const/4 v13, 0x0

    const-string v14, "name"

    invoke-interface {v8, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 577
    .local v6, "name":Ljava/lang/String;
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .line 578
    const/4 v13, 0x4

    if-ne v11, v13, :cond_6

    .line 579
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    .line 580
    .local v10, "text":Ljava/lang/String;
    if-eqz v10, :cond_6

    const-string v13, "@drawable/"

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 581
    const/16 v13, 0xa

    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    .line 587
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "outerDepth":I
    .end local v9    # "tagName":Ljava/lang/String;
    .end local v10    # "text":Ljava/lang/String;
    .end local v11    # "type":I
    :catch_1
    move-exception v1

    .line 588
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 590
    if-eqz v2, :cond_8

    .line 592
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 598
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lvibeui/content/res/AppIconThemeServices;->updateThemesMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 547
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .end local v4    # "iconMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v5    # "iconsFile":Ljava/io/File;
    :catch_2
    move-exception v1

    move-object v2, v3

    .line 548
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    :goto_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 590
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "iconsFile":Ljava/io/File;
    .restart local v4    # "iconMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "outerDepth":I
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "type":I
    :cond_9
    if-eqz v2, :cond_8

    .line 592
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_5

    .line 593
    :catch_3
    move-exception v1

    .line 594
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 593
    .end local v7    # "outerDepth":I
    .end local v11    # "type":I
    .local v1, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 594
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 590
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v13

    if-eqz v2, :cond_a

    .line 592
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 595
    :cond_a
    :goto_7
    throw v13

    .line 593
    :catch_5
    move-exception v1

    .line 594
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 547
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "iconMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "iconsFile":Ljava/io/File;
    :catch_6
    move-exception v1

    goto :goto_6

    .line 538
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .end local v5    # "iconsFile":Ljava/io/File;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    :catchall_2
    move-exception v13

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto/16 :goto_2

    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    :cond_b
    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto/16 :goto_3
.end method

.method private parseLenovoThemeConfig()Ljava/lang/String;
    .locals 13

    .prologue
    .line 604
    invoke-direct {p0}, Lvibeui/content/res/AppIconThemeServices;->getLenovoThemeConfigFile()Ljava/io/File;

    move-result-object v4

    .line 605
    .local v4, "inFile":Ljava/io/File;
    if-nez v4, :cond_1

    .line 606
    const/4 v8, 0x0

    .line 655
    :cond_0
    :goto_0
    return-object v8

    .line 609
    :cond_1
    const/4 v2, 0x0

    .line 610
    .local v2, "fileInputStream":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 612
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .local v3, "fileInputStream":Ljava/io/InputStream;
    const/4 v11, 0x0

    :try_start_1
    invoke-interface {v7, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 618
    :cond_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .local v10, "type":I
    const/4 v11, 0x2

    if-eq v10, v11, :cond_3

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 622
    :cond_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 624
    .local v6, "outerDepth":I
    :cond_4
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_6

    const/4 v11, 0x3

    if-ne v10, v11, :cond_5

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v6, :cond_6

    .line 626
    :cond_5
    const/4 v11, 0x3

    if-eq v10, v11, :cond_4

    const/4 v11, 0x4

    if-eq v10, v11, :cond_4

    .line 630
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 632
    .local v9, "tagName":Ljava/lang/String;
    const-string v11, "category"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 633
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v7, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 634
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_4

    const-string v11, "launcher"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 635
    const/4 v11, 0x0

    const-string v12, "file"

    invoke-interface {v7, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 636
    .local v8, "path":Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "defResId"

    invoke-interface {v7, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, "defResId":Ljava/lang/String;
    invoke-direct {p0, v8, v0}, Lvibeui/content/res/AppIconThemeServices;->setThemeValueToSetting(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 647
    if-eqz v3, :cond_0

    .line 649
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 650
    :catch_0
    move-exception v1

    .line 651
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 647
    .end local v0    # "defResId":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "tagName":Ljava/lang/String;
    :cond_6
    if-eqz v3, :cond_9

    .line 649
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v3

    .line 655
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .end local v6    # "outerDepth":I
    .end local v10    # "type":I
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    :cond_7
    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    .line 650
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v6    # "outerDepth":I
    .restart local v10    # "type":I
    :catch_1
    move-exception v1

    .line 651
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 652
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_1

    .line 644
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "outerDepth":I
    .end local v10    # "type":I
    :catch_2
    move-exception v11

    .line 647
    :goto_2
    if-eqz v2, :cond_7

    .line 649
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 650
    :catch_3
    move-exception v1

    .line 651
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 647
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_3
    if-eqz v2, :cond_8

    .line 649
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 652
    :cond_8
    :goto_4
    throw v11

    .line 650
    :catch_4
    move-exception v1

    .line 651
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 647
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v11

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 644
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    :catch_5
    move-exception v11

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_2

    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .restart local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v6    # "outerDepth":I
    .restart local v10    # "type":I
    :cond_9
    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .restart local v2    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private registerThemeChangedReceiver()V
    .locals 3

    .prologue
    .line 281
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 282
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "action_themecenter_themechange_lelauncher"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lvibeui/content/res/AppIconThemeServices;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lvibeui/content/res/AppIconThemeServices;->mThemeCenterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 286
    return-void
.end method

.method private sendSwitchCompleted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "themePath"    # Ljava/lang/String;
    .param p2, "themeId"    # Ljava/lang/String;

    .prologue
    .line 354
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 355
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "appiconintegration.action.UPDATE_THEME_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string v1, "ThemePath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const-string v1, "ThemeResId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    iget-object v1, p0, Lvibeui/content/res/AppIconThemeServices;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 359
    return-void
.end method

.method private setIsReadyState(Z)V
    .locals 2
    .param p1, "isReady"    # Z

    .prologue
    .line 88
    iget-object v1, p0, Lvibeui/content/res/AppIconThemeServices;->mIsReadyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    iput-boolean p1, p0, Lvibeui/content/res/AppIconThemeServices;->mIsReady:Z

    .line 90
    monitor-exit v1

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setThemeValueToSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 516
    iget-object v1, p0, Lvibeui/content/res/AppIconThemeServices;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 517
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "LENOVO_LAUNCHER_THEME_PATH"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 518
    const-string v1, "LENOVO_LAUNCHER_THEME_ID"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 519
    return-void
.end method

.method private final updateThemesMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lvibeui/content/res/AppIconThemeServices;->mIconMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v0, p0, Lvibeui/content/res/AppIconThemeServices;->mIconMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 108
    iget-object v0, p0, Lvibeui/content/res/AppIconThemeServices;->mIconMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 109
    monitor-exit v1

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getThemeIconInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "inPackageName"    # Ljava/lang/String;
    .param p2, "inResoucePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 130
    const-string v2, "AppIconThemeServices"

    const-string v3, "getThemeIconInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inPackageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",inResoucePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lvibeui/content/res/AppIconThemeServices;->isReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-object v1

    .line 135
    :cond_1
    if-eqz p1, :cond_2

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 138
    :cond_2
    if-eqz p2, :cond_3

    .line 139
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 141
    :cond_3
    invoke-direct {p0, p1, p2}, Lvibeui/content/res/AppIconThemeServices;->getThemeFileInner(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lvibeui/content/res/AppIconThemeServices;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getThemeIconInfoByFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 154
    const-string v9, "AppIconThemeServices"

    const-string v10, "getThemeIconInfo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fileName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lvibeui/content/res/AppIconThemeServices;->isReady()Z

    move-result v9

    if-nez v9, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-object v8

    .line 158
    :cond_1
    const/4 v6, 0x0

    .line 160
    .local v6, "path":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lvibeui/content/res/AppIconThemeServices;->getMapFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 161
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 162
    const/4 v5, 0x0

    .line 163
    .local v5, "outDensity":I
    const/4 v7, 0x0

    .line 164
    .local v7, "zipEntry":Ljava/util/zip/ZipEntry;
    const/4 v2, 0x0

    .line 165
    .local v2, "filePath":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    sget-object v9, Lvibeui/content/res/AppIconThemeServices;->sOptimalDensities:[I

    array-length v9, v9

    if-ge v3, v9, :cond_2

    .line 166
    sget-object v9, Lvibeui/content/res/AppIconThemeServices;->sOptimalDensities:[I

    aget v9, v9, v3

    invoke-static {v9}, Lvibeui/content/res/ThemeDensityUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "densitySuffix":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "res/drawable"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "name":Ljava/lang/String;
    iget-object v10, p0, Lvibeui/content/res/AppIconThemeServices;->mZipFileLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :try_start_1
    iget-object v9, p0, Lvibeui/content/res/AppIconThemeServices;->mZipFile:Lvibeui/content/res/AppIconThemeServices$MyZipFile;

    if-nez v9, :cond_3

    .line 170
    monitor-exit v10

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 180
    .end local v0    # "densitySuffix":Ljava/lang/String;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "outDensity":I
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 186
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lvibeui/content/res/AppIconThemeServices;->mPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 172
    .restart local v0    # "densitySuffix":Ljava/lang/String;
    .restart local v2    # "filePath":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "outDensity":I
    .restart local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_3
    :try_start_3
    iget-object v9, p0, Lvibeui/content/res/AppIconThemeServices;->mZipFile:Lvibeui/content/res/AppIconThemeServices$MyZipFile;

    invoke-virtual {v9, v4}, Lvibeui/content/res/AppIconThemeServices$MyZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v7

    .line 173
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    if-eqz v7, :cond_4

    .line 175
    :try_start_4
    sget-object v9, Lvibeui/content/res/AppIconThemeServices;->sOptimalDensities:[I

    aget v5, v9, v3

    .line 176
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v6

    .line 177
    goto :goto_2

    .line 165
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 458
    iget-wide v0, p0, Lvibeui/content/res/AppIconThemeServices;->mTimeStamp:J

    return-wide v0
.end method

.method public systemReady()V
    .locals 6

    .prologue
    .line 423
    invoke-direct {p0}, Lvibeui/content/res/AppIconThemeServices;->getThemZipFilePath()Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, "ziPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    :goto_0
    return-void

    .line 428
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lvibeui/content/res/AppIconThemeServices;->setIsReadyState(Z)V

    .line 429
    iput-object v1, p0, Lvibeui/content/res/AppIconThemeServices;->mPath:Ljava/lang/String;

    .line 431
    :try_start_0
    iget-object v3, p0, Lvibeui/content/res/AppIconThemeServices;->mZipFileLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :try_start_1
    iget-object v2, p0, Lvibeui/content/res/AppIconThemeServices;->mZipFile:Lvibeui/content/res/AppIconThemeServices$MyZipFile;

    if-eqz v2, :cond_1

    .line 433
    iget-object v2, p0, Lvibeui/content/res/AppIconThemeServices;->mZipFile:Lvibeui/content/res/AppIconThemeServices$MyZipFile;

    invoke-virtual {v2}, Lvibeui/content/res/AppIconThemeServices$MyZipFile;->close()V

    .line 434
    const/4 v2, 0x0

    iput-object v2, p0, Lvibeui/content/res/AppIconThemeServices;->mZipFile:Lvibeui/content/res/AppIconThemeServices$MyZipFile;

    .line 436
    :cond_1
    new-instance v2, Lvibeui/content/res/AppIconThemeServices$MyZipFile;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lvibeui/content/res/AppIconThemeServices;->mPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, p0, v4}, Lvibeui/content/res/AppIconThemeServices$MyZipFile;-><init>(Lvibeui/content/res/AppIconThemeServices;Ljava/io/File;)V

    iput-object v2, p0, Lvibeui/content/res/AppIconThemeServices;->mZipFile:Lvibeui/content/res/AppIconThemeServices$MyZipFile;

    .line 437
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    :goto_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lvibeui/content/res/AppIconThemeServices$3;

    invoke-direct {v3, p0}, Lvibeui/content/res/AppIconThemeServices$3;-><init>(Lvibeui/content/res/AppIconThemeServices;)V

    const-string v4, "parseIconMapFile"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 450
    invoke-direct {p0}, Lvibeui/content/res/AppIconThemeServices;->registerThemeChangedReceiver()V

    goto :goto_0

    .line 437
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
