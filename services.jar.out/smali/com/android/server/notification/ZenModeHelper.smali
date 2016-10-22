.class public Lcom/android/server/notification/ZenModeHelper;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeHelper$1;,
        Lcom/android/server/notification/ZenModeHelper$Callback;,
        Lcom/android/server/notification/ZenModeHelper$H;,
        Lcom/android/server/notification/ZenModeHelper$SettingsObserver;,
        Lcom/android/server/notification/ZenModeHelper$IncomingCallInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final REPEAT_CALL_THRESHOLD:J = 0x2bf20L

.field private static final TAG:Ljava/lang/String; = "ZenModeHelper"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAudioManager:Landroid/media/AudioManagerInternal;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/ZenModeHelper$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultConfig:Landroid/service/notification/ZenModeConfig;

.field private mDefaultPhoneApp:Landroid/content/ComponentName;

.field private mEffectsSuppressed:Z

.field private final mHandler:Lcom/android/server/notification/ZenModeHelper$H;

.field private mPreviousRingerMode:I

.field private final mRecentCalls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/ZenModeHelper$IncomingCallInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

.field private mZenMode:I

.field private mZenModeHelperExt:Lcom/mediatek/common/notification/IZenModeHelperExt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "ZenModeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/notification/ZenModeHelper;->mPreviousRingerMode:I

    .line 701
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mRecentCalls:Ljava/util/HashMap;

    .line 114
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 115
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/notification/ZenModeHelper$H;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;Lcom/android/server/notification/ZenModeHelper$1;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    .line 116
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    .line 118
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 119
    new-instance v0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    .line 120
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->observe()V

    .line 123
    const-class v0, Lcom/mediatek/common/notification/IZenModeHelperExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/notification/IZenModeHelperExt;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenModeHelperExt:Lcom/mediatek/common/notification/IZenModeHelperExt;

    .line 126
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnZenModeChanged()V

    return-void
.end method

.method private applyRestrictions()V
    .locals 0

    .prologue
    .line 461
    return-void
.end method

.method private applyRestrictions(ZI)V
    .locals 6
    .param p1, "mute"    # Z
    .param p2, "usage"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 489
    const/4 v0, 0x0

    .line 490
    .local v0, "exceptionPackages":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v5, 0x3

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v5, p2, v1, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 493
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x1c

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v1, v4, p2, v2, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 496
    return-void

    :cond_0
    move v1, v3

    .line 490
    goto :goto_0

    :cond_1
    move v2, v3

    .line 493
    goto :goto_1
.end method

.method private applyZenToRingerMode()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 536
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-nez v2, :cond_1

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    invoke-virtual {v2}, Landroid/media/AudioManagerInternal;->getRingerModeInternal()I

    move-result v1

    .line 539
    .local v1, "ringerModeInternal":I
    move v0, v1

    .line 540
    .local v0, "newRingerModeInternal":I
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    packed-switch v2, :pswitch_data_0

    .line 556
    :cond_2
    :goto_1
    if-eq v0, v3, :cond_0

    .line 557
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    const-string v3, "ZenModeHelper"

    invoke-virtual {v2, v0, v3}, Landroid/media/AudioManagerInternal;->setRingerModeInternal(ILjava/lang/String;)V

    goto :goto_0

    .line 542
    :pswitch_0
    if-eqz v1, :cond_2

    .line 543
    iput v1, p0, Lcom/android/server/notification/ZenModeHelper;->mPreviousRingerMode:I

    .line 544
    const/4 v0, 0x0

    goto :goto_1

    .line 549
    :pswitch_1
    if-nez v1, :cond_2

    .line 550
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mPreviousRingerMode:I

    if-eq v2, v3, :cond_3

    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mPreviousRingerMode:I

    .line 552
    :goto_2
    iput v3, p0, Lcom/android/server/notification/ZenModeHelper;->mPreviousRingerMode:I

    goto :goto_1

    .line 550
    :cond_3
    const/4 v0, 0x2

    goto :goto_2

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private audienceMatches(F)Z
    .locals 4
    .param p1, "contactAffinity"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 966
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    packed-switch v2, :pswitch_data_0

    .line 974
    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered unknown source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 970
    :pswitch_1
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, p1, v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 972
    :pswitch_2
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 966
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private dispatchOnConfigChanged()V
    .locals 3

    .prologue
    .line 637
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 638
    .local v0, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConfigChanged()V

    goto :goto_0

    .line 640
    .end local v0    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    :cond_0
    return-void
.end method

.method private dispatchOnZenModeChanged()V
    .locals 3

    .prologue
    .line 643
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 644
    .local v0, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onZenModeChanged()V

    goto :goto_0

    .line 646
    .end local v0    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    :cond_0
    return-void
.end method

.method private filter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 868
    if-nez p1, :cond_0

    move-object v0, p1

    .line 872
    .end local p1    # "text":Ljava/lang/String;
    .local v0, "text":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 871
    .end local v0    # "text":Ljava/lang/String;
    .restart local p1    # "text":Ljava/lang/String;
    :cond_0
    const-string v1, "\\s+"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 872
    .end local p1    # "text":Ljava/lang/String;
    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0
.end method

.method private static isAlarm(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    const/4 v1, 0x4

    .line 653
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationRecord;->isAudioStream(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationRecord;->isAudioAttributesUsage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCtsTest(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 376
    const-string v8, "activity"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 377
    .local v1, "am":Landroid/app/ActivityManager;
    const/16 v8, 0x28

    invoke-virtual {v1, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 378
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    .line 379
    .local v3, "composerTaskInfor":Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v4, 0x0

    .line 380
    .local v4, "found":Z
    const-string v0, "com.android.cts.verifier"

    .line 381
    .local v0, "CtsPackage":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 382
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 383
    .local v7, "size":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 384
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 385
    .local v2, "appInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    const-string v8, "com.android.cts.verifier"

    iget-object v9, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 386
    const/4 v4, 0x1

    .line 390
    .end local v2    # "appInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 392
    .end local v5    # "index":I
    .end local v7    # "size":I
    :cond_1
    const-string v8, "ZenModeHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isCtsTest = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return v4

    .line 383
    .restart local v2    # "appInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v5    # "index":I
    .restart local v7    # "size":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private isDefaultMessagingApp(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 679
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    .line 680
    .local v1, "userId":I
    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 683
    :goto_0
    return v2

    .line 681
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sms_default_application"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 683
    .local v0, "defaultApp":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private isDefaultPhoneApp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 668
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    .line 669
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 671
    .local v0, "telecomm":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultPhoneApp()Landroid/content/ComponentName;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    .line 672
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default phone app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    .end local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 671
    .restart local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 674
    .end local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isEvent(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 659
    const-string v0, "event"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isMessage(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 687
    const-string v0, "msg"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->isDefaultMessagingApp(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSystem(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 649
    const-string v0, "sys"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private numberMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "incoming"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 930
    const-string v3, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numberMatch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const-string v3, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "normalize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const-string v3, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "normalize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 935
    :cond_0
    const-string v1, "ZenModeHelper"

    const-string v3, "null pointer"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 955
    :goto_0
    return v1

    .line 939
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 940
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 941
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 942
    const-string v2, "ZenModeHelper"

    const-string v3, "PhoneNumberUtils match"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 946
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-ne v3, v4, :cond_4

    .line 947
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 948
    .local v0, "index":I
    const-string v3, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    .line 950
    :cond_3
    const-string v2, "ZenModeHelper"

    const-string v3, "region match"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 954
    .end local v0    # "index":I
    :cond_4
    const-string v1, "ZenModeHelper"

    const-string v3, "not match"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 955
    goto :goto_0
.end method

.method private processResults(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 13
    .param p1, "cur"    # Landroid/database/Cursor;

    .prologue
    .line 224
    const-string v10, "ZenModeHelper"

    const-string v11, "processResults"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v4, 0x0

    .line 230
    .local v4, "phoneNumber":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 231
    const-string v10, "ZenModeHelper"

    const-string v11, "processResults error!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v10, 0x0

    .line 255
    :goto_0
    return-object v10

    .line 234
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 235
    const-string v10, "person"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 236
    .local v2, "nameColumn":I
    const-string v10, "address"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 237
    .local v3, "phoneColumn":I
    const-string v10, "body"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 238
    .local v6, "smsColumn":I
    const-string v10, "type"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 239
    .local v9, "typeColum":I
    const-string v10, "_id"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 242
    .local v0, "idColum":I
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 244
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 245
    .local v5, "sms":Ljava/lang/String;
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 246
    .local v8, "type":I
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 247
    .local v7, "smsid":I
    const-string v10, "ZenModeHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "name = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v10, "ZenModeHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "type = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v10, "ZenModeHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "phoneNumber="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v10, "ZenModeHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sms="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string v10, "ZenModeHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "idColum":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "nameColumn":I
    .end local v3    # "phoneColumn":I
    .end local v5    # "sms":Ljava/lang/String;
    .end local v6    # "smsColumn":I
    .end local v7    # "smsid":I
    .end local v8    # "type":I
    .end local v9    # "typeColum":I
    :cond_1
    move-object v10, v4

    .line 255
    goto/16 :goto_0
.end method

.method public static readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 129
    const/4 v2, 0x0

    .line 131
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    const v3, 0x1110003

    :try_start_0
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 132
    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 133
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 134
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v0, :cond_0

    .line 139
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 141
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :goto_0
    return-object v0

    .line 139
    :cond_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 141
    :goto_1
    new-instance v0, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ZenModeHelper"

    const-string v4, "Error reading default zen mode config from resource"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private sendIntent(Z)Z
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .line 440
    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIntent state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.TIME_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "enable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 443
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 444
    const/4 v1, 0x1

    return v1
.end method

.method private declared-synchronized setZenMode(ILjava/lang/String;Z)V
    .locals 3
    .param p1, "zenMode"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "setRingerMode"    # Z

    .prologue
    .line 418
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/notification/ZenLog;->traceSetZenMode(ILjava/lang/String;)V

    .line 419
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 428
    :goto_0
    monitor-exit p0

    return-void

    .line 420
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v0, p1}, Lcom/android/server/notification/ZenLog;->traceUpdateZenMode(II)V

    .line 421
    iput p1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 422
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 423
    if-eqz p3, :cond_1

    .line 424
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->applyZenToRingerMode()V

    .line 426
    :cond_1
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    .line 427
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    # invokes: Lcom/android/server/notification/ZenModeHelper$H;->postDispatchOnZenModeChanged()V
    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper$H;->access$100(Lcom/android/server/notification/ZenModeHelper$H;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private shouldInterceptAudience(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 397
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->audienceMatches(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    const-string v0, "!audienceMatches"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 399
    const/4 v0, 0x1

    .line 401
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zenModeFromListenerInterruptionFilter(II)I
    .locals 0
    .param p0, "listenerInterruptionFilter"    # I
    .param p1, "defValue"    # I

    .prologue
    .line 178
    packed-switch p0, :pswitch_data_0

    .line 186
    .end local p1    # "defValue":I
    :goto_0
    return p1

    .line 180
    .restart local p1    # "defValue":I
    :pswitch_0
    const/4 p1, 0x0

    goto :goto_0

    .line 182
    :pswitch_1
    const/4 p1, 0x1

    goto :goto_0

    .line 184
    :pswitch_2
    const/4 p1, 0x2

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/notification/ZenModeHelper$Callback;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public allowRepeatCall(Ljava/lang/String;)Z
    .locals 8
    .param p1, "imcomingNumber"    # Ljava/lang/String;

    .prologue
    .line 703
    const-string v4, "ZenModeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " allowRepeatCall "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", allowRepeatCalls="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v6, v6, Landroid/service/notification/ZenModeConfig;->allowRepeatCalls:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v0, 0x0

    .line 705
    .local v0, "allowAccess":Z
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v4, v4, Landroid/service/notification/ZenModeConfig;->allowRepeatCalls:Z

    if-nez v4, :cond_0

    .line 706
    const/4 v4, 0x0

    .line 727
    :goto_0
    return v4

    .line 709
    :cond_0
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mRecentCalls:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ZenModeHelper$IncomingCallInfo;

    .line 710
    .local v1, "callInfo":Lcom/android/server/notification/ZenModeHelper$IncomingCallInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 711
    .local v2, "now":J
    if-eqz v1, :cond_2

    .line 712
    const-string v4, "ZenModeHelper"

    const-string v5, "This is not first call."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-wide v4, v1, Lcom/android/server/notification/ZenModeHelper$IncomingCallInfo;->time:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0x2bf20

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 714
    const/4 v0, 0x1

    .line 718
    :goto_1
    iput-wide v2, v1, Lcom/android/server/notification/ZenModeHelper$IncomingCallInfo;->time:J

    .line 725
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->removeRedundent()V

    .line 726
    const-string v4, "ZenModeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allowAccess = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v0

    .line 727
    goto :goto_0

    .line 716
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 720
    :cond_2
    const-string v4, "ZenModeHelper"

    const-string v5, "call at first."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    new-instance v1, Lcom/android/server/notification/ZenModeHelper$IncomingCallInfo;

    .end local v1    # "callInfo":Lcom/android/server/notification/ZenModeHelper$IncomingCallInfo;
    invoke-direct {v1, p0, p1, v2, v3}, Lcom/android/server/notification/ZenModeHelper$IncomingCallInfo;-><init>(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/String;J)V

    .line 722
    .restart local v1    # "callInfo":Lcom/android/server/notification/ZenModeHelper$IncomingCallInfo;
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mRecentCalls:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 499
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mZenMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 500
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mConfig="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 502
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultConfig="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 503
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPreviousRingerMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mPreviousRingerMode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 504
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultPhoneApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 505
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEffectsSuppressed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/ZenModeHelper;->mEffectsSuppressed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 506
    return-void
.end method

.method public getConfig()Landroid/service/notification/ZenModeConfig;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method public getSmsNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 203
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "address"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "person"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "body"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "type"

    aput-object v1, v2, v0

    .line 205
    .local v2, "projection":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 207
    .local v8, "smsNumber":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "_id desc"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 209
    .local v7, "myCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 211
    :try_start_0
    invoke-direct {p0, v7}, Lcom/android/server/notification/ZenModeHelper;->processResults(Landroid/database/Cursor;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 215
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 218
    :cond_0
    :goto_0
    const-string v0, "ZenModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get sms number = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-object v8

    .line 212
    :catch_0
    move-exception v6

    .line 213
    .local v6, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "ZenModeHelper"

    const-string v1, "getSmsAndNumber error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v6    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getZenMode()I
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    return v0
.end method

.method public getZenModeListenerInterruptionFilter()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    packed-switch v0, :pswitch_data_0

    .line 172
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 166
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 168
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 170
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 663
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->isDefaultPhoneApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "call"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactUser(Ljava/lang/String;)Z
    .locals 12
    .param p1, "currentNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 825
    const-string v0, "ZenModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isContactUser currentNumber = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/4 v7, 0x0

    .line 827
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v10, ""

    .line 828
    .local v10, "number":Ljava/lang/String;
    const/4 v8, 0x0

    .line 829
    .local v8, "inAddressBook":Z
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v11

    const/4 v0, 0x1

    const-string v1, "data1"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "display_name"

    aput-object v1, v2, v0

    .line 835
    .local v2, "contactCulumn":[Ljava/lang/String;
    if-nez p1, :cond_0

    .line 836
    const-string v0, "ZenModeHelper"

    const-string v1, "current number is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 864
    :goto_0
    return v0

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 843
    if-nez v7, :cond_1

    .line 844
    const-string v0, "ZenModeHelper"

    const-string v1, "cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 845
    goto :goto_0

    .line 849
    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 850
    const-string v0, "data1"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 851
    const-string v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 852
    .local v9, "nameFieldColumnIndex":I
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 853
    .local v6, "contactName":Ljava/lang/String;
    invoke-direct {p0, v10}, Lcom/android/server/notification/ZenModeHelper;->filter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 854
    const-string v0, "ZenModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " contact number = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", contact Name ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    invoke-direct {p0, p1, v10}, Lcom/android/server/notification/ZenModeHelper;->numberMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 856
    const/4 v8, 0x1

    .line 857
    const-string v0, "ZenModeHelper"

    const-string v1, "I have found the user."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    .end local v6    # "contactName":Ljava/lang/String;
    .end local v9    # "nameFieldColumnIndex":I
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 864
    goto :goto_0

    .line 862
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public isInWhiteList(Ljava/lang/String;)Z
    .locals 6
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 877
    const/4 v0, 0x0

    .line 878
    .local v0, "found":Z
    if-nez p1, :cond_0

    .line 879
    const-string v4, "ZenModeHelper"

    const-string v5, "phone number is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const/4 v4, 0x0

    .line 894
    :goto_0
    return v4

    .line 882
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->queryAllWhiteList()Ljava/util/ArrayList;

    move-result-object v3

    .line 883
    .local v3, "whiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 884
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 885
    .local v2, "number":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->filter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 886
    invoke-direct {p0, p1, v2}, Lcom/android/server/notification/ZenModeHelper;->numberMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 887
    const-string v4, "ZenModeHelper"

    const-string v5, "ok,match"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const/4 v0, 0x1

    .line 892
    .end local v2    # "number":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move v4, v0

    .line 894
    goto :goto_0

    .line 883
    .restart local v2    # "number":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public matchesCallFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z
    .locals 9
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "validator"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p4, "contactsTimeoutMs"    # I
    .param p5, "timeoutAffinity"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 755
    iget v4, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 756
    .local v4, "zen":I
    const-string v6, "ZenModeHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "matchesCallFilter zen= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const/4 v0, 0x1

    .line 779
    .local v0, "allowCall":Z
    invoke-virtual {p3, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->getPhoneNumber(Landroid/os/UserHandle;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 780
    .local v3, "phoneNumber":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "not_disturb_mode"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 781
    .local v2, "noDisturbValue":I
    if-eqz v2, :cond_0

    move v1, v5

    .line 782
    .local v1, "noDisturbMode":Z
    :cond_0
    const-string v6, "ZenModeHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "matchesCallFilter noDisturbValue: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", allowWhiteList : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v8, v8, Landroid/service/notification/ZenModeConfig;->allowWhiteList:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const-string v6, "ZenModeHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "phoneNumber : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    if-eqz v1, :cond_2

    .line 786
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v6, v6, Landroid/service/notification/ZenModeConfig;->allowWhiteList:I

    if-nez v6, :cond_3

    .line 787
    const/4 v0, 0x0

    .line 793
    :goto_0
    const-string v5, "ZenModeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allowCall = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    if-nez v0, :cond_1

    .line 795
    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->allowRepeatCall(Ljava/lang/String;)Z

    move-result v0

    .line 797
    :cond_1
    const-string v5, "ZenModeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finally allowCall = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v0

    .line 800
    :cond_2
    return v5

    .line 788
    :cond_3
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v6, v6, Landroid/service/notification/ZenModeConfig;->allowWhiteList:I

    if-ne v6, v5, :cond_4

    .line 789
    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->isContactUser(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 791
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public matchesMessageFilter(Ljava/lang/String;)Z
    .locals 8
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 804
    const/4 v0, 0x1

    .line 805
    .local v0, "allowMessage":Z
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "not_disturb_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 806
    .local v2, "noDisturbValue":I
    if-eqz v2, :cond_0

    move v1, v3

    .line 807
    .local v1, "noDisturbMode":Z
    :goto_0
    const-string v5, "ZenModeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "matchesMessageFilter noDisturbValue: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", allowWhiteList : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v7, v7, Landroid/service/notification/ZenModeConfig;->allowWhiteList:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const-string v5, "ZenModeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "phoneNumber : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    if-eqz v1, :cond_3

    .line 810
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v5, v5, Landroid/service/notification/ZenModeConfig;->allowWhiteList:I

    if-nez v5, :cond_1

    .line 820
    :goto_1
    return v4

    .end local v1    # "noDisturbMode":Z
    :cond_0
    move v1, v4

    .line 806
    goto :goto_0

    .line 812
    .restart local v1    # "noDisturbMode":Z
    :cond_1
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v4, v4, Landroid/service/notification/ZenModeConfig;->allowWhiteList:I

    if-ne v4, v3, :cond_2

    .line 813
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->isContactUser(Ljava/lang/String;)Z

    move-result v0

    .line 817
    :goto_2
    const-string v3, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowMessage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v0

    .line 818
    goto :goto_1

    .line 815
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    :cond_3
    move v4, v3

    .line 820
    goto :goto_1
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;I)I
    .locals 6
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeInternal"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 602
    move v3, p2

    .line 603
    .local v3, "ringerModeInternalOut":I
    if-eq p1, p2, :cond_2

    move v0, v4

    .line 604
    .local v0, "isChange":Z
    :goto_0
    if-ne p4, v4, :cond_3

    move v1, v4

    .line 606
    .local v1, "isVibrate":Z
    :goto_1
    const/4 v2, -0x1

    .line 607
    .local v2, "newZen":I
    packed-switch p2, :pswitch_data_0

    .line 627
    :cond_0
    :goto_2
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 628
    const-string v4, "ringerModeExternal"

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;Z)V

    .line 631
    :cond_1
    invoke-static {p1, p2, p3, p4, v3}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeExternal(IILjava/lang/String;II)V

    .line 633
    return v3

    .end local v0    # "isChange":Z
    .end local v1    # "isVibrate":Z
    .end local v2    # "newZen":I
    :cond_2
    move v0, v5

    .line 603
    goto :goto_0

    .restart local v0    # "isChange":Z
    :cond_3
    move v1, v5

    .line 604
    goto :goto_1

    .line 609
    .restart local v1    # "isVibrate":Z
    .restart local v2    # "newZen":I
    :pswitch_0
    if-eqz v0, :cond_5

    .line 613
    const/4 v2, 0x2

    .line 614
    if-eqz v1, :cond_4

    move v3, v4

    :goto_3
    goto :goto_2

    :cond_4
    const/4 v3, 0x2

    goto :goto_3

    .line 617
    :cond_5
    move v3, p4

    .line 619
    goto :goto_2

    .line 622
    :pswitch_1
    iget v4, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v4, :cond_0

    .line 623
    const/4 v2, 0x0

    goto :goto_2

    .line 607
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;I)I
    .locals 7
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeExternal"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 564
    if-eq p1, p2, :cond_4

    const/4 v0, 0x1

    .line 566
    .local v0, "isChange":Z
    :goto_0
    move v2, p2

    .line 568
    .local v2, "ringerModeExternalOut":I
    const/4 v1, -0x1

    .line 569
    .local v1, "newZen":I
    packed-switch p2, :pswitch_data_0

    .line 588
    :cond_0
    :goto_1
    if-eq v1, v6, :cond_1

    .line 589
    const-string v4, "ringerModeInternal"

    invoke-direct {p0, v1, v4, v3}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;Z)V

    .line 592
    :cond_1
    if-nez v0, :cond_2

    if-ne v1, v6, :cond_2

    if-eq p4, v2, :cond_3

    .line 593
    :cond_2
    invoke-static {p1, p2, p3, p4, v2}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeInternal(IILjava/lang/String;II)V

    .line 596
    :cond_3
    return v2

    .end local v0    # "isChange":Z
    .end local v1    # "newZen":I
    .end local v2    # "ringerModeExternalOut":I
    :cond_4
    move v0, v3

    .line 564
    goto :goto_0

    .line 571
    .restart local v0    # "isChange":Z
    .restart local v1    # "newZen":I
    .restart local v2    # "ringerModeExternalOut":I
    :pswitch_0
    if-eqz v0, :cond_0

    .line 575
    const/4 v1, 0x2

    goto :goto_1

    .line 580
    :pswitch_1
    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    iget v4, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 582
    const/4 v1, 0x0

    goto :goto_1

    .line 583
    :cond_5
    iget v4, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v4, :cond_0

    .line 584
    const/4 v2, 0x0

    goto :goto_1

    .line 569
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onSystemReady()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public queryAllWhiteList()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 897
    const-string v0, "ZenModeHelper"

    const-string v3, "queryAllWhiteList"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const-string v6, "phonenumber"

    .line 899
    .local v6, "PHONENUMBER":Ljava/lang/String;
    const-string v0, "content://com.lenovo.vibeui.donotdisturbprovider/whitelist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 901
    .local v1, "CONTENT_URI":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 902
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 903
    .local v7, "count":I
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "phonenumber"

    aput-object v0, v2, v4

    .line 905
    .local v2, "cul":[Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 908
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 910
    if-eqz v8, :cond_1

    .line 911
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 912
    const-string v0, "ZenModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 914
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 915
    .local v11, "number":Ljava/lang/String;
    const-string v0, "ZenModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get a number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 919
    .end local v11    # "number":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 920
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ZenModeHelper"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 922
    if-eqz v8, :cond_0

    .line 923
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 926
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v10

    .line 922
    :cond_1
    if-eqz v8, :cond_0

    .line 923
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 922
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 923
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 510
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;)Z

    .line 513
    :cond_0
    return-void
.end method

.method public declared-synchronized readZenModeFromSetting()V
    .locals 4

    .prologue
    .line 454
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zen_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 456
    .local v0, "newMode":I
    const-string v1, "setting"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    monitor-exit p0

    return-void

    .line 454
    .end local v0    # "newMode":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/notification/ZenModeHelper$Callback;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method public removeRedundent()V
    .locals 10

    .prologue
    .line 731
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mRecentCalls:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 732
    .local v1, "it":Ljava/util/Iterator;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 734
    .local v2, "now":J
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 735
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 736
    .local v5, "obj":Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$IncomingCallInfo;

    .line 737
    .local v0, "callInfo":Lcom/android/server/notification/ZenModeHelper$IncomingCallInfo;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 738
    .local v4, "number":Ljava/lang/String;
    const-string v6, "ZenModeHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "travel recent call number:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-wide v6, v0, Lcom/android/server/notification/ZenModeHelper$IncomingCallInfo;->time:J

    sub-long v6, v2, v6

    const-wide/32 v8, 0x1b7740

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 740
    const-string v6, "ZenModeHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remove number "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 744
    .end local v0    # "callInfo":Lcom/android/server/notification/ZenModeHelper$IncomingCallInfo;
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "obj":Ljava/util/Map$Entry;
    :cond_1
    return-void
.end method

.method public requestFromListener(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "interruptionFilter"    # I

    .prologue
    const/4 v1, -0x1

    .line 191
    invoke-static {p2, v1}, Lcom/android/server/notification/ZenModeHelper;->zenModeFromListenerInterruptionFilter(II)I

    move-result v0

    .line 192
    .local v0, "newZen":I
    if-eq v0, v1, :cond_0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 195
    :cond_0
    return-void

    .line 193
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 4
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    const/4 v1, 0x1

    .line 524
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->isValid()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 532
    :cond_1
    :goto_0
    return v1

    .line 525
    :cond_2
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v2}, Landroid/service/notification/ZenModeConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 526
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v2, p1}, Lcom/android/server/notification/ZenLog;->traceConfig(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    .line 527
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 528
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnConfigChanged()V

    .line 529
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "val":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "zen_mode_config_etag"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 531
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    goto :goto_0
.end method

.method public setEffectsSuppressed(Z)V
    .locals 1
    .param p1, "effectsSuppressed"    # Z

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/android/server/notification/ZenModeHelper;->mEffectsSuppressed:Z

    if-ne v0, p1, :cond_0

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/notification/ZenModeHelper;->mEffectsSuppressed:Z

    .line 263
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions()V

    goto :goto_0
.end method

.method public setNotDisturbMode(ILjava/lang/String;)V
    .locals 5
    .param p1, "notDusturbModeValue"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 431
    invoke-static {p1, p2}, Lcom/android/server/notification/ZenLog;->traceSetZenMode(ILjava/lang/String;)V

    .line 433
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "not_disturb_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 434
    .local v0, "oldValue":I
    invoke-static {v0, p1}, Lcom/android/server/notification/ZenLog;->traceUpdateZenMode(II)V

    .line 435
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "not_disturb_mode"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 436
    if-ne p1, v1, :cond_0

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->sendIntent(Z)Z

    .line 437
    return-void

    :cond_0
    move v1, v2

    .line 436
    goto :goto_0
.end method

.method public setZenMode(ILjava/lang/String;)V
    .locals 1
    .param p1, "zenMode"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 409
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;Z)V

    .line 410
    return-void
.end method

.method public shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 9
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 268
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "not_disturb_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 269
    .local v2, "noDisturbValue":I
    if-eqz v2, :cond_1

    move v1, v4

    .line 270
    .local v1, "noDisturbMode":Z
    :goto_0
    const-string v6, "ZenModeHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " noDisturbValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->isSystem(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 370
    :cond_0
    :goto_1
    return v5

    .end local v1    # "noDisturbMode":Z
    :cond_1
    move v1, v5

    .line 269
    goto :goto_0

    .line 275
    .restart local v1    # "noDisturbMode":Z
    :cond_2
    iget v6, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 336
    :pswitch_0
    const-string v6, "ZenModeHelper"

    const-string v7, "shouldIntercept 13.5 "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/server/notification/ZenModeHelper;->isCtsTest(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 340
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->isMessage(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 341
    const-string v6, "ZenModeHelper"

    const-string v7, "shouldIntercept 13.6"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/server/notification/ZenModeHelper;->isCtsTest(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 343
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/android/server/notification/ZenModeHelper;->getSmsNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, "phoneNumber":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->matchesMessageFilter(Ljava/lang/String;)Z

    move-result v0

    .line 345
    .local v0, "important":Z
    const-string v6, "ZenModeHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "important = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    if-nez v0, :cond_0

    move v5, v4

    goto :goto_1

    .line 278
    .end local v0    # "important":Z
    .end local v3    # "phoneNumber":Ljava/lang/String;
    :pswitch_1
    const-string v5, "none"

    invoke-static {p1, v5}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v5, v4

    .line 279
    goto :goto_1

    .line 282
    :pswitch_2
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->isAlarm(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 287
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 288
    const-string v4, "priorityApp"

    invoke-static {p1, v4}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    goto :goto_1

    .line 291
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 299
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldInterceptAudience(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v5

    goto :goto_1

    .line 301
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->isMessage(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 311
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/server/notification/ZenModeHelper;->isCtsTest(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 312
    const-string v6, "ZenModeHelper"

    const-string v7, "zen mode helper this is not  cts test"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/android/server/notification/ZenModeHelper;->getSmsNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 315
    .restart local v3    # "phoneNumber":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/server/notification/ZenModeHelper;->matchesMessageFilter(Ljava/lang/String;)Z

    move-result v0

    .line 316
    .restart local v0    # "important":Z
    const-string v6, "ZenModeHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "important = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    if-nez v0, :cond_0

    move v5, v4

    goto/16 :goto_1

    .line 319
    .end local v0    # "important":Z
    .end local v3    # "phoneNumber":Ljava/lang/String;
    :cond_5
    const-string v4, "ZenModeHelper"

    const-string v5, "zen mode helper cts test"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldInterceptAudience(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v5

    goto/16 :goto_1

    .line 324
    :cond_6
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->isEvent(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 326
    if-eqz v1, :cond_0

    .line 327
    const-string v5, "!allowEvents"

    invoke-static {p1, v5}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v5, v4

    .line 328
    goto/16 :goto_1

    .line 332
    :cond_7
    const-string v5, "!priority"

    invoke-static {p1, v5}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v5, v4

    .line 333
    goto/16 :goto_1

    .line 348
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldInterceptAudience(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v5

    goto/16 :goto_1

    .line 351
    :cond_9
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->isEvent(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 352
    const-string v6, "ZenModeHelper"

    const-string v7, "shouldIntercept 13.7 "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    if-eqz v1, :cond_0

    .line 354
    const-string v5, "!allowEvents"

    invoke-static {p1, v5}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v5, v4

    .line 355
    goto/16 :goto_1

    .line 361
    :cond_a
    if-eqz v1, :cond_0

    .line 362
    const-string v5, "ZenModeHelper"

    const-string v6, " other notification"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 363
    goto/16 :goto_1

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 962
    const-string v0, "ZenModeHelper"

    return-object v0
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 1
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 517
    return-void
.end method
