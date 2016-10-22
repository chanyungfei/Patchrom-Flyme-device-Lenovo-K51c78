.class public Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;
.super Ljava/lang/Object;
.source "LenovoFrameworkServiceDelegate.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$LenovoFrameworkCallBack;,
        Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$ShowListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final LENOVO_FRAMEWORK_CLASS:Ljava/lang/String; = "com.lenovo.framework.LenovoFrameworkService"

.field public static final LENOVO_FRAMEWORK_PACKAGE:Ljava/lang/String; = "com.lenovo.gesture"

.field public static final MSG_BIND_SERVICE:I = 0x64

.field public static final MSG_UNBIND_SERVICE:I = 0x65

.field private static final SERVICE_RESTART_DEALY_MS:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "LenovoGesture_FrameworkServiceDelegate"

.field private static isEnabled:Z

.field private static mInstance:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFPSensorObserver:Lcom/android/internal/policy/impl/FPSensorObserver;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mKeyguardViewMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

.field private final mLenovoFrameworkConnection:Landroid/content/ServiceConnection;

.field protected mLenovoFrameworkService:Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;

.field private mShowListener:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$ShowListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyguardViewMediator"    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v1, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$1;-><init>(Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkConnection:Landroid/content/ServiceConnection;

    .line 63
    iput-object p2, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mKeyguardViewMediator:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .line 64
    iput-object p1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    .line 65
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->isEnabled:Z

    .line 67
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->isFirstIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->initDefaultIntentUri()V

    .line 69
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->setDefaultModeAndCaptureNum()V

    .line 70
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->setDefaultCheckBoxPrefsValues()V

    .line 73
    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "LenovoGesture_FrameworkServiceDelegate"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mHandlerThread:Landroid/os/HandlerThread;

    .line 74
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 75
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mHandler:Landroid/os/Handler;

    .line 79
    :try_start_0
    const-string v1, "LenovoGesture_FrameworkServiceDelegate"

    const-string v2, "create FPSensorObserver."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v1, Lcom/android/internal/policy/impl/FPSensorObserver;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/FPSensorObserver;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mFPSensorObserver:Lcom/android/internal/policy/impl/FPSensorObserver;

    .line 81
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mFPSensorObserver:Lcom/android/internal/policy/impl/FPSensorObserver;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/FPSensorObserver;->ready()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    const-string v1, "LenovoGesture_FrameworkServiceDelegate"

    const-string v2, "create FPSensorObserver error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->isEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;)Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$ShowListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mShowListener:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$ShowListener;

    return-object v0
.end method

.method private doBind()V
    .locals 5

    .prologue
    .line 90
    const-string v1, "LenovoGesture_FrameworkServiceDelegate"

    const-string v2, "doBind."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.lenovo.gesture"

    const-string v2, "com.lenovo.framework.LenovoFrameworkService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    const-string v1, "LenovoGesture_FrameworkServiceDelegate"

    const-string v2, "***: can\'t bind to com.lenovo.framework.LenovoFrameworkService"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    const-string v1, "LenovoGesture_FrameworkServiceDelegate"

    const-string v2, "*** started"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doUnBind()V
    .locals 2

    .prologue
    .line 103
    const-string v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string v1, "doUnBind."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 105
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyguardViewMediator"    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 56
    const-class v1, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mInstance:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V

    sput-object v0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mInstance:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;

    .line 59
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mInstance:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initDefaultIntentUri()V
    .locals 5

    .prologue
    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 206
    .local v2, "intentUri":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 208
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v3, "LenovoGesture_FrameworkServiceDelegate"

    const-string v4, "Fisrt in ,initDefaultIntentUri"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v3, "LenovoGesture_FrameworkServiceDelegate"

    const-string v4, "Annan-->DefaultIntentUri()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 212
    .restart local v1    # "intent":Landroid/content/Intent;
    sget-object v3, Lcom/android/internal/policy/impl/LenovoFrameworkGestureConfig;->DEFAULT_PACKAGE_E:Ljava/lang/String;

    sget-object v4, Lcom/android/internal/policy/impl/LenovoFrameworkGestureConfig;->DEFAULT_CLASS_E:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    invoke-virtual {v1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    .line 214
    const-string v3, "black_gesture_wakeup_e_intent"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 216
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 217
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "com.lenovo.scg"

    const-string v4, "com.lenovo.scg.camera.CameraLauncher"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    invoke-virtual {v1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    .line 219
    const-string v3, "black_gesture_wakeup_c_intent"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 221
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 222
    .restart local v1    # "intent":Landroid/content/Intent;
    sget-object v3, Lcom/android/internal/policy/impl/LenovoFrameworkGestureConfig;->DEFAULT_PACKAGE_M:Ljava/lang/String;

    sget-object v4, Lcom/android/internal/policy/impl/LenovoFrameworkGestureConfig;->DEFAULT_CLASS_M:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    invoke-virtual {v1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    .line 224
    const-string v3, "black_gesture_wakeup_m_intent"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 226
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 227
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "com.lenovo.videoplayer"

    const-string v4, "com.lenovo.videoplayer.VideoPlayerActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    invoke-virtual {v1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    .line 229
    const-string v3, "black_gesture_wakeup_v_intent"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 230
    return-void
.end method

.method private isFirstIn()Z
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 149
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 150
    .local v0, "isFirstIn":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "black_gesture_is_first_in"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "black_gesture_is_first_in"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "black_screen_snap_shot"

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 159
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "black_screen_snap_shot"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_2
    move v1, v3

    .line 150
    goto :goto_0
.end method

.method private isInSupperClassicMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 137
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "supperClassicMode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 139
    .local v0, "isInSupperClassicMode":Z
    :goto_0
    const-string v1, "LenovoGesture_FrameworkServiceDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LenovoGestures isInSupperClassicMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return v0

    .line 137
    .end local v0    # "isInSupperClassicMode":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setDefaultCheckBoxPrefsValues()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 175
    const-string v1, "LenovoGesture_FrameworkServiceDelegate"

    const-string v2, "Fisrt in ,setDefaultCheckBoxPrefsValues"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 179
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v1, "slide_unlock_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 180
    const-string v1, "black_gesture_light_up_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 182
    const-string v1, "black_gesture_top_speed_snap_enable"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 184
    const-string v1, "black_gesture_wakeup_c_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    const-string v1, "black_gesture_wakeup_e_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    const-string v1, "black_gesture_wakeup_m_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 187
    const-string v1, "black_gesture_wakeup_v_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 190
    const-string v1, "black_gesture_warning_pop_up_enable"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 193
    sget-boolean v1, Lcom/android/internal/policy/impl/LenovoFrameworkGestureConfig;->LENOVO_GESTURE_PICK_UP_SUPPORT:Z

    if-ne v1, v4, :cond_0

    .line 194
    const-string v1, "black_gesture_pick_up_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 196
    :cond_0
    sget-boolean v1, Lcom/android/internal/policy/impl/LenovoFrameworkGestureConfig;->LENOVO_GESTURE_WAVE_HAND_SUPPORT:Z

    if-ne v1, v4, :cond_1

    .line 197
    const-string v1, "black_gesture_wave_hand_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 200
    :cond_1
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    .prologue
    .line 118
    const-string v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string v1, "disable LenovoFrameworkServiceDelegate."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget-boolean v0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->isEnabled:Z

    if-nez v0, :cond_0

    .line 120
    const-string v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string v1, "already disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->isEnabled:Z

    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string v1, "enable LenovoFrameworkServiceDelegate."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-boolean v0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string v1, "already enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->isEnabled:Z

    .line 114
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 322
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 332
    const-string v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string v1, "un-handled message."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v0, 0x0

    .line 335
    :goto_0
    return v0

    .line 324
    :pswitch_0
    const-string v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string v1, "msg: do bind service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->doBind()V

    .line 335
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 328
    :pswitch_1
    const-string v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string v1, "msg: do UNbind service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->doUnBind()V

    goto :goto_1

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isReady()Z
    .locals 4

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;->isGestureUnlockScreenReady()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->isInSupperClassicMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 132
    .local v0, "isready":Z
    :goto_0
    const-string v1, "LenovoGesture_FrameworkServiceDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",gestureframeworkService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",isReady: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return v0

    .line 129
    .end local v0    # "isready":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScreenTurnedOff(I)V
    .locals 1
    .param p1, "why"    # I

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;->onScreenTurnedOff(I)V

    .line 318
    :cond_0
    return-void
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$ShowListener;)V
    .locals 1
    .param p1, "showListener"    # Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$ShowListener;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mShowListener:Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate$ShowListener;

    .line 308
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;->onScreenTurnedOn()V

    .line 311
    :cond_0
    return-void
.end method

.method public setDefaultModeAndCaptureNum()V
    .locals 3

    .prologue
    .line 167
    const-string v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string v1, "Fisrt in ,setDefaultModeAndCaptureNum"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "black_gesture_flash_mode_value"

    const-string v2, "auto"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "black_gesture_capture_num_value"

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 172
    return-void
.end method

.method public showGestureUnlockScreen()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;->showGestureUnlockScreen()V

    .line 294
    :cond_0
    return-void
.end method

.method public triggerSnapshot(I)V
    .locals 2
    .param p1, "keycode"    # I

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoFrameworkServiceDelegate;->mLenovoFrameworkService:Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/LenovoFrameworkServiceWrapper;->triggerSnapshot(I)V

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    const-string v0, "LenovoGesture_FrameworkServiceDelegate"

    const-string v1, "LenovoFrameworkService not ready!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
