.class public Lvibeui/content/res/ExtraResources;
.super Ljava/lang/Object;
.source "ExtraResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvibeui/content/res/ExtraResources$ResourceName;
    }
.end annotation


# static fields
.field private static final LOG_CLASS_NAME:Ljava/lang/String; = "ExtraResources"

.field private static final THEME_ICON_BG_NAME:[Ljava/lang/String;

.field private static mAppIconThemeService:Lvibeui/content/res/IAppIconThemeService;

.field private static mAppIconThemeServiceLock:Ljava/lang/Object;

.field private static mThemeBgBitmap:[Landroid/graphics/Bitmap;

.field private static mTimeStamp:J

.field private static final sCanvas:Landroid/graphics/Canvas;

.field private static sIconCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lvibeui/content/res/ExtraResources$ResourceName;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sIconHeight:I

.field private static final sIconPaint:Landroid/graphics/Paint;

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lvibeui/content/res/ExtraResources;->mAppIconThemeServiceLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lvibeui/content/res/ExtraResources;->sCanvas:Landroid/graphics/Canvas;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lvibeui/content/res/ExtraResources;->sOldBounds:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lvibeui/content/res/ExtraResources;->sIconPaint:Landroid/graphics/Paint;

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/Bitmap;

    aput-object v1, v0, v3

    aput-object v1, v0, v4

    aput-object v1, v0, v5

    sput-object v0, Lvibeui/content/res/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "theme_appbg"

    aput-object v1, v0, v3

    const-string v1, "theme_appfg"

    aput-object v1, v0, v4

    const-string v1, "theme_appmask"

    aput-object v1, v0, v5

    sput-object v0, Lvibeui/content/res/ExtraResources;->THEME_ICON_BG_NAME:[Ljava/lang/String;

    .line 50
    sput v2, Lvibeui/content/res/ExtraResources;->sIconWidth:I

    .line 51
    sput v2, Lvibeui/content/res/ExtraResources;->sIconHeight:I

    .line 54
    const-wide/16 v0, -0x1

    sput-wide v0, Lvibeui/content/res/ExtraResources;->mTimeStamp:J

    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lvibeui/content/res/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    return-void
.end method

.method private static checkThemeChange()V
    .locals 7

    .prologue
    .line 203
    sget-object v4, Lvibeui/content/res/ExtraResources;->mAppIconThemeService:Lvibeui/content/res/IAppIconThemeService;

    if-nez v4, :cond_1

    .line 222
    .local v2, "timeStamp":J
    :cond_0
    :goto_0
    return-void

    .line 207
    .end local v2    # "timeStamp":J
    :cond_1
    :try_start_0
    sget-object v4, Lvibeui/content/res/ExtraResources;->mAppIconThemeService:Lvibeui/content/res/IAppIconThemeService;

    invoke-interface {v4}, Lvibeui/content/res/IAppIconThemeService;->getTimeStamp()J

    move-result-wide v2

    .line 208
    .restart local v2    # "timeStamp":J
    sget-wide v4, Lvibeui/content/res/ExtraResources;->mTimeStamp:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 209
    const-string v4, "ExtraResources"

    const-string v5, "checkThemeChange"

    const-string v6, "Theme has changed..."

    invoke-static {v4, v5, v6}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v4, Lvibeui/content/res/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 211
    sget-object v4, Lvibeui/content/res/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v1

    if-eqz v4, :cond_2

    .line 212
    sget-object v4, Lvibeui/content/res/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 213
    sget-object v4, Lvibeui/content/res/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 210
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 216
    :cond_3
    invoke-static {}, Lvibeui/content/res/ExtraResources;->cleanCachedIcon()V

    .line 217
    sput-wide v2, Lvibeui/content/res/ExtraResources;->mTimeStamp:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static cleanCachedIcon()V
    .locals 4

    .prologue
    .line 492
    sget-object v1, Lvibeui/content/res/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 493
    :try_start_0
    sget-object v0, Lvibeui/content/res/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 494
    const-string v0, "ExtraResources"

    const-string v2, "cleanCachedIcon"

    const-string v3, "clear cache.."

    invoke-static {v0, v2, v3}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    monitor-exit v1

    .line 496
    return-void

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static creatThemeIconBgBitmapIfNeed()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 147
    sget-object v13, Lvibeui/content/res/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    if-eqz v13, :cond_1

    sget-object v13, Lvibeui/content/res/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    aget-object v13, v13, v14

    if-eqz v13, :cond_1

    .line 198
    .local v1, "i":I
    .local v9, "success":Z
    :cond_0
    :goto_0
    return-void

    .line 150
    .end local v1    # "i":I
    .end local v9    # "success":Z
    :cond_1
    const/4 v9, 0x1

    .line 151
    .restart local v9    # "success":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    sget-object v13, Lvibeui/content/res/ExtraResources;->THEME_ICON_BG_NAME:[Ljava/lang/String;

    array-length v13, v13

    if-ge v1, v13, :cond_0

    .line 152
    sget-object v13, Lvibeui/content/res/ExtraResources;->THEME_ICON_BG_NAME:[Ljava/lang/String;

    aget-object v3, v13, v1

    .line 153
    .local v3, "name":Ljava/lang/String;
    const/4 v8, 0x0

    .line 155
    .local v8, "result":Ljava/lang/String;
    :try_start_0
    sget-object v13, Lvibeui/content/res/ExtraResources;->mAppIconThemeService:Lvibeui/content/res/IAppIconThemeService;

    invoke-interface {v13, v3}, Lvibeui/content/res/IAppIconThemeService;->getThemeIconInfoByFileName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 161
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 162
    const-string v13, ";"

    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "out":[Ljava/lang/String;
    array-length v13, v4

    const/4 v14, 0x3

    if-eq v13, v14, :cond_2

    .line 164
    const/4 v9, 0x0

    .line 165
    goto :goto_0

    .line 156
    .end local v4    # "out":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    const/4 v9, 0x0

    .line 159
    goto :goto_0

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "out":[Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .line 168
    .local v2, "ins":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 170
    .local v11, "zipFile":Ljava/util/zip/ZipFile;
    const/4 v13, 0x0

    :try_start_1
    aget-object v7, v4, v13

    .line 171
    .local v7, "outZipPath":Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v6, v4, v13

    .line 172
    .local v6, "outFilePath":Ljava/lang/String;
    const/4 v13, 0x2

    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 174
    .local v5, "outDensity":I
    new-instance v12, Ljava/util/zip/ZipFile;

    invoke-direct {v12, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .end local v11    # "zipFile":Ljava/util/zip/ZipFile;
    .local v12, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_2
    invoke-virtual {v12, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v10

    .line 176
    .local v10, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v10, :cond_3

    .line 177
    invoke-virtual {v12, v10}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 178
    sget-object v13, Lvibeui/content/res/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v14

    aput-object v14, v13, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 186
    :cond_3
    if-eqz v2, :cond_4

    .line 187
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 191
    :cond_4
    :goto_2
    if-eqz v12, :cond_5

    .line 192
    :try_start_4
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 151
    .end local v2    # "ins":Ljava/io/InputStream;
    .end local v4    # "out":[Ljava/lang/String;
    .end local v5    # "outDensity":I
    .end local v6    # "outFilePath":Ljava/lang/String;
    .end local v7    # "outZipPath":Ljava/lang/String;
    .end local v10    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 180
    .restart local v2    # "ins":Ljava/io/InputStream;
    .restart local v4    # "out":[Ljava/lang/String;
    .restart local v11    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v0

    .line 181
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 182
    const/4 v9, 0x0

    .line 186
    if-eqz v2, :cond_6

    .line 187
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 191
    :cond_6
    :goto_5
    if-eqz v11, :cond_0

    .line 192
    :try_start_7
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 193
    :catch_2
    move-exception v13

    goto :goto_0

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    .line 186
    :goto_6
    if-eqz v2, :cond_7

    .line 187
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 191
    :cond_7
    :goto_7
    if-eqz v11, :cond_8

    .line 192
    :try_start_9
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 194
    :cond_8
    :goto_8
    throw v13

    .line 188
    .end local v11    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v5    # "outDensity":I
    .restart local v6    # "outFilePath":Ljava/lang/String;
    .restart local v7    # "outZipPath":Ljava/lang/String;
    .restart local v10    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v13

    goto :goto_2

    .line 193
    :catch_4
    move-exception v13

    goto :goto_3

    .line 188
    .end local v5    # "outDensity":I
    .end local v6    # "outFilePath":Ljava/lang/String;
    .end local v7    # "outZipPath":Ljava/lang/String;
    .end local v10    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v11    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v13

    goto :goto_5

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v14

    goto :goto_7

    .line 193
    :catch_7
    move-exception v14

    goto :goto_8

    .line 185
    .end local v11    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v5    # "outDensity":I
    .restart local v6    # "outFilePath":Ljava/lang/String;
    .restart local v7    # "outZipPath":Ljava/lang/String;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v13

    move-object v11, v12

    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v11    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_6

    .line 180
    .end local v11    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_8
    move-exception v0

    move-object v11, v12

    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v11    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_4
.end method

.method private static createAppIconThemeServicesIfNeeded()V
    .locals 6

    .prologue
    .line 62
    sget-object v2, Lvibeui/content/res/ExtraResources;->mAppIconThemeServiceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 63
    :try_start_0
    sget-object v1, Lvibeui/content/res/ExtraResources;->mAppIconThemeService:Lvibeui/content/res/IAppIconThemeService;

    if-eqz v1, :cond_0

    .line 64
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    const-string v1, "AppIconThemeServices"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvibeui/content/res/IAppIconThemeService$Stub;->asInterface(Landroid/os/IBinder;)Lvibeui/content/res/IAppIconThemeService;

    move-result-object v1

    sput-object v1, Lvibeui/content/res/ExtraResources;->mAppIconThemeService:Lvibeui/content/res/IAppIconThemeService;

    .line 69
    sget-object v1, Lvibeui/content/res/ExtraResources;->mAppIconThemeService:Lvibeui/content/res/IAppIconThemeService;

    invoke-interface {v1}, Lvibeui/content/res/IAppIconThemeService;->getTimeStamp()J

    move-result-wide v4

    sput-wide v4, Lvibeui/content/res/ExtraResources;->mTimeStamp:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 71
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "ExtraResources"

    const-string v3, "createAppIconThemeServicesIfNeeded"

    const-string v4, "failed"

    invoke-static {v1, v3, v4}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    const/4 v1, 0x0

    sput-object v1, Lvibeui/content/res/ExtraResources;->mAppIconThemeService:Lvibeui/content/res/IAppIconThemeService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private static createIconBitmap(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 27
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "bg"    # Landroid/graphics/Bitmap;
    .param p3, "fg"    # Landroid/graphics/Bitmap;
    .param p4, "mask"    # Landroid/graphics/Bitmap;

    .prologue
    .line 253
    sget-object v23, Lvibeui/content/res/ExtraResources;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v23

    .line 254
    :try_start_0
    const-string v22, "ExtraResources"

    const-string v24, "createIconBitmap"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "icon="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget v22, Lvibeui/content/res/ExtraResources;->sIconWidth:I

    const/16 v24, -0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 256
    invoke-static/range {p0 .. p0}, Lvibeui/content/res/ExtraResources;->initStatics(Landroid/content/res/Resources;)V

    .line 259
    :cond_0
    sget v21, Lvibeui/content/res/ExtraResources;->sIconWidth:I

    .line 260
    .local v21, "width":I
    sget v10, Lvibeui/content/res/ExtraResources;->sIconHeight:I

    .line 262
    .local v10, "height":I
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 263
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v14, v0

    .line 264
    .local v14, "painter":Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 265
    invoke-virtual {v14, v10}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 274
    .end local v14    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    .line 275
    .local v17, "sourceWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v16

    .line 276
    .local v16, "sourceHeight":I
    if-lez v17, :cond_3

    if-lez v16, :cond_3

    .line 277
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v15, v22, v24

    .line 278
    .local v15, "ratio":F
    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_e

    .line 279
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v22, v22, v15

    move/from16 v0, v22

    float-to-int v10, v0

    .line 283
    :cond_2
    :goto_1
    const/4 v13, 0x0

    .line 284
    .local v13, "lessBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v22, v0

    if-eqz v22, :cond_f

    .line 285
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v22

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v24

    invoke-static {v0, v1, v10, v2}, Lvibeui/content/res/ExtraResources;->lessenBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 288
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    .local v11, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 p1, v11

    .line 297
    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v13    # "lessBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "ratio":F
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_3
    :goto_2
    sget v19, Lvibeui/content/res/ExtraResources;->sIconWidth:I

    .line 299
    .local v19, "textureWidth":I
    sget v18, Lvibeui/content/res/ExtraResources;->sIconHeight:I

    .line 302
    .local v18, "textureHeight":I
    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move/from16 v1, v18

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 304
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    sget-object v8, Lvibeui/content/res/ExtraResources;->sCanvas:Landroid/graphics/Canvas;

    .line 305
    .local v8, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v8, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 307
    sub-int v22, v19, v21

    div-int/lit8 v12, v22, 0x2

    .line 308
    .local v12, "left":I
    sub-int v22, v18, v10

    div-int/lit8 v20, v22, 0x2

    .line 309
    .local v20, "top":I
    sget-object v22, Lvibeui/content/res/ExtraResources;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 310
    add-int v22, v12, v21

    add-int v24, v20, v10

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v24

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :try_start_1
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    move/from16 v22, v0

    if-eqz v22, :cond_10

    .line 318
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/GradientDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    .local v4, "bd":Landroid/graphics/drawable/BitmapDrawable;
    :goto_3
    :try_start_2
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 332
    .local v7, "bm":Landroid/graphics/Bitmap;
    const-string v22, "ExtraResources"

    const-string v24, "createIconBitmap"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "bm="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v22, "ExtraResources"

    const-string v24, "createIconBitmap"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "bm.getHeight="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v22, "ExtraResources"

    const-string v24, "createIconBitmap"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "bm.getWidth="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    int-to-float v0, v12

    move/from16 v22, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v8, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 336
    if-eqz p4, :cond_6

    .line 337
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 339
    :cond_4
    const-string v22, "ExtraResources"

    const-string v24, "createIconBitmap"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mask != null mask = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/16 v22, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v19

    move/from16 v2, v18

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 343
    :cond_5
    sget-object v22, Lvibeui/content/res/ExtraResources;->sIconPaint:Landroid/graphics/Paint;

    new-instance v24, Landroid/graphics/PorterDuffXfermode;

    sget-object v25, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v24 .. v25}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 345
    const/16 v22, 0x0

    const/16 v24, 0x0

    sget-object v25, Lvibeui/content/res/ExtraResources;->sIconPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p4

    move/from16 v1, v22

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 347
    :cond_6
    sget-object v22, Lvibeui/content/res/ExtraResources;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 348
    if-eqz p2, :cond_9

    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 351
    :cond_7
    const-string v22, "ExtraResources"

    const-string v24, "createIconBitmap"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "bg != null bg = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const/16 v22, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v18

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 355
    :cond_8
    sget-object v22, Lvibeui/content/res/ExtraResources;->sIconPaint:Landroid/graphics/Paint;

    new-instance v24, Landroid/graphics/PorterDuffXfermode;

    sget-object v25, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v24 .. v25}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 357
    const/16 v22, 0x0

    const/16 v24, 0x0

    sget-object v25, Lvibeui/content/res/ExtraResources;->sIconPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 359
    :cond_9
    if-eqz p3, :cond_c

    .line 360
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v18

    if-eq v0, v1, :cond_b

    .line 362
    :cond_a
    const-string v22, "ExtraResources"

    const-string v24, "createIconBitmap"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "fg != null fg = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    move/from16 v2, v18

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 368
    :cond_b
    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 372
    :cond_c
    const-string v22, "ExtraResources"

    const-string v24, "createIconBitmap"

    const-string v25, "canvas.setBitmap(null); had removed"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    monitor-exit v23

    .end local v4    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "bm":Landroid/graphics/Bitmap;
    :goto_4
    return-object v5

    .line 266
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    .end local v12    # "left":I
    .end local v16    # "sourceHeight":I
    .end local v17    # "sourceWidth":I
    .end local v18    # "textureHeight":I
    .end local v19    # "textureWidth":I
    .end local v20    # "top":I
    :cond_d
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 268
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v6, v0

    .line 269
    .local v6, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 270
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v22

    if-nez v22, :cond_1

    .line 271
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_0

    .line 375
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v10    # "height":I
    .end local v21    # "width":I
    :catchall_0
    move-exception v22

    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v22

    .line 280
    .restart local v10    # "height":I
    .restart local v15    # "ratio":F
    .restart local v16    # "sourceHeight":I
    .restart local v17    # "sourceWidth":I
    .restart local v21    # "width":I
    :cond_e
    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 281
    int-to-float v0, v10

    move/from16 v22, v0

    mul-float v22, v22, v15

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    goto/16 :goto_1

    .line 290
    .restart local v13    # "lessBitmap":Landroid/graphics/Bitmap;
    :cond_f
    :try_start_3
    invoke-static/range {p1 .. p1}, Lvibeui/content/res/ExtraResources;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v22

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v24

    invoke-static {v0, v1, v10, v2}, Lvibeui/content/res/ExtraResources;->lessenBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 292
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v11    # "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 p1, v11

    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 321
    .end local v13    # "lessBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "ratio":F
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "canvas":Landroid/graphics/Canvas;
    .restart local v12    # "left":I
    .restart local v18    # "textureHeight":I
    .restart local v19    # "textureWidth":I
    .restart local v20    # "top":I
    :cond_10
    :try_start_4
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v4, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v4    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    goto/16 :goto_3

    .line 323
    .end local v4    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v9

    .line 324
    .local v9, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    const/4 v5, 0x0

    monitor-exit v23
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 401
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 402
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 404
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {p0, v0, v1}, Lvibeui/content/res/ExtraResources;->drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 410
    const/4 v0, 0x0

    .line 413
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v4, v5, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 419
    const/4 v3, 0x1

    invoke-static {v0, p1, p2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 423
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 425
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 428
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 434
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :goto_1
    return-object v0

    .line 413
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    :catch_0
    move-exception v2

    .line 431
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static getCachedIcon(Lvibeui/content/res/ExtraResources$ResourceName;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "name"    # Lvibeui/content/res/ExtraResources$ResourceName;

    .prologue
    .line 437
    sget-object v3, Lvibeui/content/res/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 438
    :try_start_0
    const-string v2, "ExtraResources"

    const-string v4, "getCachedIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sIconCache.size() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lvibeui/content/res/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    sget-object v2, Lvibeui/content/res/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 440
    .local v1, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v1, :cond_1

    .line 441
    const-string v2, "ExtraResources"

    const-string v4, "getCachedIcon"

    const-string v5, "wr != null"

    invoke-static {v2, v4, v5}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 443
    .local v0, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_0

    .line 444
    const-string v2, "ExtraResources"

    const-string v4, "getCachedIcon"

    const-string v5, "state != null"

    invoke-static {v2, v4, v5}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    monitor-exit v3

    .line 464
    .end local v0    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_0
    return-object v2

    .line 454
    .restart local v0    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    sget-object v2, Lvibeui/content/res/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    .end local v0    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    monitor-exit v3

    .line 464
    const/4 v2, 0x0

    goto :goto_0

    .line 463
    .end local v1    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getDrawableFromLenovoTheme(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;
    .locals 18
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/TypedValue;

    .prologue
    .line 85
    invoke-static {}, Lvibeui/content/res/ExtraResources;->createAppIconThemeServicesIfNeeded()V

    .line 86
    sget-object v14, Lvibeui/content/res/ExtraResources;->mAppIconThemeService:Lvibeui/content/res/IAppIconThemeService;

    if-nez v14, :cond_1

    .line 87
    const-string v14, "ExtraResources"

    const-string v15, "getDrawableFromLenovoTheme"

    const-string v16, "mAppIconThemeService == null"

    invoke-static/range {v14 .. v16}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v2, 0x0

    .line 140
    :cond_0
    :goto_0
    return-object v2

    .line 93
    :cond_1
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "inResourcePath":Ljava/lang/String;
    const/4 v10, 0x0

    .line 96
    .local v10, "result":Ljava/lang/String;
    :try_start_0
    sget-object v14, Lvibeui/content/res/ExtraResources;->mAppIconThemeService:Lvibeui/content/res/IAppIconThemeService;

    move-object/from16 v0, p1

    invoke-interface {v14, v0, v4}, Lvibeui/content/res/IAppIconThemeService;->getThemeIconInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 102
    const-string v14, "ExtraResources"

    const-string v15, "getDrawableFromLenovoTheme"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "inResourcePath = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",result = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 105
    const-string v14, ";"

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, "out":[Ljava/lang/String;
    array-length v14, v6

    const/4 v15, 0x3

    if-eq v14, v15, :cond_2

    .line 107
    const/4 v2, 0x0

    goto :goto_0

    .line 98
    .end local v6    # "out":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 99
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    const/4 v2, 0x0

    goto :goto_0

    .line 109
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v6    # "out":[Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    .line 110
    .local v5, "ins":Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 112
    .local v12, "zipFile":Ljava/util/zip/ZipFile;
    const/4 v14, 0x0

    :try_start_1
    aget-object v9, v6, v14

    .line 113
    .local v9, "outZipPath":Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v8, v6, v14

    .line 114
    .local v8, "outFilePath":Ljava/lang/String;
    const/4 v14, 0x2

    aget-object v14, v6, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 116
    .local v7, "outDensity":I
    new-instance v13, Ljava/util/zip/ZipFile;

    invoke-direct {v13, v9}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .local v13, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_2
    invoke-virtual {v13, v8}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v11

    .line 118
    .local v11, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v11, :cond_4

    .line 119
    invoke-virtual {v13, v11}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 120
    move-object/from16 v0, p2

    iput v7, v0, Landroid/util/TypedValue;->density:I

    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v5, v4}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    .line 129
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_3

    .line 130
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 134
    :cond_3
    :goto_1
    if-eqz v13, :cond_0

    .line 135
    :try_start_4
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 136
    :catch_1
    move-exception v14

    goto/16 :goto_0

    .line 129
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    if-eqz v5, :cond_5

    .line 130
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 134
    :cond_5
    :goto_2
    if-eqz v13, :cond_6

    .line 135
    :try_start_6
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 140
    .end local v5    # "ins":Ljava/io/InputStream;
    .end local v6    # "out":[Ljava/lang/String;
    .end local v7    # "outDensity":I
    .end local v8    # "outFilePath":Ljava/lang/String;
    .end local v9    # "outZipPath":Ljava/lang/String;
    .end local v11    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v13    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_6
    :goto_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 125
    .restart local v5    # "ins":Ljava/io/InputStream;
    .restart local v6    # "out":[Ljava/lang/String;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v3

    .line 126
    .restart local v3    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 129
    if-eqz v5, :cond_7

    .line 130
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 134
    :cond_7
    :goto_5
    if-eqz v12, :cond_6

    .line 135
    :try_start_9
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    .line 136
    :catch_3
    move-exception v14

    goto :goto_3

    .line 128
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    .line 129
    :goto_6
    if-eqz v5, :cond_8

    .line 130
    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 134
    :cond_8
    :goto_7
    if-eqz v12, :cond_9

    .line 135
    :try_start_b
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 137
    :cond_9
    :goto_8
    throw v14

    .line 131
    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "outDensity":I
    .restart local v8    # "outFilePath":Ljava/lang/String;
    .restart local v9    # "outZipPath":Ljava/lang/String;
    .restart local v11    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v13    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v14

    goto :goto_1

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_5
    move-exception v14

    goto :goto_2

    .line 136
    :catch_6
    move-exception v14

    goto :goto_3

    .line 131
    .end local v7    # "outDensity":I
    .end local v8    # "outFilePath":Ljava/lang/String;
    .end local v9    # "outZipPath":Ljava/lang/String;
    .end local v11    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v13    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v3    # "e":Ljava/lang/Exception;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_7
    move-exception v14

    goto :goto_5

    .end local v3    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v15

    goto :goto_7

    .line 136
    :catch_9
    move-exception v15

    goto :goto_8

    .line 128
    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v7    # "outDensity":I
    .restart local v8    # "outFilePath":Ljava/lang/String;
    .restart local v9    # "outZipPath":Ljava/lang/String;
    .restart local v13    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v14

    move-object v12, v13

    .end local v13    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_6

    .line 125
    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v13    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_a
    move-exception v3

    move-object v12, v13

    .end local v13    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_4
.end method

.method public static getLenovoDrawable(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 16
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 503
    const-string v12, "ExtraResources"

    const-string v13, "getLenovoDrawable"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "packageName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 505
    .local v2, "costTime":J
    invoke-static {}, Lvibeui/content/res/ExtraResources;->checkThemeChange()V

    .line 506
    new-instance v6, Lvibeui/content/res/ExtraResources$ResourceName;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v6, v0, v1}, Lvibeui/content/res/ExtraResources$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 507
    .local v6, "name":Lvibeui/content/res/ExtraResources$ResourceName;
    invoke-static {v6}, Lvibeui/content/res/ExtraResources;->getCachedIcon(Lvibeui/content/res/ExtraResources$ResourceName;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 508
    .local v4, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    .line 511
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 512
    .local v10, "wasteTime":J
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 513
    .local v9, "value":Landroid/util/TypedValue;
    const/4 v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v9, v12}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 514
    if-eqz v9, :cond_0

    iget-object v12, v9, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v12, :cond_0

    .line 515
    iget-object v12, v9, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 516
    .local v7, "resourcePath":Ljava/lang/String;
    const-string v12, "ExtraResources"

    const-string v13, "getLenovoDrawable"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "resourcePath = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    .end local v7    # "resourcePath":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v10, v12, v10

    .line 519
    const-string v12, "ExtraResources"

    const-string v13, "getLenovoDrawable"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "from cache wasteTime = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v2, v12, v2

    .line 522
    const-string v12, "ExtraResources"

    const-string v13, "getLenovoDrawable"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "from cache costTime = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v4

    .line 542
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v10    # "wasteTime":J
    .local v5, "dr":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v5

    .line 525
    .end local v5    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v9    # "value":Landroid/util/TypedValue;
    .restart local v4    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 526
    .restart local v9    # "value":Landroid/util/TypedValue;
    const/4 v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v9, v12}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 527
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v9}, Lvibeui/content/res/ExtraResources;->getDrawableFromLenovoTheme(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/TypedValue;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 528
    if-nez v4, :cond_2

    .line 529
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 530
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lvibeui/content/res/ExtraResources;->getShapeDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 531
    .local v8, "shapeDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_2

    .line 532
    const/4 v4, 0x0

    .line 533
    move-object v4, v8

    .line 536
    .end local v8    # "shapeDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    const-string v12, "ExtraResources"

    const-string v13, "getLenovoDrawable"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "dr = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    if-eqz v4, :cond_3

    .line 538
    invoke-static {v6, v4}, Lvibeui/content/res/ExtraResources;->putCachedIcon(Lvibeui/content/res/ExtraResources$ResourceName;Landroid/graphics/drawable/Drawable;)V

    .line 540
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v2, v12, v2

    .line 541
    const-string v12, "ExtraResources"

    const-string v13, "getLenovoDrawable"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "normal costTime = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v4

    .line 542
    .end local v4    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private static getShapeDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 230
    if-nez p1, :cond_0

    .line 243
    :goto_0
    return-object v1

    .line 233
    :cond_0
    invoke-static {}, Lvibeui/content/res/ExtraResources;->createAppIconThemeServicesIfNeeded()V

    .line 234
    sget-object v2, Lvibeui/content/res/ExtraResources;->mAppIconThemeService:Lvibeui/content/res/IAppIconThemeService;

    if-nez v2, :cond_1

    .line 235
    const-string v2, "ExtraResources"

    const-string v3, "getShapeDrawable"

    const-string v4, "mAppIconThemeService == null"

    invoke-static {v2, v3, v4}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_1
    invoke-static {}, Lvibeui/content/res/ExtraResources;->creatThemeIconBgBitmapIfNeed()V

    .line 240
    sget-object v2, Lvibeui/content/res/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v3, Lvibeui/content/res/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    sget-object v4, Lvibeui/content/res/ExtraResources;->mThemeBgBitmap:[Landroid/graphics/Bitmap;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {p0, p1, v2, v3, v4}, Lvibeui/content/res/ExtraResources;->createIconBitmap(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 241
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 242
    .local v1, "db":Landroid/graphics/drawable/BitmapDrawable;
    const-string v2, "ExtraResources"

    const-string v3, "getShapeDrawable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "db = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static initStatics(Landroid/content/res/Resources;)V
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 246
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 248
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const/high16 v1, 0x42500000    # 52.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lvibeui/content/res/ExtraResources;->sIconHeight:I

    sput v1, Lvibeui/content/res/ExtraResources;->sIconWidth:I

    .line 249
    return-void
.end method

.method private static lessenBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "destWidth"    # I
    .param p2, "destHeight"    # I
    .param p3, "needRecycle"    # Z

    .prologue
    const/4 v1, 0x0

    .line 380
    if-nez p0, :cond_1

    .line 381
    const/4 v7, 0x0

    .line 398
    :cond_0
    :goto_0
    return-object v7

    .line 382
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 383
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 385
    .local v4, "h":I
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 386
    .local v9, "scaleWidth":F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 388
    .local v8, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 389
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 391
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 393
    .local v7, "resizeBitmap":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 395
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static putCachedIcon(Lvibeui/content/res/ExtraResources$ResourceName;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p0, "name"    # Lvibeui/content/res/ExtraResources$ResourceName;
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 468
    sget-object v1, Lvibeui/content/res/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 469
    :try_start_0
    sget-object v0, Lvibeui/content/res/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const-string v0, "ExtraResources"

    const-string v2, "putCachedIcon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packageName = Added cached drawable state for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    monitor-exit v1

    .line 473
    return-void

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static removeCachedIcon(Ljava/lang/String;)Z
    .locals 8
    .param p0, "packagename"    # Ljava/lang/String;

    .prologue
    .line 476
    const/4 v1, 0x0

    .line 477
    .local v1, "needCleanup":Z
    sget-object v4, Lvibeui/content/res/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 479
    :try_start_0
    sget-object v3, Lvibeui/content/res/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 480
    sget-object v3, Lvibeui/content/res/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvibeui/content/res/ExtraResources$ResourceName;

    .line 481
    .local v2, "nm":Lvibeui/content/res/ExtraResources$ResourceName;
    iget-object v3, v2, Lvibeui/content/res/ExtraResources$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 482
    const-string v3, "ExtraResources"

    const-string v5, "removeCachedIcon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing cached drawable for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lvibeui/content/res/LenovoAppIconThemeLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    sget-object v3, Lvibeui/content/res/ExtraResources;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 484
    const/4 v1, 0x1

    .line 479
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 487
    .end local v2    # "nm":Lvibeui/content/res/ExtraResources$ResourceName;
    :cond_1
    monitor-exit v4

    .line 488
    return v1

    .line 487
    .end local v0    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
