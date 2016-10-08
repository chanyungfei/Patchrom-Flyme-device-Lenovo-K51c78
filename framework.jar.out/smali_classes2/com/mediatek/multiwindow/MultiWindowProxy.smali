.class public final Lcom/mediatek/multiwindow/MultiWindowProxy;
.super Lcom/mediatek/sef/proxy/FeatureProxyBase;
.source "MultiWindowProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static DEFAULT_CHANGE_CONFIG:Z = false

.field public static final ERR_HANDLING_CONFIG_NOT_CHANGE:I = 0x1

.field public static final ERR_HANDLING_DISABLE_FLOAT:I = 0x3

.field public static final ERR_HANDLING_MINIMAX_RESTART_APP:I = 0x2

.field public static final ERR_HANDLING_NONE:I = 0x0

.field public static final FLOATING_WINDOW_DIALOG:I = 0x2

.field public static final FLOATING_WINDOW_FULL:I = 0x1

.field private static final MULTIWINDOW_SERVICE:Ljava/lang/String; = "multiwindow_service_v1"

.field public static final NOT_FLOATING_WINDOW:I = 0x0

.field static final TAG:Ljava/lang/String; = "MultiWindow"

.field private static sDefaultService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

.field public static sFeatureProperty:I

.field public static sInstance:Lcom/mediatek/multiwindow/MultiWindowProxy;

.field private static sIsFirstTime:Z

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private isAppErrorHandlingEnabled:Z

.field private mAMSCb:Lcom/mediatek/common/multiwindow/IMWAmsCallback;

.field private mASSCb:Lcom/mediatek/common/multiwindow/IMWAmsCallback;

.field private mActionView:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mFloating:Z

.field private mIsTranslucent:Z

.field private mMaximumView:Landroid/widget/ImageView;

.field private mPhoneWindowCb:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

.field mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

.field private mStickView:Landroid/widget/ImageView;

.field private mSticked:Z

.field private mWindowType:I

.field private mWindowsInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 66
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getFeatureProperty()I

    move-result v0

    sput v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->sFeatureProperty:I

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->sLock:Ljava/lang/Object;

    .line 91
    sput-boolean v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->sIsFirstTime:Z

    .line 910
    const-string v0, "debug.mw.changeconfig"

    invoke-static {v0, v1}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->DEFAULT_CHANGE_CONFIG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Lcom/mediatek/sef/proxy/FeatureProxyBase;-><init>()V

    .line 72
    iput-boolean v2, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mSticked:Z

    .line 76
    iput v2, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mWindowType:I

    .line 907
    const-string v1, "debug.mw.apperrhandling"

    invoke-static {v1, v2}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->isAppErrorHandlingEnabled:Z

    .line 916
    iput-boolean v2, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mFloating:Z

    .line 930
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mWindowsInfoList:Ljava/util/ArrayList;

    .line 98
    const-string v1, "multiwindow_service_v1"

    invoke-virtual {p0, v1}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 99
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 100
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 104
    :cond_0
    invoke-static {v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    move-result-object v1

    sput-object v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->sDefaultService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    .line 105
    return-void
.end method

.method static getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 9
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 889
    :try_start_0
    const-string v6, "android.os.SystemProperties"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 891
    .local v0, "SystemProperties":Ljava/lang/Class;
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/Class;

    .line 892
    .local v3, "paramTypes":[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v3, v6

    .line 893
    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v3, v6

    .line 895
    const-string v6, "getBoolean"

    invoke-virtual {v0, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 896
    .local v2, "getBoolean":Ljava/lang/reflect/Method;
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/Object;

    .line 897
    .local v4, "params":[Ljava/lang/Object;
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v7, v4, v6

    .line 898
    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v4, v6

    .line 899
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 903
    .end local v0    # "SystemProperties":Ljava/lang/Class;
    .end local v2    # "getBoolean":Ljava/lang/reflect/Method;
    .end local v3    # "paramTypes":[Ljava/lang/Class;
    .end local v4    # "params":[Ljava/lang/Object;
    :goto_0
    return v5

    .line 901
    :catch_0
    move-exception v1

    .line 902
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "MultiWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBooleanProperty error!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, p1

    .line 903
    goto :goto_0
.end method

.method public static getFeatureProperty()I
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 167
    :try_start_0
    const-string v6, "android.os.SystemProperties"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 169
    .local v0, "SystemProperties":Ljava/lang/Class;
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/Class;

    .line 170
    .local v3, "paramTypes":[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v3, v6

    .line 171
    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v3, v6

    .line 173
    const-string v6, "getInt"

    invoke-virtual {v0, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 174
    .local v2, "getInt":Ljava/lang/reflect/Method;
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/Object;

    .line 175
    .local v4, "params":[Ljava/lang/Object;
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/String;

    const-string v8, "persist.sys.multiwindow"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v7, v4, v6

    .line 176
    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v4, v6

    .line 177
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 181
    .end local v2    # "getInt":Ljava/lang/reflect/Method;
    .end local v3    # "paramTypes":[Ljava/lang/Class;
    .end local v4    # "params":[Ljava/lang/Object;
    :goto_0
    return v5

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "MultiWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFeatureProperty error!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;
    .locals 4

    .prologue
    .line 111
    sget-object v2, Lcom/mediatek/multiwindow/MultiWindowProxy;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 115
    :try_start_0
    sget-object v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->sInstance:Lcom/mediatek/multiwindow/MultiWindowProxy;

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->sIsFirstTime:Z

    if-eqz v1, :cond_1

    .line 117
    new-instance v1, Lcom/mediatek/multiwindow/MultiWindowProxy;

    invoke-direct {v1}, Lcom/mediatek/multiwindow/MultiWindowProxy;-><init>()V

    sput-object v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->sInstance:Lcom/mediatek/multiwindow/MultiWindowProxy;

    .line 118
    sget-object v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->sDefaultService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 119
    const/4 v1, 0x0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    return-object v1

    .line 120
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_2
    sget-object v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->sInstance:Lcom/mediatek/multiwindow/MultiWindowProxy;

    sget-object v3, Lcom/mediatek/multiwindow/MultiWindowProxy;->sDefaultService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    iput-object v3, v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    :try_start_3
    sget-object v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->sInstance:Lcom/mediatek/multiwindow/MultiWindowProxy;

    monitor-exit v2

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 122
    .end local v0    # "e":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 125
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v1, 0x0

    :try_start_4
    sput-boolean v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->sIsFirstTime:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method static getIntProperty(Ljava/lang/String;I)I
    .locals 9
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 869
    :try_start_0
    const-string v6, "android.os.SystemProperties"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 871
    .local v0, "SystemProperties":Ljava/lang/Class;
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/Class;

    .line 872
    .local v3, "paramTypes":[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v3, v6

    .line 873
    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v3, v6

    .line 875
    const-string v6, "getInt"

    invoke-virtual {v0, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 876
    .local v2, "getInt":Ljava/lang/reflect/Method;
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/Object;

    .line 877
    .local v4, "params":[Ljava/lang/Object;
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v7, v4, v6

    .line 878
    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v4, v6

    .line 879
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 883
    .end local v0    # "SystemProperties":Ljava/lang/Class;
    .end local v2    # "getInt":Ljava/lang/reflect/Method;
    .end local v3    # "paramTypes":[Ljava/lang/Class;
    .end local v4    # "params":[Ljava/lang/Object;
    :goto_0
    return v5

    .line 881
    :catch_0
    move-exception v1

    .line 882
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "MultiWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getIntProperty error!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, p1

    .line 883
    goto :goto_0
.end method

.method public static isFeatureSupport()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 158
    sget v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->sFeatureProperty:I

    if-ne v1, v0, :cond_0

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWindowBackgroundEnabled()Z
    .locals 1

    .prologue
    .line 857
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public activityCreated(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 785
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->activityCreated(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    :goto_0
    return-void

    .line 786
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addConfigNotChangePkg(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 590
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->addConfigNotChangePkg(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :goto_0
    return-void

    .line 591
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addDisableFloatPkg(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 582
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->addDisableFloatPkg(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :goto_0
    return-void

    .line 583
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addMiniMaxRestartPkg(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 598
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->addMiniMaxRestartPkg(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :goto_0
    return-void

    .line 599
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public adjustActivityConfig(Landroid/content/res/Configuration;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/content/res/Configuration;
    .locals 5
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 415
    invoke-virtual {p0}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 417
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 418
    .local v1, "widthDp":I
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 420
    .local v0, "heightDp":I
    iput v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 421
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 422
    iget v2, p2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eqz v2, :cond_0

    iget v2, p2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 424
    :cond_0
    iput v4, p1, Landroid/content/res/Configuration;->orientation:I

    .line 425
    if-ge v1, v0, :cond_2

    .line 426
    div-int/lit8 v2, v0, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 427
    div-int/lit8 v2, v1, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 447
    :goto_0
    const-string v2, "MultiWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustActivityConfig, apply override config="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .end local v0    # "heightDp":I
    .end local v1    # "widthDp":I
    :cond_1
    return-object p1

    .line 429
    .restart local v0    # "heightDp":I
    .restart local v1    # "widthDp":I
    :cond_2
    div-int/lit8 v2, v1, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 430
    div-int/lit8 v2, v0, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    goto :goto_0

    .line 435
    :cond_3
    const/4 v2, 0x1

    iput v2, p1, Landroid/content/res/Configuration;->orientation:I

    .line 436
    if-ge v1, v0, :cond_4

    .line 437
    div-int/lit8 v2, v1, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 438
    div-int/lit8 v2, v0, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    goto :goto_0

    .line 440
    :cond_4
    div-int/lit8 v2, v0, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 441
    div-int/lit8 v2, v1, 0x2

    iput v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    goto :goto_0
.end method

.method public adjustWindowIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 395
    :cond_0
    return-object p1
.end method

.method public appErrorHandling(Ljava/lang/String;Z)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "inMaxOrRestore"    # Z

    .prologue
    .line 606
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    sget-boolean v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->DEFAULT_CHANGE_CONFIG:Z

    invoke-interface {v0, p1, p2, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->appErrorHandling(Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 610
    :goto_0
    return v0

    .line 607
    :catch_0
    move-exception v0

    .line 610
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeWindow(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->closeWindow(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public enableFeature()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public enableFocusedFrame(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->enableFocusedFrame(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    :goto_0
    return-void

    .line 756
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getDisableFloatComponentList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->getDisableFloatComponentList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 551
    :goto_0
    return-object v1

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisableFloatComponentList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDisableFloatPkgList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 534
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->getDisableFloatPkgList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 538
    :goto_0
    return-object v1

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisableFloatPkgList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFloatingState()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mFloating:Z

    return v0
.end method

.method public getPlatformApiVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    const-string v0, "multiwindow_service_v1"

    return-object v0
.end method

.method public getWindowType(Landroid/os/IBinder;)I
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 382
    const/4 v0, 0x1

    return v0
.end method

.method public isAppErrorHandlingEnabled()Z
    .locals 1

    .prologue
    .line 863
    iget-boolean v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->isAppErrorHandlingEnabled:Z

    return v0
.end method

.method public isFeatureEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 192
    sget-object v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->sDefaultService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    if-eqz v1, :cond_0

    sget v1, Lcom/mediatek/multiwindow/MultiWindowProxy;->sFeatureProperty:I

    if-ne v1, v0, :cond_0

    .line 194
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFloatingStack(I)Z
    .locals 1
    .param p1, "stackId"    # I

    .prologue
    .line 635
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->isFloatingStack(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 639
    :goto_0
    return v0

    .line 636
    :catch_0
    move-exception v0

    .line 639
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFloatingWindow(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 661
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    .line 662
    const/4 v0, 0x1

    .line 664
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInMiniMax(I)Z
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 702
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->isInMiniMax(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 706
    :goto_0
    return v0

    .line 703
    :catch_0
    move-exception v0

    .line 706
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStackBackgroundEnabled()Z
    .locals 1

    .prologue
    .line 841
    const/4 v0, 0x1

    return v0
.end method

.method public isStickStack(I)Z
    .locals 1
    .param p1, "stackId"    # I

    .prologue
    .line 688
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->isStickStack(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 692
    :goto_0
    return v0

    .line 689
    :catch_0
    move-exception v0

    .line 692
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSticky(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 674
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->isSticky(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 678
    :goto_0
    return v0

    .line 675
    :catch_0
    move-exception v0

    .line 678
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchConfigChangeList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 573
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->matchConfigChangeList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 577
    :goto_0
    return v1

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "matchConfigChangeList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public matchConfigNotChangeList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 468
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->matchConfigNotChangeList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 472
    :goto_0
    return v1

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "matchConfigNotChangeList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public matchDisableFloatActivityList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "ActivityName"    # Ljava/lang/String;

    .prologue
    .line 492
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->matchDisableFloatActivityList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 496
    :goto_0
    return v1

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "matchDisableFloatActivityList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public matchDisableFloatPkgList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 480
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->matchDisableFloatPkgList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 484
    :goto_0
    return v1

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "matchDisableFloatPkgList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public matchDisableFloatWinList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "winName"    # Ljava/lang/String;

    .prologue
    .line 504
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->matchDisableFloatWinList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 508
    :goto_0
    return v1

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "matchDisableFloatWinList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public matchMinimaxRestartList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 560
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->matchMinimaxRestartList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 564
    :goto_0
    return v1

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "matchMinimaxRestartList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public miniMaxTask(I)V
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 716
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->miniMaxTask(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    :goto_0
    return-void

    .line 717
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public moveActivityTaskToFront(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 622
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->moveActivityTaskToFront(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :goto_0
    return-void

    .line 623
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public moveFloatingWindow(II)V
    .locals 1
    .param p1, "disX"    # I
    .param p2, "disY"    # I

    .prologue
    .line 729
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->moveFloatingWindow(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    :goto_0
    return-void

    .line 730
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public needChangeConfig(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 455
    sget-boolean v0, Lcom/mediatek/multiwindow/MultiWindowProxy;->DEFAULT_CHANGE_CONFIG:Z

    if-eqz v0, :cond_1

    .line 456
    invoke-virtual {p0, p1}, Lcom/mediatek/multiwindow/MultiWindowProxy;->matchConfigNotChangeList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 458
    :goto_0
    return v0

    .line 456
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 458
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mediatek/multiwindow/MultiWindowProxy;->matchConfigChangeList(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public needHideRestoreButton(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "winName"    # Ljava/lang/String;

    .prologue
    .line 519
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->matchDisableFloatPkgList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    const/4 v1, 0x1

    .line 525
    :goto_0
    return v1

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v1, p2}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->matchDisableFloatWinList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needHideRestoreButton"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resizeFloatingWindow(III)V
    .locals 1
    .param p1, "direction"    # I
    .param p2, "deltaX"    # I
    .param p3, "deltaY"    # I

    .prologue
    .line 742
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->resizeFloatingWindow(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    :goto_0
    return-void

    .line 743
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public restoreWindow(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "toMax"    # Z

    .prologue
    .line 276
    if-eqz p2, :cond_0

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->restoreWindow(Landroid/os/IBinder;Z)V

    .line 284
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->restoreWindow(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAMSCallback(Lcom/mediatek/common/multiwindow/IMWAmsCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/mediatek/common/multiwindow/IMWAmsCallback;

    .prologue
    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->setAMSCallback(Lcom/mediatek/common/multiwindow/IMWAmsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setFloatDecorVisibility(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "visibility"    # I

    .prologue
    .line 310
    iget-object v2, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mPhoneWindowCb:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    if-eqz v2, :cond_0

    .line 314
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mWindowsInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mWindowsInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;

    .line 316
    .local v1, "windowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    iget-object v2, v1, Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;->token:Landroid/os/IBinder;

    if-ne v2, p1, :cond_1

    .line 317
    const-string v2, "MultiWindow"

    const-string v3, "setFloatDecorVisibility matched"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v2, v1, Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;->phoneWindowCb:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    invoke-interface {v2, p2}, Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;->setFloatDecorVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v0    # "index":I
    .end local v1    # "windowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    :cond_0
    :goto_1
    return-void

    .line 314
    .restart local v0    # "index":I
    .restart local v1    # "windowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    .end local v1    # "windowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public setFloatingStack(I)V
    .locals 1
    .param p1, "stackId"    # I

    .prologue
    .line 649
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->setFloatingStack(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    :goto_0
    return-void

    .line 650
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPhoneWindowCallback(Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mPhoneWindowCb:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    .line 249
    return-void
.end method

.method public setSystemUiCallback(Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;

    .prologue
    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->setSystemUiCallback(Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWMSCallback(Lcom/mediatek/common/multiwindow/IMWWmsCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/mediatek/common/multiwindow/IMWWmsCallback;

    .prologue
    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->setWMSCallback(Lcom/mediatek/common/multiwindow/IMWWmsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWindowType(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "windowType"    # I

    .prologue
    .line 338
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 339
    iget-object v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mPhoneWindowCb:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    if-eqz v3, :cond_0

    .line 341
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mPhoneWindowCb:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4, p2}, Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;->setWindowType(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    if-nez p2, :cond_2

    .line 349
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mFloating:Z

    goto :goto_0

    .line 352
    :cond_2
    iput p2, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mWindowType:I

    .line 355
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mWindowsInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 356
    iget-object v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mWindowsInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;

    .line 357
    .local v1, "tempWindowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    iget-object v3, v1, Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;->token:Landroid/os/IBinder;

    if-ne v3, p1, :cond_4

    .line 358
    const-string v3, "MultiWindow"

    const-string v4, "setWindowType matched,and remove!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mWindowsInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 363
    .end local v1    # "tempWindowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    :cond_3
    new-instance v2, Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;

    iget-object v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mPhoneWindowCb:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    invoke-direct {v2, p0, p1, v3}, Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;-><init>(Lcom/mediatek/multiwindow/MultiWindowProxy;Landroid/os/IBinder;Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;)V

    .line 364
    .local v2, "windowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    iget-object v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mWindowsInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mFloating:Z

    .line 366
    iget-object v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mPhoneWindowCb:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    if-eqz v3, :cond_0

    .line 368
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mPhoneWindowCb:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    invoke-interface {v3, p1, p2}, Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;->setWindowType(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 369
    :catch_0
    move-exception v3

    goto :goto_0

    .line 355
    .end local v2    # "windowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    .restart local v1    # "tempWindowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 342
    .end local v0    # "index":I
    .end local v1    # "tempWindowsInfo":Lcom/mediatek/multiwindow/MultiWindowProxy$WindowsInfo;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public showRestoreButton(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 769
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->showRestoreButton(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :goto_0
    return-void

    .line 770
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stickWindow(Landroid/os/IBinder;Z)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isSticky"    # Z

    .prologue
    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->stickWindow(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public taskAdded(I)V
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 801
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->taskAdded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    :goto_0
    return-void

    .line 802
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public taskRemoved(I)V
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 817
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/multiwindow/MultiWindowProxy;->mService:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    invoke-interface {v0, p1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager;->taskRemoved(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :goto_0
    return-void

    .line 818
    :catch_0
    move-exception v0

    goto :goto_0
.end method
