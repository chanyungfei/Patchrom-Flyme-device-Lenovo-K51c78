.class public Lcom/android/internal/policy/impl/LenovoFrameworkGestureConfig;
.super Ljava/lang/Object;
.source "LenovoFrameworkGestureConfig.java"


# static fields
.field public static final BLACK_GESTURE_CAPTURE_NUM_VALUE:Ljava/lang/String; = "black_gesture_capture_num_value"

.field public static final BLACK_GESTURE_FLASH_MODE_VALUE:Ljava/lang/String; = "black_gesture_flash_mode_value"

.field public static final BLACK_GESTURE_IS_FIRST_IN:Ljava/lang/String; = "black_gesture_is_first_in"

.field private static final DEBUG:Z = true

.field public static final DEFAULT_CLASS_C:Ljava/lang/String; = "com.lenovo.scg.camera.CameraLauncher"

.field public static final DEFAULT_CLASS_E:Ljava/lang/String;

.field public static final DEFAULT_CLASS_M:Ljava/lang/String;

.field public static final DEFAULT_CLASS_V:Ljava/lang/String; = "com.lenovo.videoplayer.VideoPlayerActivity"

.field public static final DEFAULT_CONTINUOUS_SHOT_NUM:I = 0x6

.field public static final DEFAULT_FLASH_MODE:Ljava/lang/String; = "auto"

.field public static final DEFAULT_PACKAGE_C:Ljava/lang/String; = "com.lenovo.scg"

.field public static final DEFAULT_PACKAGE_E:Ljava/lang/String;

.field public static final DEFAULT_PACKAGE_M:Ljava/lang/String;

.field public static final DEFAULT_PACKAGE_V:Ljava/lang/String; = "com.lenovo.videoplayer"

.field public static final GESTURE_WAKEUP_ALL_ENABLE_VALUE:Ljava/lang/String; = "black_gesture_wakeup_all_enable"

.field public static final GESTURE_WAKEUP_C_ENABLE_VALUE:Ljava/lang/String; = "black_gesture_wakeup_c_enable"

.field public static final GESTURE_WAKEUP_C_INTENT_URI:Ljava/lang/String; = "black_gesture_wakeup_c_intent"

.field public static final GESTURE_WAKEUP_E_ENABLE_VALUE:Ljava/lang/String; = "black_gesture_wakeup_e_enable"

.field public static final GESTURE_WAKEUP_E_INTENT_URI:Ljava/lang/String; = "black_gesture_wakeup_e_intent"

.field public static final GESTURE_WAKEUP_FACE_UNLOCK_ENABLE_VALUE:Ljava/lang/String; = "black_gesture_face_unlock_enable"

.field public static final GESTURE_WAKEUP_GESTURE_PICK_UP_ENABLE_VALUE:Ljava/lang/String; = "black_gesture_pick_up_enable"

.field public static final GESTURE_WAKEUP_GESTURE_WAVE_HAND_ENABLE_VALUE:Ljava/lang/String; = "black_gesture_wave_hand_enable"

.field public static final GESTURE_WAKEUP_LIGHT_UP_ENABLE_VALUE:Ljava/lang/String; = "black_gesture_light_up_enable"

.field public static final GESTURE_WAKEUP_M_ENABLE_VALUE:Ljava/lang/String; = "black_gesture_wakeup_m_enable"

.field public static final GESTURE_WAKEUP_M_INTENT_URI:Ljava/lang/String; = "black_gesture_wakeup_m_intent"

.field public static final GESTURE_WAKEUP_NORMAL_ENABLE_VALUE:Ljava/lang/String; = "slide_unlock_enabled"

.field public static final GESTURE_WAKEUP_PICK_UP_INTENT_URI:Ljava/lang/String; = "black_gesture_pick_up_intent"

.field public static final GESTURE_WAKEUP_TALKING_TIME_ENABLE_VALUE:Ljava/lang/String; = "black_gesture_talkting_time_enable"

.field public static final GESTURE_WAKEUP_TOP_SPEED_SNAP_ENABLE_VALUE:Ljava/lang/String; = "black_gesture_top_speed_snap_enable"

.field public static final GESTURE_WAKEUP_V_ENABLE_VALUE:Ljava/lang/String; = "black_gesture_wakeup_v_enable"

.field public static final GESTURE_WAKEUP_V_INTENT_URI:Ljava/lang/String; = "black_gesture_wakeup_v_intent"

.field public static final GESTURE_WAKEUP_WAVE_HAND_INTENT_URI:Ljava/lang/String; = "black_gesture_wave_hand_intent"

.field public static final GESTURE_WARNING_POP_UP_ENABLE:Ljava/lang/String; = "black_gesture_warning_pop_up_enable"

.field public static final LENOVO_FLAG_PATH:Ljava/lang/String; = "/sys/lenovo_tp_gestures/lenovo_tpd_info"

.field public static LENOVO_GESTURE_PICK_UP_SUPPORT:Z = false

.field public static LENOVO_GESTURE_WAVE_HAND_SUPPORT:Z = false

.field private static final TAG:Ljava/lang/String; = "LenovoGesture_Config"

.field public static final TPD_SUSPEND_STATUS:Ljava/lang/String; = "/sys/lenovo_tp_gestures/tpd_suspend_status"

.field public static final TP_CODE_C_GESTURE:I = 0x34

.field public static final TP_CODE_DOUBLE_CLICK_HOME:I = 0x50

.field public static final TP_CODE_DOUBLE_CLICK_SCREEN:I = 0x24

.field public static final TP_CODE_E_GESTURE:I = 0x33

.field public static final TP_CODE_LEFT_TO_RIGHT_SLIDE:I = 0x20

.field public static final TP_CODE_PICK_UP_FLAG:I = 0x821

.field public static final TP_CODE_RIGHT_TO_LEFT_SLIDE:I = 0x21

.field public static final TP_CODE_WAVE_HAND_FLAG:I = 0x823


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-string v0, "row"

    const-string v1, "ro.lenovo.region"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.chrome"

    :goto_0
    sput-object v0, Lcom/android/internal/policy/impl/LenovoFrameworkGestureConfig;->DEFAULT_PACKAGE_E:Ljava/lang/String;

    .line 37
    const-string v0, "row"

    const-string v1, "ro.lenovo.region"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.google.android.apps.chrome.Main"

    :goto_1
    sput-object v0, Lcom/android/internal/policy/impl/LenovoFrameworkGestureConfig;->DEFAULT_CLASS_E:Ljava/lang/String;

    .line 64
    const-string v0, "row"

    const-string v1, "ro.lenovo.region"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.google.android.music"

    :goto_2
    sput-object v0, Lcom/android/internal/policy/impl/LenovoFrameworkGestureConfig;->DEFAULT_PACKAGE_M:Ljava/lang/String;

    .line 66
    const-string v0, "row"

    const-string v1, "ro.lenovo.region"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.android.music.activitymanagement.TopLevelActivity"

    :goto_3
    sput-object v0, Lcom/android/internal/policy/impl/LenovoFrameworkGestureConfig;->DEFAULT_CLASS_M:Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/android/internal/policy/impl/LenovoFrameworkGestureConfig;->placeholder()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/LenovoFrameworkGestureConfig;->LENOVO_GESTURE_PICK_UP_SUPPORT:Z

    .line 89
    invoke-static {}, Lcom/android/internal/policy/impl/LenovoFrameworkGestureConfig;->placeholder()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/LenovoFrameworkGestureConfig;->LENOVO_GESTURE_WAVE_HAND_SUPPORT:Z

    .line 95
    invoke-static {}, Lcom/android/internal/policy/impl/LenovoFrameworkGestureConfig;->initConstants()V

    .line 96
    return-void

    .line 35
    :cond_0
    const-string v0, "com.lenovo.browser"

    goto :goto_0

    .line 37
    :cond_1
    const-string v0, "com.lenovo.browser.BrowserActivity"

    goto :goto_1

    .line 64
    :cond_2
    const-string v0, "com.lenovo.music"

    goto :goto_2

    .line 66
    :cond_3
    const-string v0, "com.lenovo.music.ui.LeAppLoadingActivity"

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initConstants()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    const-string v0, "ro.lenovo_gesture_pickup"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/LenovoFrameworkGestureConfig;->LENOVO_GESTURE_PICK_UP_SUPPORT:Z

    .line 100
    const-string v0, "ro.lenovo_gesture_wave_hand"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/LenovoFrameworkGestureConfig;->LENOVO_GESTURE_WAVE_HAND_SUPPORT:Z

    .line 101
    return-void
.end method

.method private static placeholder()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public static setTpdStatus(Z)V
    .locals 9
    .param p0, "enabled"    # Z

    .prologue
    .line 105
    const-string v5, "LenovoGesture_Config"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSlideUnlock enabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v1, Ljava/io/File;

    const-string v5, "/sys/lenovo_tp_gestures/tpd_suspend_status"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 110
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 111
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1a4

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 119
    const-string v5, "/sys/lenovo_tp_gestures/tpd_suspend_status"

    invoke-static {v5}, Landroid/os/SELinux;->restorecon(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    :cond_1
    :goto_1
    const/16 v4, 0x30

    .line 126
    .local v4, "setVal":B
    if-eqz p0, :cond_2

    .line 127
    const/16 v4, 0x31

    .line 128
    :cond_2
    const/4 v2, 0x0

    .line 130
    .local v2, "os":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v5, "/sys/lenovo_tp_gestures/tpd_suspend_status"

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .local v3, "os":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 136
    if-eqz v3, :cond_3

    .line 137
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    move-object v2, v3

    .line 141
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :cond_4
    :goto_2
    return-void

    .line 113
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .end local v4    # "setVal":B
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "LenovoGesture_Config"

    const-string v6, ""

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 122
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "LenovoGesture_Config"

    const-string v6, ""

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v4    # "setVal":B
    :catch_2
    move-exception v5

    move-object v2, v3

    .line 140
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 132
    :catch_3
    move-exception v0

    .line 133
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 136
    if-eqz v2, :cond_4

    .line 137
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 138
    :catch_4
    move-exception v5

    goto :goto_2

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 136
    :goto_4
    if-eqz v2, :cond_5

    .line 137
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 139
    :cond_5
    :goto_5
    throw v5

    .line 138
    :catch_5
    move-exception v6

    goto :goto_5

    .line 135
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 132
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_3
.end method
