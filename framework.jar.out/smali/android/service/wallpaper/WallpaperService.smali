.class public abstract Landroid/service/wallpaper/WallpaperService;
.super Landroid/app/Service;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;,
        Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;,
        Landroid/service/wallpaper/WallpaperService$Engine;,
        Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field private static final DO_ATTACH:I = 0xa

.field private static final DO_DETACH:I = 0x14

.field private static final DO_SET_DESIRED_SIZE:I = 0x1e

.field private static final DO_SET_DISPLAY_PADDING:I = 0x28

.field private static final IMAGEWALLPAPER:Ljava/lang/String; = "com.android.systemui.ImageWallpaper"

.field private static final MSG_TOUCH_EVENT:I = 0x2738

.field private static final MSG_UPDATE_SURFACE:I = 0x2710

.field private static final MSG_VISIBILITY_CHANGED:I = 0x271a

.field private static final MSG_WALLPAPER_COMMAND:I = 0x2729

.field private static final MSG_WALLPAPER_OFFSETS:I = 0x2724

.field private static final MSG_WINDOW_MOVED:I = 0x2733

.field private static final MSG_WINDOW_RESIZED:I = 0x272e

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.wallpaper.WallpaperService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.service.wallpaper"

.field static final TAG:Ljava/lang/String; = "WallpaperService"

.field private static final VIDEOWALLPAPER:Ljava/lang/String; = "com.media.vlw.VideoLiveWallpaper"


# instance fields
.field private final mActiveEngines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/service/wallpaper/WallpaperService$Engine;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentWallpaper:Ljava/lang/String;

.field private mPerfService:Lcom/mediatek/perfservice/IPerfService;

.field private mPerfServiceHandle:I

.field private mPerfServiceinited:I

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mPerfService:Lcom/mediatek/perfservice/IPerfService;

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/wallpaper/WallpaperService;->mPerfServiceHandle:I

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/wallpaper/WallpaperService;->mPerfServiceinited:I

    .line 1285
    return-void
.end method

.method static synthetic access$200(Landroid/service/wallpaper/WallpaperService;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/service/wallpaper/WallpaperService;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService;->mutliCoreEnable(Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/service/wallpaper/WallpaperService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/service/wallpaper/WallpaperService;

    .prologue
    .line 89
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    return-object v0
.end method

.method private isSmartBookSupport()Z
    .locals 2

    .prologue
    .line 1349
    const-string/jumbo v0, "ro.mtk_smartbook_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private mutliCoreEnable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 1371
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;->perfServiceInit()V

    .line 1372
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mPerfService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/service/wallpaper/WallpaperService;->mPerfServiceHandle:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1373
    const-string v1, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mutliCore enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mPerfService:Lcom/mediatek/perfservice/IPerfService;

    iget v2, p0, Landroid/service/wallpaper/WallpaperService;->mPerfServiceHandle:I

    invoke-interface {v1, v2}, Lcom/mediatek/perfservice/IPerfService;->userEnable(I)V

    .line 1376
    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mPerfService:Lcom/mediatek/perfservice/IPerfService;

    iget v2, p0, Landroid/service/wallpaper/WallpaperService;->mPerfServiceHandle:I

    invoke-interface {v1, v2}, Lcom/mediatek/perfservice/IPerfService;->userDisable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1381
    :cond_1
    :goto_0
    return-void

    .line 1377
    :catch_0
    move-exception v0

    .line 1378
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: RemoteException in mutliCoreEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private perfServiceInit()V
    .locals 7

    .prologue
    .line 1353
    iget v2, p0, Landroid/service/wallpaper/WallpaperService;->mPerfServiceinited:I

    if-nez v2, :cond_1

    .line 1354
    const-string/jumbo v2, "mtk-perfservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1355
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 1356
    invoke-static {v0}, Lcom/mediatek/perfservice/IPerfService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/perfservice/IPerfService;

    move-result-object v2

    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService;->mPerfService:Lcom/mediatek/perfservice/IPerfService;

    .line 1357
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService;->mPerfService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v2, :cond_1

    .line 1359
    :try_start_0
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService;->mPerfService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v2, :cond_0

    .line 1360
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService;->mPerfService:Lcom/mediatek/perfservice/IPerfService;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/mediatek/perfservice/IPerfService;->userReg(IIII)I

    move-result v2

    iput v2, p0, Landroid/service/wallpaper/WallpaperService;->mPerfServiceHandle:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1364
    :cond_0
    :goto_0
    const/4 v2, 0x1

    iput v2, p0, Landroid/service/wallpaper/WallpaperService;->mPerfServiceinited:I

    .line 1368
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_1
    return-void

    .line 1361
    .restart local v0    # "b":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 1362
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERR: RemoteException in perfServiceInit:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1340
    const-string v2, "State of wallpaper "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1341
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1342
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/wallpaper/WallpaperService$Engine;

    .line 1343
    .local v0, "engine":Landroid/service/wallpaper/WallpaperService$Engine;
    const-string v2, "  Engine "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1344
    const-string v2, "    "

    invoke-virtual {v0, v2, p1, p2, p3}, Landroid/service/wallpaper/WallpaperService$Engine;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1341
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1346
    .end local v0    # "engine":Landroid/service/wallpaper/WallpaperService$Engine;
    :cond_0
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1327
    new-instance v0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;

    invoke-direct {v0, p0, p0}, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;-><init>(Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/WallpaperService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 1302
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1304
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;->isSmartBookSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1305
    const-string/jumbo v0, "wallpaper"

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 1306
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mCurrentWallpaper:Ljava/lang/String;

    .line 1307
    const-string v0, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Wallpaper : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService;->mCurrentWallpaper:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    :cond_0
    return-void
.end method

.method public abstract onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1314
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1315
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1316
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->detach()V

    .line 1315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1318
    :cond_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1319
    return-void
.end method
