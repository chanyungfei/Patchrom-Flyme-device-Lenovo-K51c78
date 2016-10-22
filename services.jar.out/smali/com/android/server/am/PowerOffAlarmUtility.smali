.class public Lcom/android/server/am/PowerOffAlarmUtility;
.super Ljava/lang/Object;
.source "PowerOffAlarmUtility.java"


# static fields
.field private static final ALARM_BOOT_DONE:Ljava/lang/String; = "android.intent.action.normal.boot.done"

.field private static final REMOVE_IPOWIN:Ljava/lang/String; = "alarm.boot.remove.ipowin"

.field private static final TAG:Ljava/lang/String; = "PowerOffAlarm"

.field private static mInstance:Lcom/android/server/am/PowerOffAlarmUtility;


# instance fields
.field private mContext:Landroid/content/Context;

.field public mFirstBoot:Z

.field private mRollback:Z

.field private mStack:Lcom/android/server/am/ActivityStack;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityStack;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "aStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v2, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mRollback:Z

    .line 59
    iput-boolean v2, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mFirstBoot:Z

    .line 91
    iput-object p1, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mStack:Lcom/android/server/am/ActivityStack;

    .line 93
    iget-object v1, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/am/PowerOffAlarmUtility;->registerNormalBootReceiver(Landroid/content/Context;)V

    .line 94
    const-string v1, "persist.sys.ams.recover"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 96
    .local v0, "recover":Z
    if-eqz v0, :cond_0

    .line 97
    const/4 v1, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/PowerOffAlarmUtility;->checkFlightMode(ZZ)V

    .line 99
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/PowerOffAlarmUtility;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/PowerOffAlarmUtility;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mRollback:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/am/PowerOffAlarmUtility;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/PowerOffAlarmUtility;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/PowerOffAlarmUtility;->checkFlightMode(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/PowerOffAlarmUtility;)Lcom/android/server/am/ActivityStack;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/PowerOffAlarmUtility;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/PowerOffAlarmUtility;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/PowerOffAlarmUtility;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkFlightMode(ZZ)V
    .locals 6
    .param p1, "recover"    # Z
    .param p2, "shutdown"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 194
    const-string v3, "PowerOffAlarm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRollback = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mRollback:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", recover = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    if-eqz p1, :cond_1

    .line 197
    const-string v2, "PowerOffAlarm"

    const-string v3, "since system crash, switch flight mode to off"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v2, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 200
    const-string v2, "persist.sys.ams.recover"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mRollback:Z

    if-eqz v3, :cond_2

    .line 205
    iput-boolean v1, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mRollback:Z

    .line 206
    const-string v2, "persist.sys.ams.recover"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 210
    if-nez p2, :cond_0

    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 213
    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 214
    iget-object v2, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 217
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 221
    .local v1, "mode":Z
    :cond_3
    if-nez v1, :cond_0

    .line 222
    const-string v3, "PowerOffAlarm"

    const-string v4, "turn on flight mode"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v3, "persist.sys.ams.recover"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iput-boolean v2, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mRollback:Z

    .line 225
    iget-object v3, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/PowerOffAlarmUtility;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "aStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 74
    sget-object v0, Lcom/android/server/am/PowerOffAlarmUtility;->mInstance:Lcom/android/server/am/PowerOffAlarmUtility;

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/android/server/am/PowerOffAlarmUtility;->mInstance:Lcom/android/server/am/PowerOffAlarmUtility;

    .line 80
    :goto_0
    return-object v0

    .line 77
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 78
    new-instance v0, Lcom/android/server/am/PowerOffAlarmUtility;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/PowerOffAlarmUtility;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityStack;)V

    sput-object v0, Lcom/android/server/am/PowerOffAlarmUtility;->mInstance:Lcom/android/server/am/PowerOffAlarmUtility;

    .line 80
    :cond_1
    sget-object v0, Lcom/android/server/am/PowerOffAlarmUtility;->mInstance:Lcom/android/server/am/PowerOffAlarmUtility;

    goto :goto_0
.end method

.method public static isAlarmBoot()Z
    .locals 3

    .prologue
    .line 123
    const-string v2, "sys.boot.reason"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "bootReason":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 126
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 124
    .end local v1    # "ret":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final registerNormalBootReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.normal.boot"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v1, "android.intent.action.normal.shutdown"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v1, "android.intent.action.normal.boot.done"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "alarm.boot.remove.ipowin"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mFirstBoot:Z

    .line 142
    new-instance v1, Lcom/android/server/am/PowerOffAlarmUtility$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/PowerOffAlarmUtility$1;-><init>(Lcom/android/server/am/PowerOffAlarmUtility;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    return-void
.end method


# virtual methods
.method public launchPowrOffAlarm(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "recover"    # Ljava/lang/Boolean;
    .param p2, "shutdown"    # Ljava/lang/Boolean;

    .prologue
    .line 110
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/PowerOffAlarmUtility;->checkFlightMode(ZZ)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.LAUNCH_POWEROFF_ALARM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 115
    return-void
.end method
