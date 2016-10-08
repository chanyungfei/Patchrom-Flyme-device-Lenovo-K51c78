.class public Lcom/android/server/notification/ConditionProviders;
.super Lcom/android/server/notification/ManagedServices;
.source "ConditionProviders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ConditionProviders$1;,
        Lcom/android/server/notification/ConditionProviders$ConditionRecord;,
        Lcom/android/server/notification/ConditionProviders$ZenModeHelperCallback;
    }
.end annotation


# static fields
.field private static final NO_CONDITIONS:[Landroid/service/notification/Condition;


# instance fields
.field MyTAG:Ljava/lang/String;

.field private final mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

.field private final mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

.field private mExitCondition:Landroid/service/notification/Condition;

.field private mExitConditionComponent:Landroid/content/ComponentName;

.field private final mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/service/notification/IConditionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNextAlarm:Lcom/android/server/notification/NextAlarmConditionProvider;

.field private final mNextAlarmTracker:Lcom/android/server/notification/NextAlarmTracker;

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/ConditionProviders$ConditionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemConditionProviders:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/service/notification/Condition;

    sput-object v0, Lcom/android/server/notification/ConditionProviders;->NO_CONDITIONS:[Landroid/service/notification/Condition;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/notification/ManagedServices$UserProfiles;Lcom/android/server/notification/ZenModeHelper;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userProfiles"    # Lcom/android/server/notification/ManagedServices$UserProfiles;
    .param p4, "zenModeHelper"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    const/4 v4, 0x0

    .line 70
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, v3, p3}, Lcom/android/server/notification/ManagedServices;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    .line 56
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    .line 58
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    .line 284
    const-string v3, "ConditionProviders"

    iput-object v3, p0, Lcom/android/server/notification/ConditionProviders;->MyTAG:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 72
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v5, Lcom/android/server/notification/ConditionProviders$ZenModeHelperCallback;

    invoke-direct {v5, p0, v4}, Lcom/android/server/notification/ConditionProviders$ZenModeHelperCallback;-><init>(Lcom/android/server/notification/ConditionProviders;Lcom/android/server/notification/ConditionProviders$1;)V

    invoke-virtual {v3, v5}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 73
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    const-string v5, "system.condition.providers"

    const v6, 0x107003f

    invoke-static {v3, v5, v6}, Lcom/android/server/notification/PropConfig;->getStringArray(Landroid/content/Context;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/notification/ConditionProviders;->safeSet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    .line 76
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    const-string v5, "countdown"

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 77
    .local v0, "countdown":Z
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    const-string v5, "downtime"

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 78
    .local v1, "downtime":Z
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    const-string v5, "next_alarm"

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 79
    .local v2, "nextAlarm":Z
    if-nez v1, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    new-instance v3, Lcom/android/server/notification/NextAlarmTracker;

    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/server/notification/NextAlarmTracker;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarmTracker:Lcom/android/server/notification/NextAlarmTracker;

    .line 80
    if-eqz v0, :cond_3

    new-instance v3, Lcom/android/server/notification/CountdownConditionProvider;

    invoke-direct {v3}, Lcom/android/server/notification/CountdownConditionProvider;-><init>()V

    :goto_1
    iput-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    .line 81
    if-eqz v1, :cond_4

    new-instance v3, Lcom/android/server/notification/DowntimeConditionProvider;

    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarmTracker:Lcom/android/server/notification/NextAlarmTracker;

    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {v3, p0, v5, v6}, Lcom/android/server/notification/DowntimeConditionProvider;-><init>(Lcom/android/server/notification/ConditionProviders;Lcom/android/server/notification/NextAlarmTracker;Lcom/android/server/notification/ZenModeHelper;)V

    :goto_2
    iput-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    .line 83
    if-eqz v2, :cond_1

    new-instance v4, Lcom/android/server/notification/NextAlarmConditionProvider;

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarmTracker:Lcom/android/server/notification/NextAlarmTracker;

    invoke-direct {v4, v3}, Lcom/android/server/notification/NextAlarmConditionProvider;-><init>(Lcom/android/server/notification/NextAlarmTracker;)V

    :cond_1
    iput-object v4, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarm:Lcom/android/server/notification/NextAlarmConditionProvider;

    .line 84
    invoke-direct {p0}, Lcom/android/server/notification/ConditionProviders;->loadZenConfig()V

    .line 85
    return-void

    :cond_2
    move-object v3, v4

    .line 79
    goto :goto_0

    :cond_3
    move-object v3, v4

    .line 80
    goto :goto_1

    :cond_4
    move-object v3, v4

    .line 81
    goto :goto_2
.end method

.method static synthetic access$200(Lcom/android/server/notification/ConditionProviders;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/ConditionProviders;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/server/notification/ConditionProviders;->loadZenConfig()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/ZenModeHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ConditionProviders;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    return-object v0
.end method

.method private autoSwitchTime()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 375
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->MyTAG:Ljava/lang/String;

    const-string v5, "autoSwitchTime "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v1, 0x0

    .line 377
    .local v1, "notDistubmodeTurnOff":I
    const/4 v2, 0x1

    .line 379
    .local v2, "notDistubmodeTurnOn":I
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "not_disturb_mode"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 380
    .local v3, "notDisturbmode":I
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notDisturbmode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 382
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "config.timeSwitch= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Landroid/service/notification/ZenModeConfig;->timeSwitch:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-boolean v4, v0, Landroid/service/notification/ZenModeConfig;->timeSwitch:Z

    if-nez v4, :cond_1

    .line 384
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->MyTAG:Ljava/lang/String;

    const-string v5, "auto switch is closed, so it is no need to switch mode."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget v4, v0, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    iget v5, v0, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/notification/ConditionProviders;->isSpecifiedTime(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 388
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    const-string v5, "enter not disturb mode"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    if-eq v3, v8, :cond_0

    .line 390
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    const-string v5, "start switch to not disturb mode"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v5, "automaticConditionEnter"

    invoke-virtual {v4, v8, v5}, Lcom/android/server/notification/ZenModeHelper;->setNotDisturbMode(ILjava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_2
    iget v4, v0, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    iget v5, v0, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/notification/ConditionProviders;->isSpecifiedTime(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 394
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    const-string v5, "exit not disturb mode"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    if-eqz v3, :cond_0

    .line 396
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    const-string v5, "start switch to not disturb mode"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v5, "automaticConditionExit"

    invoke-virtual {v4, v7, v5}, Lcom/android/server/notification/ZenModeHelper;->setNotDisturbMode(ILjava/lang/String;)V

    goto :goto_0

    .line 400
    :cond_3
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    const-string v5, "other time"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget v4, v0, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    iget v5, v0, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    iget v6, v0, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    iget v7, v0, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/server/notification/ConditionProviders;->tryAdjustStat(IIII)Z

    goto :goto_0
.end method

.method private ensureRecordExists(Landroid/service/notification/Condition;Landroid/service/notification/IConditionProvider;Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "condition"    # Landroid/service/notification/Condition;
    .param p2, "provider"    # Landroid/service/notification/IConditionProvider;
    .param p3, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 479
    iget-object v1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-direct {p0, v1, p3}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v0

    .line 480
    .local v0, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v1, :cond_0

    .line 482
    invoke-virtual {p0, p2}, Lcom/android/server/notification/ConditionProviders;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 484
    :cond_0
    return-void
.end method

.method private getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    .locals 4
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 272
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 273
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 274
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 275
    .local v2, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 281
    :goto_1
    return-object v2

    .line 273
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_1
    new-instance v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/android/server/notification/ConditionProviders$ConditionRecord;-><init>(Landroid/net/Uri;Landroid/content/ComponentName;Lcom/android/server/notification/ConditionProviders$1;)V

    .line 280
    .restart local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private isSpecifiedTime(II)Z
    .locals 11
    .param p1, "specifiedHour"    # I
    .param p2, "specifiedMinute"    # I

    .prologue
    const/4 v7, 0x1

    .line 286
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 287
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 288
    .local v6, "year":I
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 289
    .local v4, "month":I
    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 290
    .local v1, "date":I
    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 291
    .local v2, "hour":I
    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 292
    .local v3, "minute":I
    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 293
    .local v5, "second":I
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->MyTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->MyTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "specifiedHour:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",specifiedMinute: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    if-ne v2, p1, :cond_0

    if-ne v3, p2, :cond_0

    .line 297
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->MyTAG:Ljava/lang/String;

    const-string v9, "ok ,This is the specified time!"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private loadZenConfig()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 646
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v7}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 647
    .local v3, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v3, :cond_1

    .line 648
    iget-boolean v7, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    const-string v8, "loadZenConfig: no config"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v8

    .line 652
    :try_start_0
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    iget-object v9, v3, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    invoke-static {v7, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v1, 0x1

    .line 653
    .local v1, "changingExit":Z
    :cond_2
    iget-object v7, v3, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    iput-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    .line 654
    iget-object v7, v3, Landroid/service/notification/ZenModeConfig;->exitConditionComponent:Landroid/content/ComponentName;

    iput-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    .line 655
    if-eqz v1, :cond_3

    .line 656
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    iget-object v9, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    const-string v10, "config"

    invoke-static {v7, v9, v10}, Lcom/android/server/notification/ZenLog;->traceExitCondition(Landroid/service/notification/Condition;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 658
    :cond_3
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    if-eqz v7, :cond_4

    .line 659
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-virtual {v7, v3}, Lcom/android/server/notification/DowntimeConditionProvider;->setConfig(Landroid/service/notification/ZenModeConfig;)V

    .line 661
    :cond_4
    iget-object v7, v3, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    if-eqz v7, :cond_5

    iget-object v7, v3, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    if-eqz v7, :cond_5

    iget-object v7, v3, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    array-length v7, v7

    iget-object v9, v3, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    array-length v9, v9

    if-eq v7, v9, :cond_7

    .line 663
    :cond_5
    iget-boolean v7, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    const-string v9, "loadZenConfig: no conditions"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_6
    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, v7, v9}, Lcom/android/server/notification/ConditionProviders;->setAutomaticZenModeConditions([Landroid/net/Uri;Z)V

    .line 665
    monitor-exit v8

    goto :goto_0

    .line 679
    .end local v1    # "changingExit":Z
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 667
    .restart local v1    # "changingExit":Z
    :cond_7
    :try_start_1
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 668
    .local v6, "newIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    iget-object v7, v3, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    array-length v0, v7

    .line 669
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_9

    .line 670
    iget-object v7, v3, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    aget-object v2, v7, v4

    .line 671
    .local v2, "component":Landroid/content/ComponentName;
    iget-object v7, v3, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    aget-object v5, v7, v4

    .line 672
    .local v5, "id":Landroid/net/Uri;
    if-eqz v2, :cond_8

    if-eqz v5, :cond_8

    .line 673
    invoke-direct {p0, v5, v2}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 674
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 669
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 677
    .end local v2    # "component":Landroid/content/ComponentName;
    .end local v5    # "id":Landroid/net/Uri;
    :cond_9
    iget-boolean v7, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadZenConfig: N="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_a
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v7

    new-array v7, v7, [Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-direct {p0, v7, v9}, Lcom/android/server/notification/ConditionProviders;->setAutomaticZenModeConditions([Landroid/net/Uri;Z)V

    .line 679
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private onManualConditionClearing()V
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-virtual {v0}, Lcom/android/server/notification/DowntimeConditionProvider;->onManualConditionClearing()V

    .line 717
    :cond_0
    return-void
.end method

.method private static provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;
    .locals 1
    .param p0, "r"    # Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .prologue
    .line 619
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    invoke-static {v0}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    goto :goto_0
.end method

.method private static provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;
    .locals 1
    .param p0, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 623
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/IConditionProvider;

    goto :goto_0
.end method

.method private requestConditionsLocked(I)V
    .locals 9
    .param p1, "flags"    # I

    .prologue
    .line 627
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 628
    .local v3, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-static {v3}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    move-result-object v4

    .line 629
    .local v4, "provider":Landroid/service/notification/IConditionProvider;
    if-eqz v4, :cond_0

    .line 631
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 632
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 633
    .local v5, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-eq v6, v3, :cond_2

    .line 631
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 634
    :cond_2
    iget-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    if-nez v6, :cond_1

    iget-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-nez v6, :cond_1

    .line 635
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 638
    .end local v5    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_3
    :try_start_0
    invoke-interface {v4, p1}, Landroid/service/notification/IConditionProvider;->onRequestConditions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error requesting conditions from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 643
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v3    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v4    # "provider":Landroid/service/notification/IConditionProvider;
    :cond_4
    return-void
.end method

.method private static varargs safeSet([Ljava/lang/Object;)Landroid/util/ArraySet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Landroid/util/ArraySet",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 544
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 545
    .local v3, "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_1

    .line 553
    :cond_0
    return-object v3

    .line 546
    :cond_1
    array-length v0, p0

    .line 547
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 548
    aget-object v2, p0, v1

    .line 549
    .local v2, "item":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_2

    .line 550
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 547
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private saveZenConfigLocked()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 683
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v6}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 684
    .local v3, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v3, :cond_0

    .line 711
    :goto_0
    return-void

    .line 685
    :cond_0
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 686
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 687
    .local v1, "automatic":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/ConditionProviders$ConditionRecord;>;"
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 688
    .local v2, "automaticN":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 689
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 690
    .local v5, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-eqz v6, :cond_1

    .line 691
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 694
    .end local v5    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 695
    iput-object v7, v3, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    .line 696
    iput-object v7, v3, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    .line 707
    :cond_3
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    iput-object v6, v3, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    .line 708
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    iput-object v6, v3, Landroid/service/notification/ZenModeConfig;->exitConditionComponent:Landroid/content/ComponentName;

    .line 709
    iget-boolean v6, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting zen config to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_4
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v6, v3}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;)Z

    goto :goto_0

    .line 698
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 699
    .local v0, "N":I
    new-array v6, v0, [Landroid/content/ComponentName;

    iput-object v6, v3, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    .line 700
    new-array v6, v0, [Landroid/net/Uri;

    iput-object v6, v3, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    .line 701
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_3

    .line 702
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 703
    .restart local v5    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v6, v3, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    iget-object v7, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    aput-object v7, v6, v4

    .line 704
    iget-object v6, v3, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    iget-object v7, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    aput-object v7, v6, v4

    .line 701
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private setAutomaticZenModeConditions([Landroid/net/Uri;Z)V
    .locals 9
    .param p1, "conditionIds"    # [Landroid/net/Uri;
    .param p2, "save"    # Z

    .prologue
    .line 561
    iget-boolean v6, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAutomaticZenModeConditions "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez p1, :cond_2

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_0
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v7

    .line 564
    :try_start_0
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->safeSet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v4

    .line 565
    .local v4, "newIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 566
    .local v0, "N":I
    const/4 v2, 0x0

    .line 567
    .local v2, "changed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 568
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 569
    .local v5, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 570
    .local v1, "automatic":Z
    iget-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-nez v6, :cond_3

    if-eqz v1, :cond_3

    .line 572
    invoke-direct {p0, v5}, Lcom/android/server/notification/ConditionProviders;->subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 573
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    const/4 v2, 0x1

    .line 567
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 561
    .end local v0    # "N":I
    .end local v1    # "automatic":Z
    .end local v2    # "changed":Z
    .end local v3    # "i":I
    .end local v4    # "newIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    .end local v5    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_0

    .line 575
    .restart local v0    # "N":I
    .restart local v1    # "automatic":Z
    .restart local v2    # "changed":Z
    .restart local v3    # "i":I
    .restart local v4    # "newIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    .restart local v5    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_3
    :try_start_1
    iget-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-eqz v6, :cond_1

    if-nez v1, :cond_1

    .line 577
    invoke-direct {p0, v5}, Lcom/android/server/notification/ConditionProviders;->unsubscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 578
    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    .line 579
    const/4 v2, 0x1

    goto :goto_2

    .line 582
    .end local v1    # "automatic":Z
    .end local v5    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_4
    if-eqz p2, :cond_5

    if-eqz v2, :cond_5

    .line 583
    invoke-direct {p0}, Lcom/android/server/notification/ConditionProviders;->saveZenConfigLocked()V

    .line 585
    :cond_5
    monitor-exit v7

    .line 586
    return-void

    .line 585
    .end local v0    # "N":I
    .end local v2    # "changed":Z
    .end local v3    # "i":I
    .end local v4    # "newIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .prologue
    .line 527
    iget-boolean v3, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subscribeLocked "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_0
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;

    move-result-object v1

    .line 529
    .local v1, "provider":Landroid/service/notification/IConditionProvider;
    const/4 v2, 0x0

    .line 530
    .local v2, "re":Landroid/os/RemoteException;
    if-eqz v1, :cond_1

    .line 532
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Subscribing to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v3, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-interface {v1, v3}, Landroid/service/notification/IConditionProvider;->onSubscribe(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    :goto_1
    invoke-static {v3, v1, v2}, Lcom/android/server/notification/ZenLog;->traceSubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V

    .line 540
    return-void

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error subscribing to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 536
    move-object v2, v0

    goto :goto_0

    .line 539
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private unsubscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .prologue
    .line 604
    iget-boolean v3, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unsubscribeLocked "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_0
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;

    move-result-object v1

    .line 606
    .local v1, "provider":Landroid/service/notification/IConditionProvider;
    const/4 v2, 0x0

    .line 607
    .local v2, "re":Landroid/os/RemoteException;
    if-eqz v1, :cond_1

    .line 609
    :try_start_0
    iget-object v3, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-interface {v1, v3}, Landroid/service/notification/IConditionProvider;->onUnsubscribe(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    :goto_1
    invoke-static {v3, v1, v2}, Lcom/android/server/notification/ZenLog;->traceUnsubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V

    .line 616
    return-void

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error unsubscribing to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 612
    move-object v2, v0

    goto :goto_0

    .line 615
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private validateConditions(Ljava/lang/String;[Landroid/service/notification/Condition;)[Landroid/service/notification/Condition;
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    const/4 v3, 0x0

    .line 247
    if-eqz p2, :cond_0

    array-length v5, p2

    if-nez v5, :cond_2

    :cond_0
    move-object p2, v3

    .line 268
    .end local p2    # "conditions":[Landroid/service/notification/Condition;
    :cond_1
    :goto_0
    return-object p2

    .line 248
    .restart local p2    # "conditions":[Landroid/service/notification/Condition;
    :cond_2
    array-length v0, p2

    .line 249
    .local v0, "N":I
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 250
    .local v4, "valid":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/Uri;Landroid/service/notification/Condition;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 251
    aget-object v5, p2, v1

    iget-object v2, v5, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 252
    .local v2, "id":Landroid/net/Uri;
    invoke-static {v2, p1}, Landroid/service/notification/Condition;->isValidId(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 253
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring condition from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for invalid id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 256
    :cond_3
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 257
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring condition from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for duplicate id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 260
    :cond_4
    aget-object v5, p2, v1

    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 262
    .end local v2    # "id":Landroid/net/Uri;
    :cond_5
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-nez v5, :cond_6

    move-object p2, v3

    goto :goto_0

    .line 263
    :cond_6
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-eq v5, v0, :cond_1

    .line 264
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    new-array v3, v5, [Landroid/service/notification/Condition;

    .line 265
    .local v3, "rt":[Landroid/service/notification/Condition;
    const/4 v1, 0x0

    :goto_3
    array-length v5, v3

    if-ge v1, v5, :cond_7

    .line 266
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/Condition;

    aput-object v5, v3, v1

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    move-object p2, v3

    .line 268
    goto/16 :goto_0
.end method


# virtual methods
.method protected asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 141
    invoke-static {p1}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    return-object v0
.end method

.method public checkServiceToken(Landroid/service/notification/IConditionProvider;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .locals 2
    .param p1, "provider"    # Landroid/service/notification/IConditionProvider;

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ConditionProviders;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 106
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v4

    .line 107
    if-nez p2, :cond_0

    .line 108
    :try_start_0
    const-string v3, "    mListeners("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "):"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 110
    const-string v3, "      "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "i":I
    :cond_0
    const-string v3, "    mRecords("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "):"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 115
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 116
    .local v2, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-eqz p2, :cond_2

    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 114
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    :cond_2
    const-string v3, "      "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 118
    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/server/notification/CountdownConditionProvider;->tryParseDescription(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "countdownDesc":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 120
    const-string v3, "        ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 123
    .end local v0    # "countdownDesc":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i":I
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    const-string v3, "    mSystemConditionProviders: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 125
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    if-eqz v3, :cond_4

    .line 126
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/CountdownConditionProvider;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 128
    :cond_4
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    if-eqz v3, :cond_5

    .line 129
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/DowntimeConditionProvider;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 131
    :cond_5
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarm:Lcom/android/server/notification/NextAlarmConditionProvider;

    if-eqz v3, :cond_6

    .line 132
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarm:Lcom/android/server/notification/NextAlarmConditionProvider;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/NextAlarmConditionProvider;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 134
    :cond_6
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarmTracker:Lcom/android/server/notification/NextAlarmTracker;

    if-eqz v3, :cond_7

    .line 135
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarmTracker:Lcom/android/server/notification/NextAlarmTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/NextAlarmTracker;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 137
    :cond_7
    return-void
.end method

.method public getAutomaticZenModeConditions()[Landroid/service/notification/Condition;
    .locals 6

    .prologue
    .line 589
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v5

    .line 590
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 591
    .local v0, "N":I
    const/4 v3, 0x0

    .line 592
    .local v3, "rt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/Condition;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 593
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 594
    .local v2, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-boolean v4, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;

    if-eqz v4, :cond_1

    .line 595
    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "rt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/Condition;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 596
    .restart local v3    # "rt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/Condition;>;"
    :cond_0
    iget-object v4, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 599
    .end local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_2
    if-nez v3, :cond_3

    sget-object v4, Lcom/android/server/notification/ConditionProviders;->NO_CONDITIONS:[Landroid/service/notification/Condition;

    :goto_1
    monitor-exit v5

    return-object v4

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/service/notification/Condition;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/service/notification/Condition;

    goto :goto_1

    .line 600
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "rt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/Condition;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected getConfig()Lcom/android/server/notification/ManagedServices$Config;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lcom/android/server/notification/ManagedServices$Config;

    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$Config;-><init>()V

    .line 94
    .local v0, "c":Lcom/android/server/notification/ManagedServices$Config;
    const-string v1, "condition provider"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 95
    const-string v1, "android.service.notification.ConditionProviderService"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    .line 96
    const-string v1, "enabled_condition_providers"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 97
    const-string v1, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 98
    const-string v1, "android.settings.ACTION_CONDITION_PROVIDER_SETTINGS"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    .line 99
    const v1, 0x1040553

    iput v1, v0, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    .line 100
    return-object v0
.end method

.method public isInNotDisturbTime(IIII)Z
    .locals 23
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I

    .prologue
    .line 304
    const/4 v11, 0x0

    .line 305
    .local v11, "needAdjust":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 306
    .local v4, "currentTime":Ljava/util/Calendar;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 307
    .local v17, "year":I
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 308
    .local v10, "month":I
    const/16 v20, 0x5

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 309
    .local v5, "date":I
    const/16 v20, 0xb

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 310
    .local v8, "hour":I
    const/16 v20, 0xc

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 311
    .local v9, "minute":I
    const/16 v20, 0xd

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v16

    .line 313
    .local v16, "second":I
    mul-int/lit8 v20, v8, 0x3c

    add-int v20, v20, v9

    move/from16 v0, v20

    int-to-long v14, v0

    .line 314
    .local v14, "nowTime":J
    mul-int/lit8 v20, p1, 0x3c

    add-int v20, v20, p2

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 315
    .local v18, "startTime":J
    mul-int/lit8 v20, p3, 0x3c

    add-int v20, v20, p4

    move/from16 v0, v20

    int-to-long v6, v0

    .line 317
    .local v6, "endTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " current time: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " start time: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " end time: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " nowTime = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " startTime = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " endTime = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    cmp-long v20, v18, v6

    if-lez v20, :cond_0

    .line 325
    const-wide/16 v20, 0x5a0

    add-long v6, v6, v20

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " add endTime = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    cmp-long v20, v14, v18

    if-ltz v20, :cond_1

    cmp-long v20, v14, v6

    if-gtz v20, :cond_1

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, " this is in Not DisturbTime "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v11, 0x1

    .line 342
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " needAdjust = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return v11

    .line 332
    :cond_1
    const-wide/16 v20, 0x5a0

    add-long v12, v14, v20

    .line 333
    .local v12, "nextDayTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "nextDayTime : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    cmp-long v20, v12, v18

    if-ltz v20, :cond_2

    cmp-long v20, v12, v6

    if-gtz v20, :cond_2

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, " this is  in DisturbTime 2"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v11, 0x1

    goto :goto_0

    .line 338
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, " this is not in DisturbTime"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public isSystemConditionProviderEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public notifyConditions(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;[Landroid/service/notification/Condition;)V
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p3, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    const/4 v5, 0x0

    .line 405
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->MyTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyConditions pkg="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " info="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " conditions="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p3, :cond_2

    move-object v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v6

    .line 408
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyConditions pkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " info="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " conditions="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p3, :cond_3

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/notification/ConditionProviders;->validateConditions(Ljava/lang/String;[Landroid/service/notification/Condition;)[Landroid/service/notification/Condition;

    move-result-object p3

    .line 411
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "conditions "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    if-eqz p3, :cond_1

    array-length v4, p3

    if-nez v4, :cond_4

    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    :goto_2
    return-void

    .line 405
    :cond_2
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 408
    :cond_3
    :try_start_1
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_1

    .line 413
    :cond_4
    array-length v0, p3

    .line 414
    .local v0, "N":I
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/IConditionListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    .local v3, "listener":Landroid/service/notification/IConditionListener;
    :try_start_2
    invoke-interface {v3, p3}, Landroid/service/notification/IConditionListener;->onConditionsReceived([Landroid/service/notification/Condition;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 417
    :catch_0
    move-exception v1

    .line 418
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error sending conditions to listener "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 472
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listener":Landroid/service/notification/IConditionListener;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 421
    .restart local v0    # "N":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/notification/ConditionProviders;->autoSwitchTime()V

    .line 472
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public onBootPhaseAppsCanStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 146
    invoke-super {p0}, Lcom/android/server/notification/ManagedServices;->onBootPhaseAppsCanStart()V

    .line 147
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarmTracker:Lcom/android/server/notification/NextAlarmTracker;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarmTracker:Lcom/android/server/notification/NextAlarmTracker;

    invoke-virtual {v0}, Lcom/android/server/notification/NextAlarmTracker;->init()V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/CountdownConditionProvider;->attachBase(Landroid/content/Context;)V

    .line 152
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    invoke-virtual {v0}, Lcom/android/server/notification/CountdownConditionProvider;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/CountdownConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/ConditionProviders;->registerService(Landroid/os/IInterface;Landroid/content/ComponentName;I)V

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/DowntimeConditionProvider;->attachBase(Landroid/content/Context;)V

    .line 157
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-virtual {v0}, Lcom/android/server/notification/DowntimeConditionProvider;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/DowntimeConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/ConditionProviders;->registerService(Landroid/os/IInterface;Landroid/content/ComponentName;I)V

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarm:Lcom/android/server/notification/NextAlarmConditionProvider;

    if-eqz v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarm:Lcom/android/server/notification/NextAlarmConditionProvider;

    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NextAlarmConditionProvider;->attachBase(Landroid/content/Context;)V

    .line 162
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarm:Lcom/android/server/notification/NextAlarmConditionProvider;

    invoke-virtual {v0}, Lcom/android/server/notification/NextAlarmConditionProvider;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/NextAlarmConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/ConditionProviders;->registerService(Landroid/os/IInterface;Landroid/content/ComponentName;I)V

    .line 165
    :cond_3
    return-void
.end method

.method protected onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 8
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 177
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    move-result-object v3

    .line 179
    .local v3, "provider":Landroid/service/notification/IConditionProvider;
    :try_start_0
    invoke-interface {v3}, Landroid/service/notification/IConditionProvider;->onConnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v6

    .line 184
    :try_start_1
    iget-object v5, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 186
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    iget-object v5, v5, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v5, v7}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v2

    .line 188
    .local v2, "manualRecord":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    .line 190
    .end local v2    # "manualRecord":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_0
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 191
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 192
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 193
    .local v4, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v5, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    iget-object v7, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v5, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 191
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 194
    :cond_2
    iput-object p1, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 196
    iget-boolean v5, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-nez v5, :cond_3

    iget-boolean v5, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    if-eqz v5, :cond_1

    .line 197
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/server/notification/ConditionProviders;->subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    goto :goto_2

    .line 200
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v4    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_4
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    return-void

    .line 180
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method protected onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 5
    .param p1, "removed"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    const/4 v4, 0x0

    .line 205
    if-nez p1, :cond_1

    .line 220
    :cond_0
    return-void

    .line 206
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 207
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 208
    .local v1, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v2, v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 206
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 209
    :cond_2
    iget-boolean v2, v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    if-eqz v2, :cond_3

    .line 211
    invoke-direct {p0}, Lcom/android/server/notification/ConditionProviders;->onManualConditionClearing()V

    .line 212
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "manualServiceRemoved"

    invoke-virtual {v2, v4, v3}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 214
    :cond_3
    iget-boolean v2, v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-eqz v2, :cond_4

    .line 216
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "automaticServiceRemoved"

    invoke-virtual {v2, v4, v3}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 218
    :cond_4
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method public onUserSwitched()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Lcom/android/server/notification/ManagedServices;->onUserSwitched()V

    .line 170
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarmTracker:Lcom/android/server/notification/NextAlarmTracker;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mNextAlarmTracker:Lcom/android/server/notification/NextAlarmTracker;

    invoke-virtual {v0}, Lcom/android/server/notification/NextAlarmTracker;->onUserSwitched()V

    .line 173
    :cond_0
    return-void
.end method

.method public requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V
    .locals 4
    .param p1, "callback"    # Landroid/service/notification/IConditionListener;
    .param p2, "relevance"    # I

    .prologue
    .line 229
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestZenModeConditions callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " relevance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/service/notification/Condition;->relevanceToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    if-nez p1, :cond_1

    monitor-exit v1

    .line 244
    :goto_0
    return-void

    .line 233
    :cond_1
    and-int/lit8 p2, p2, 0x3

    .line 234
    if-eqz p2, :cond_3

    .line 235
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/service/notification/IConditionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-direct {p0, p2}, Lcom/android/server/notification/ConditionProviders;->requestConditionsLocked(I)V

    .line 243
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 238
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/service/notification/IConditionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ConditionProviders;->requestConditionsLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setAutomaticZenModeConditions([Landroid/net/Uri;)V
    .locals 1
    .param p1, "conditionIds"    # [Landroid/net/Uri;

    .prologue
    .line 557
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/ConditionProviders;->setAutomaticZenModeConditions([Landroid/net/Uri;Z)V

    .line 558
    return-void
.end method

.method public setZenModeCondition(Landroid/service/notification/Condition;Ljava/lang/String;)V
    .locals 10
    .param p1, "condition"    # Landroid/service/notification/Condition;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 487
    iget-boolean v7, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setZenModeCondition "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " reason="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_0
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v7

    .line 489
    const/4 v1, 0x0

    .line 490
    .local v1, "conditionComponent":Landroid/content/ComponentName;
    if-eqz p1, :cond_2

    .line 491
    :try_start_0
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    if-eqz v8, :cond_1

    iget-object v8, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v8}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 492
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    invoke-virtual {v8}, Lcom/android/server/notification/CountdownConditionProvider;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v8

    sget-object v9, Lcom/android/server/notification/CountdownConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    invoke-direct {p0, p1, v8, v9}, Lcom/android/server/notification/ConditionProviders;->ensureRecordExists(Landroid/service/notification/Condition;Landroid/service/notification/IConditionProvider;Landroid/content/ComponentName;)V

    .line 495
    :cond_1
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    if-eqz v8, :cond_2

    iget-object v8, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v8}, Landroid/service/notification/ZenModeConfig;->isValidDowntimeConditionId(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 496
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-virtual {v8}, Lcom/android/server/notification/DowntimeConditionProvider;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v8

    sget-object v9, Lcom/android/server/notification/DowntimeConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    invoke-direct {p0, p1, v8, v9}, Lcom/android/server/notification/ConditionProviders;->ensureRecordExists(Landroid/service/notification/Condition;Landroid/service/notification/IConditionProvider;Landroid/content/ComponentName;)V

    .line 500
    :cond_2
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 501
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_7

    .line 502
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 503
    .local v4, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-eqz p1, :cond_5

    iget-object v8, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    iget-object v9, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v3, v5

    .line 504
    .local v3, "idEqual":Z
    :goto_1
    iget-boolean v8, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    if-eqz v8, :cond_6

    if-nez v3, :cond_6

    .line 506
    invoke-direct {p0, v4}, Lcom/android/server/notification/ConditionProviders;->unsubscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 507
    const/4 v8, 0x0

    iput-boolean v8, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    .line 513
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 514
    iget-object v1, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    .line 501
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "idEqual":Z
    :cond_5
    move v3, v6

    .line 503
    goto :goto_1

    .line 508
    .restart local v3    # "idEqual":Z
    :cond_6
    if-eqz v3, :cond_3

    iget-boolean v8, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    if-nez v8, :cond_3

    .line 510
    invoke-direct {p0, v4}, Lcom/android/server/notification/ConditionProviders;->subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 511
    const/4 v8, 0x1

    iput-boolean v8, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    goto :goto_2

    .line 523
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "idEqual":Z
    .end local v4    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 517
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_7
    :try_start_1
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 518
    iput-object p1, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    .line 519
    iput-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    .line 520
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    invoke-static {v5, v6, p2}, Lcom/android/server/notification/ZenLog;->traceExitCondition(Landroid/service/notification/Condition;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 521
    invoke-direct {p0}, Lcom/android/server/notification/ConditionProviders;->saveZenConfigLocked()V

    .line 523
    :cond_8
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    return-void
.end method

.method public tryAdjustStat(IIII)Z
    .locals 11
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 347
    const/4 v2, 0x0

    .line 348
    .local v2, "notDistubmodeTurnOff":I
    const/4 v3, 0x1

    .line 349
    .local v3, "notDistubmodeTurnOn":I
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v8}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 350
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget-boolean v5, v0, Landroid/service/notification/ZenModeConfig;->timeSwitch:Z

    .line 351
    .local v5, "timeSwitch":Z
    if-nez v5, :cond_0

    .line 352
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tryAdjustStat timeSwitch = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", it is not to adjust."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :goto_0
    return v6

    .line 355
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/ConditionProviders;->isInNotDisturbTime(IIII)Z

    move-result v1

    .line 356
    .local v1, "inDisturbTime":Z
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "not_disturb_mode"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 357
    .local v4, "state":I
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " inDisturbTime : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", current state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    if-eqz v1, :cond_2

    .line 360
    if-nez v4, :cond_1

    .line 361
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    const-string v8, "--turn on"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v8, "automaticConditionEnter"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/notification/ZenModeHelper;->setNotDisturbMode(ILjava/lang/String;)V

    .line 370
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    const-string v8, " tryAdjustStat OK"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 371
    goto :goto_0

    .line 365
    :cond_2
    if-ne v4, v7, :cond_1

    .line 366
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    const-string v9, "--turn off"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v9, "automaticConditionExit"

    invoke-virtual {v8, v6, v9}, Lcom/android/server/notification/ZenModeHelper;->setNotDisturbMode(ILjava/lang/String;)V

    goto :goto_1
.end method
