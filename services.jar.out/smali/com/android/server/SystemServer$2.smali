.class Lcom/android/server/SystemServer$2;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SystemServer;->startOtherServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemServer;

.field final synthetic val$appIconThemeServiceF:Lvibeui/content/res/AppIconThemeServices;

.field final synthetic val$appPcServiceF:Lcom/android/server/am/AppPcService;

.field final synthetic val$atlasF:Lcom/android/server/AssetAtlasService;

.field final synthetic val$audioServiceF:Landroid/media/AudioService;

.field final synthetic val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

.field final synthetic val$connectivityF:Lcom/android/server/ConnectivityService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$countryDetectorF:Lcom/android/server/CountryDetectorService;

.field final synthetic val$immF:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$inputManagerF:Lcom/android/server/input/InputManagerService;

.field final synthetic val$karaokeServiceF:Landroid/media/KaraokeService;

.field final synthetic val$locationF:Lcom/android/server/LocationManagerService;

.field final synthetic val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

.field final synthetic val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

.field final synthetic val$momF:Lcom/mediatek/mom/MobileManagerService;

.field final synthetic val$mountServiceF:Lcom/android/server/MountService;

.field final synthetic val$networkManagementF:Lcom/android/server/NetworkManagementService;

.field final synthetic val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

.field final synthetic val$networkScoreF:Lcom/android/server/NetworkScoreService;

.field final synthetic val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

.field final synthetic val$perfServiceF:Lcom/mediatek/perfservice/IPerfServiceManager;

.field final synthetic val$recoveryF:Lcom/mediatek/recovery/RecoveryManagerService;

.field final synthetic val$statusBarF:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

.field final synthetic val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

.field final synthetic val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/SystemServer;Lcom/android/server/am/AppPcService;Lcom/mediatek/mom/MobileManagerService;Lvibeui/content/res/AppIconThemeServices;Landroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Landroid/media/AudioService;Landroid/media/KaraokeService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/mediatek/perfservice/IPerfServiceManager;Lcom/mediatek/recovery/RecoveryManagerService;)V
    .locals 1

    .prologue
    .line 1412
    iput-object p1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    iput-object p2, p0, Lcom/android/server/SystemServer$2;->val$appPcServiceF:Lcom/android/server/am/AppPcService;

    iput-object p3, p0, Lcom/android/server/SystemServer$2;->val$momF:Lcom/mediatek/mom/MobileManagerService;

    iput-object p4, p0, Lcom/android/server/SystemServer$2;->val$appIconThemeServiceF:Lvibeui/content/res/AppIconThemeServices;

    iput-object p5, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/server/SystemServer$2;->val$mountServiceF:Lcom/android/server/MountService;

    iput-object p7, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    iput-object p8, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    iput-object p9, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    iput-object p10, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p11, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    iput-object p12, p0, Lcom/android/server/SystemServer$2;->val$audioServiceF:Landroid/media/AudioService;

    iput-object p13, p0, Lcom/android/server/SystemServer$2;->val$karaokeServiceF:Landroid/media/KaraokeService;

    iput-object p14, p0, Lcom/android/server/SystemServer$2;->val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$statusBarF:Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$perfServiceF:Lcom/mediatek/perfservice/IPerfServiceManager;

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$recoveryF:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1415
    const-string v1, "SystemServer"

    const-string v3, "Making services ready"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$appPcServiceF:Lcom/android/server/am/AppPcService;

    if-eqz v1, :cond_0

    .line 1420
    const-string v1, "SystemServer"

    const-string v3, "appPcServiceF systemReady"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$appPcServiceF:Lcom/android/server/am/AppPcService;

    invoke-virtual {v1}, Lcom/android/server/am/AppPcService;->systemReady()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1430
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$momF:Lcom/mediatek/mom/MobileManagerService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$momF:Lcom/mediatek/mom/MobileManagerService;

    invoke-virtual {v1}, Lcom/mediatek/mom/MobileManagerService;->systemReady()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1435
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    invoke-static {v1}, Lcom/android/server/SystemServer;->access$100(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    move-result-object v1

    const/16 v3, 0x226

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1439
    :try_start_2
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1444
    :goto_2
    const-string v1, "SystemServer"

    const-string v3, "WebViewFactory preparation"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInSystemServer()V

    .line 1449
    :try_start_3
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$appIconThemeServiceF:Lvibeui/content/res/AppIconThemeServices;

    if-eqz v1, :cond_2

    .line 1450
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$appIconThemeServiceF:Lvibeui/content/res/AppIconThemeServices;

    invoke-virtual {v1}, Lvibeui/content/res/AppIconThemeServices;->systemReady()V

    .line 1451
    const-string v1, "SystemServer"

    const-string v3, "AppIconThemeService systemReady"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 1459
    :cond_2
    :goto_3
    :try_start_4
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 1464
    :goto_4
    :try_start_5
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mountServiceF:Lcom/android/server/MountService;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mountServiceF:Lcom/android/server/MountService;

    invoke-virtual {v1}, Lcom/android/server/MountService;->systemReady()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 1469
    :cond_3
    :goto_5
    :try_start_6
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    invoke-virtual {v1}, Lcom/android/server/NetworkScoreService;->systemReady()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 1474
    :cond_4
    :goto_6
    :try_start_7
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v1}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    .line 1479
    :cond_5
    :goto_7
    :try_start_8
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 1484
    :cond_6
    :goto_8
    :try_start_9
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    .line 1489
    :cond_7
    :goto_9
    :try_start_a
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    .line 1494
    :cond_8
    :goto_a
    :try_start_b
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$audioServiceF:Landroid/media/AudioService;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$audioServiceF:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->systemReady()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    .line 1500
    :cond_9
    :goto_b
    :try_start_c
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$karaokeServiceF:Landroid/media/KaraokeService;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$karaokeServiceF:Landroid/media/KaraokeService;

    invoke-virtual {v1}, Landroid/media/KaraokeService;->systemReady()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    .line 1505
    :cond_a
    :goto_c
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/Watchdog;->start()V

    .line 1509
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    invoke-static {v1}, Lcom/android/server/SystemServer;->access$100(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    move-result-object v1

    const/16 v3, 0x258

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1513
    :try_start_d
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->systemRunning()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    .line 1518
    :cond_b
    :goto_d
    :try_start_e
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    iget-object v3, p0, Lcom/android/server/SystemServer$2;->val$statusBarF:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/InputMethodManagerService;->systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    .line 1523
    :cond_c
    :goto_e
    :try_start_f
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f

    .line 1528
    :cond_d
    :goto_f
    const-string v1, "user"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "userdebug"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_e
    const/4 v1, 0x1

    :goto_10
    if-nez v1, :cond_f

    const-string v1, "persist.sys.anr_sys_key"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1530
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/server/SystemServer$2$1;

    invoke-direct {v3, p0}, Lcom/android/server/SystemServer$2$1;-><init>(Lcom/android/server/SystemServer$2;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1538
    :cond_f
    :try_start_10
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    invoke-virtual {v1}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_10

    .line 1543
    :cond_10
    :goto_11
    :try_start_11
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {v1}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_11

    .line 1548
    :cond_11
    :goto_12
    :try_start_12
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    if-eqz v1, :cond_12

    .line 1549
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    invoke-virtual {v1}, Lcom/android/server/CommonTimeManagementService;->systemRunning()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_12

    .line 1555
    :cond_12
    :goto_13
    :try_start_13
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    if-eqz v1, :cond_13

    .line 1556
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v1}, Lcom/android/server/TextServicesManagerService;->systemRunning()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_13

    .line 1561
    :cond_13
    :goto_14
    :try_start_14
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    invoke-virtual {v1}, Lcom/android/server/AssetAtlasService;->systemRunning()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_14

    .line 1567
    :cond_14
    :goto_15
    :try_start_15
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_15

    .line 1572
    :cond_15
    :goto_16
    :try_start_16
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    invoke-virtual {v1}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_16

    .line 1577
    :cond_16
    :goto_17
    :try_start_17
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_17

    .line 1583
    :cond_17
    :goto_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v1}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_18

    .line 1589
    :cond_18
    :goto_19
    const-string v1, "ro.mtk_perfservice_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1592
    :try_start_19
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$perfServiceF:Lcom/mediatek/perfservice/IPerfServiceManager;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$perfServiceF:Lcom/mediatek/perfservice/IPerfServiceManager;

    invoke-interface {v1}, Lcom/mediatek/perfservice/IPerfServiceManager;->systemReady()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_19

    .line 1601
    :cond_19
    :goto_1a
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$recoveryF:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$recoveryF:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-virtual {v1}, Lcom/mediatek/recovery/RecoveryManagerService;->systemReady()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_1a

    .line 1608
    :cond_1a
    :goto_1b
    const-string v1, "ro.greenoptimize.enable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1609
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mGO:Lcom/android/server/am/GreenOptimizer;

    if-eqz v1, :cond_1b

    .line 1610
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mGO:Lcom/android/server/am/GreenOptimizer;

    invoke-virtual {v1}, Lcom/android/server/am/GreenOptimizer;->systemRunning()V

    .line 1613
    :cond_1b
    return-void

    .line 1423
    :catch_0
    move-exception v0

    .line 1424
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "SystemServer"

    const-string v3, "appPcServiceF systemReady failed"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1431
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 1432
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v3, "making MobileManagerService ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v3, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1440
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 1441
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v3, "observing native crashes"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v3, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1453
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    .line 1454
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v1, "SystemServer"

    const-string v3, "AppIconThemeService systemReady failed"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1460
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v0

    .line 1461
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v3, "starting System UI"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v3, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 1465
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v0

    .line 1466
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v3, "making Mount Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v3, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 1470
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v0

    .line 1471
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v3, "making Network Score Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v3, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 1475
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v0

    .line 1476
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v3, "making Network Managment Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v3, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 1480
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v0

    .line 1481
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v3, "making Network Stats Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v3, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 1485
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v0

    .line 1486
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v3, "making Network Policy Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v3, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 1490
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v0

    .line 1491
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v3, "making Connectivity Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v3, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 1495
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v0

    .line 1496
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v3, "Notifying AudioService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v3, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 1501
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v0

    .line 1502
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v3, "Notifying KaraokeService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v3, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 1514
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v0

    .line 1515
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v3, "Notifying WallpaperService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v3, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 1519
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v0

    .line 1520
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v3, "Notifying InputMethodService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v3, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 1524
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v0

    .line 1525
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v3, "Notifying Location Service running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v3, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1c
    move v1, v2

    .line 1528
    goto/16 :goto_10

    .line 1539
    :catch_10
    move-exception v0

    .line 1540
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v3, "Notifying CountryDetectorService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v3, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 1544
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v0

    .line 1545
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v3, "Notifying NetworkTimeService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v3, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 1551
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v0

    .line 1552
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v3, "Notifying CommonTimeManagementService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v3, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 1557
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v0

    .line 1558
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v3, "Notifying TextServicesManagerService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v3, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 1562
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v0

    .line 1563
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v3, "Notifying AssetAtlasService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v3, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 1568
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v0

    .line 1569
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v3, "Notifying InputManagerService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v3, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 1573
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v0

    .line 1574
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v3, "Notifying TelephonyRegistry running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v3, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 1578
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v0

    .line 1579
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v3, "Notifying MediaRouterService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v3, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 1584
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v0

    .line 1585
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v3, "Notifying MmsService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v3, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 1593
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v0

    .line 1594
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v3, "making PerfServiceManager ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v3, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 1602
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v0

    .line 1603
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v3, "making RecoveryManagerService ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v3, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b
.end method
