.class Lcom/android/server/am/AppPcService$PermControlService;
.super Ljava/lang/Object;
.source "AppPcService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermControlService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
    }
.end annotation


# static fields
.field private static final COUNT_DOWN_TIMER:I = 0x14

.field private static final DELAY_TIME:I = 0x3e8

.field private static final EXTRA_TIMER:I = 0x1388

.field private static final MAX_WATI_TIME:I = 0x4e20

.field private static final MSG_CANCEL_CONF_DLG:I = 0x69

.field private static final MSG_COUNT_DOWN:I = 0x68

.field private static final MSG_RESET:I = 0x65

.field private static final MSG_SHOW_CONF_DLG:I = 0x67

.field private static final MSG_SHOW_TOAST:I = 0x66

.field private static final TOAST_ACTIVE_TIME:J = 0xea60L


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAlertDlg:Landroid/app/AlertDialog;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mCurrentPermRecord:Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

.field private final mHandler:Landroid/os/Handler;

.field private mIsGranted:Z

.field private mLastToastTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPermCheck:Lcom/android/server/am/AppPcService$PermCheck;

.field mPowerManager:Landroid/os/PowerManager;

.field private mRecordCheckHistoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordCheckHistoryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordCheckHistoryPool:Ljava/util/concurrent/ExecutorService;

.field private mTimeCountDown:Landroid/widget/TextView;

.field private mUserConfirmLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/am/AppPcService;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcService;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1150
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1116
    const-string v0, "Security_PermControlService"

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->TAG:Ljava/lang/String;

    .line 1131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUserConfirmLock:Ljava/lang/Object;

    .line 1142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mLastToastTimes:Ljava/util/HashMap;

    .line 1147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryMap:Ljava/util/HashMap;

    .line 1148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    .line 1224
    new-instance v0, Lcom/android/server/am/AppPcService$PermControlService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppPcService$PermControlService$1;-><init>(Lcom/android/server/am/AppPcService$PermControlService;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mHandler:Landroid/os/Handler;

    .line 1151
    iput-object p2, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    .line 1152
    new-instance v0, Lcom/android/server/am/AppPcService$PermCheck;

    invoke-direct {v0, p2}, Lcom/android/server/am/AppPcService$PermCheck;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPermCheck:Lcom/android/server/am/AppPcService$PermCheck;

    .line 1153
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryPool:Ljava/util/concurrent/ExecutorService;

    .line 1154
    const-string v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPowerManager:Landroid/os/PowerManager;

    .line 1155
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/AppPcService$PermControlService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermControlService;

    .prologue
    .line 1115
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermControlService;->getFirstTask()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/am/AppPcService$PermControlService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermControlService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 1115
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService$PermControlService;->handleDenyToastMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/am/AppPcService$PermControlService;)Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermControlService;

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mCurrentPermRecord:Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/am/AppPcService$PermControlService;Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermControlService;
    .param p1, "x1"    # Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
    .param p2, "x2"    # I

    .prologue
    .line 1115
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AppPcService$PermControlService;->handleConfirmDlgMsg(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/am/AppPcService$PermControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermControlService;

    .prologue
    .line 1115
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermControlService;->handleCancelConfirmDlgMsg()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/AppPcService$PermControlService;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermControlService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1115
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService$PermControlService;->getUidByPackageName(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/am/AppPcService$PermControlService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermControlService;

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/am/AppPcService$PermControlService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermControlService;

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/am/AppPcService$PermControlService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermControlService;

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cancelConfirmDlg()V
    .locals 3

    .prologue
    .line 1259
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1261
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1262
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x69

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1263
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1264
    return-void
.end method

.method private checkBackgroundNotifyType(ILcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "record"    # Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    .prologue
    .line 1367
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPermCheck:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2600(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/android/server/am/AppPcService;->sAndroidPerms:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$2500()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/AppPcService$PermCheck;->getBackgroundNotifyType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1368
    .local v0, "backNotifyType":I
    const-string v1, "Security_PermControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check backNotifyType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1370
    const/4 v1, 0x0

    .line 1372
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkCurrentUid()Z
    .locals 1

    .prologue
    .line 1192
    const/4 v0, 0x1

    return v0
.end method

.method private getFirstTask()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 1604
    iget-object v6, p0, Lcom/android/server/am/AppPcService$PermControlService;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v6, :cond_0

    .line 1605
    iget-object v6, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    iput-object v6, p0, Lcom/android/server/am/AppPcService$PermControlService;->mActivityManager:Landroid/app/ActivityManager;

    .line 1608
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1610
    .local v0, "callingUid":I
    iget-object v6, p0, Lcom/android/server/am/AppPcService$PermControlService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v6, v9, v9, v7}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v4

    .line 1613
    .local v4, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 1614
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1615
    .local v3, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v1, Landroid/content/Intent;

    iget-object v6, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1616
    .local v1, "intent":Landroid/content/Intent;
    iget-object v6, v3, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_1

    .line 1617
    iget-object v6, v3, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1619
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const v7, -0x200001

    and-int/2addr v6, v7

    const/high16 v7, 0x10000000

    or-int/2addr v6, v7

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1621
    iget-object v6, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1622
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 1624
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_2

    .line 1625
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1628
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private getMessageBody(I)Ljava/lang/String;
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 1200
    if-ltz p1, :cond_0

    sget-object v0, Lcom/android/server/am/AppPcService$AppPcServiceResources;->sPermissionLabels:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/am/AppPcService$AppPcServiceResources;->sPermissionLabels:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getStringFromSecurityApp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1204
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Unknown Permission"

    goto :goto_0
.end method

.method private getPackageNameByUid(I)Ljava/lang/String;
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 1673
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/server/am/AppPcService;->access$3500(Lcom/android/server/am/AppPcService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 1674
    .local v1, "pkgs":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 1676
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 1677
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1678
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPermCheck:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mUidPackageNameMaps:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/am/AppPcService$PermCheck;->access$3600(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 1679
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPermCheck:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mUidPackageNameMaps:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/am/AppPcService$PermCheck;->access$3600(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    monitor-exit v3

    .line 1685
    .end local v0    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1680
    .restart local v0    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1684
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    const-string v2, "Security_PermControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPackageNameByUid fail uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUidByPackageName(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1633
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1634
    .local v2, "pkgManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1636
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1640
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pkgManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 1637
    :catch_0
    move-exception v0

    .line 1638
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1640
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private handleCancelConfirmDlgMsg()V
    .locals 2

    .prologue
    .line 1546
    const-string v0, "Security_PermControlService"

    const-string v1, "handleCancelConfirmDlgMsg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mCurrentPermRecord:Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    invoke-direct {p0, v0}, Lcom/android/server/am/AppPcService$PermControlService;->showDenyToastInUI(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)V

    .line 1549
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mIsGranted:Z

    .line 1550
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAlertDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1551
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1552
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAlertDlg:Landroid/app/AlertDialog;

    .line 1554
    :cond_0
    return-void
.end method

.method private declared-synchronized handleCheckCase(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;I)Z
    .locals 7
    .param p1, "record"    # Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
    .param p2, "flag"    # I

    .prologue
    .line 1376
    monitor-enter p0

    :try_start_0
    const-string v2, "Security_PermControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCheckCase record.mPackageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2600(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUserConfirmLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1380
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPermCheck:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2600(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/android/server/am/AppPcService;->sAndroidPerms:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$2500()[Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2900(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/AppPcService$PermCheck;->getNotifyType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1381
    .local v1, "notifyType":I
    packed-switch v1, :pswitch_data_0

    .line 1391
    :pswitch_0
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mCurrentPermRecord:Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    .line 1392
    invoke-direct {p0, p2}, Lcom/android/server/am/AppPcService$PermControlService;->showConfirmDlg(I)V

    .line 1400
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUserConfirmLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1405
    .end local v1    # "notifyType":I
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1406
    :try_start_3
    const-string v2, "Security_PermControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCheckCase mIsGranted = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mIsGranted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    iget-boolean v2, p0, Lcom/android/server/am/AppPcService$PermControlService;->mIsGranted:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    monitor-exit p0

    return v2

    .line 1383
    .restart local v1    # "notifyType":I
    :pswitch_1
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService$PermControlService;->showDenyToast(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1384
    const/4 v2, 0x0

    :try_start_5
    monitor-exit v3

    goto :goto_1

    .line 1405
    .end local v1    # "notifyType":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1376
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1386
    .restart local v1    # "notifyType":I
    :pswitch_2
    const/4 v2, 0x1

    :try_start_7
    monitor-exit v3

    goto :goto_1

    .line 1401
    .end local v1    # "notifyType":I
    :catch_0
    move-exception v0

    .line 1402
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "Security_PermControlService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleCheckCase error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 1381
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleConfirmDlgMsg(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;I)V
    .locals 11
    .param p1, "record"    # Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
    .param p2, "flag"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1512
    const-string v5, "Security_PermControlService"

    const-string v6, "handleConfirmDlgMsg"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1514
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->notify_dialog_title:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getStringFromSecurityApp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1515
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->accept_perm:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getStringFromSecurityApp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1516
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->deny_perm:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getStringFromSecurityApp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1517
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1521
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/server/am/AppPcService$AppPcServiceResources$layout;->permission_notify_dialog_customview:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getLayoutFromSecurityApp(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 1522
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1525
    sget v5, Lcom/android/server/am/AppPcService$AppPcServiceResources$id;->message:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1526
    .local v2, "messageText":Landroid/widget/TextView;
    sget v5, Lcom/android/server/am/AppPcService$AppPcServiceResources$id;->hint:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mTimeCountDown:Landroid/widget/TextView;

    .line 1527
    sget v5, Lcom/android/server/am/AppPcService$AppPcServiceResources$id;->checkbox:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mCheckBox:Landroid/widget/CheckBox;

    .line 1528
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1530
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mAppName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$3400(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v1

    .line 1533
    .local v1, "label":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->notify_dialog_msg_body:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v9

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2900(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/am/AppPcService$PermControlService;->getMessageBody(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getStringFromSecurityApp(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1535
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1537
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAlertDlg:Landroid/app/AlertDialog;

    .line 1538
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v5, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1539
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1540
    invoke-direct {p0, v9}, Lcom/android/server/am/AppPcService$PermControlService;->setStatusBarEnableStatus(Z)V

    .line 1542
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 1543
    const/16 v5, 0x14

    invoke-direct {p0, v5}, Lcom/android/server/am/AppPcService$PermControlService;->updateCount(I)V

    .line 1544
    return-void
.end method

.method private handleDenyToastMsg(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1246
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    .line 1247
    .local v0, "record":Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
    invoke-direct {p0, v0}, Lcom/android/server/am/AppPcService$PermControlService;->showDenyToastInUI(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)V

    .line 1248
    return-void
.end method

.method private recordCheckHistory(Ljava/lang/String;ILjava/lang/String;IZZ)V
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "perms"    # Ljava/lang/String;
    .param p4, "code"    # I
    .param p5, "isGranted"    # Z
    .param p6, "isInBackground"    # Z

    .prologue
    .line 1439
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->RECORD_CHECK_HISTORY_ENABLE:Z
    invoke-static {v2}, Lcom/android/server/am/AppPcService;->access$3000(Lcom/android/server/am/AppPcService;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1505
    :cond_0
    :goto_0
    return-void

    .line 1442
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x17

    move/from16 v0, p4

    if-eq v0, v2, :cond_0

    .line 1445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1446
    .local v4, "key":Ljava/lang/String;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1447
    .local v12, "values":Landroid/content/ContentValues;
    const-string v2, "package"

    invoke-virtual {v12, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    const-string v2, "permission"

    move-object/from16 v0, p3

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    if-eqz p5, :cond_2

    .line 1450
    const-string v2, "deny_content"

    const-string v3, "1"

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    long-to-int v10, v2

    .line 1455
    .local v10, "time":I
    const-string v2, "deny_time"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1456
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 1457
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1459
    monitor-exit v3

    goto :goto_0

    .line 1461
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1452
    .end local v10    # "time":I
    :cond_2
    const-string v2, "deny_content"

    const-string v3, "0"

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1461
    .restart local v10    # "time":I
    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1462
    iget-object v13, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/server/am/AppPcService$PermControlService$2;

    move-object v3, p0

    move-object v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v11, p6

    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/AppPcService$PermControlService$2;-><init>(Lcom/android/server/am/AppPcService$PermControlService;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZIZ)V

    invoke-interface {v13, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private releaseLock()V
    .locals 2

    .prologue
    .line 1507
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUserConfirmLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1508
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUserConfirmLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1509
    monitor-exit v1

    .line 1510
    return-void

    .line 1509
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setCountText(I)V
    .locals 6
    .param p1, "timer"    # I

    .prologue
    .line 1652
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->time_count_down_hint:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getStringFromSecurityApp(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1653
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mTimeCountDown:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1654
    return-void
.end method

.method private setStatusBarEnableStatus(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1656
    const-string v0, "Security_PermControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatusBarEnableStatus enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    return-void
.end method

.method private showConfirmDlg(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 1253
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1254
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1255
    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1256
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1257
    return-void
.end method

.method private showDenyToast(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)V
    .locals 2
    .param p1, "record"    # Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    .prologue
    .line 1572
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1573
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1574
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1575
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1576
    return-void
.end method

.method private showDenyToastInUI(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)V
    .locals 10
    .param p1, "record"    # Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    .prologue
    const/4 v9, 0x0

    .line 1578
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermControlService;->getFirstTask()Ljava/lang/String;

    move-result-object v0

    .line 1579
    .local v0, "fistTaskPkg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2600(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1597
    :cond_0
    :goto_0
    return-void

    .line 1583
    :cond_1
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2900(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v4

    if-ltz v4, :cond_3

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2900(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v4

    # getter for: Lcom/android/server/am/AppPcService;->sAndroidPerms:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$2500()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 1584
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2600(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/android/server/am/AppPcService;->sAndroidPerms:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$2500()[Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2900(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-static {v4, v5}, Lcom/android/server/am/AppPcService$PermCheck;->genNotifyTypeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1585
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mLastToastTimes:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1586
    .local v3, "time":Ljava/lang/Long;
    if-eqz v3, :cond_2

    .line 1587
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 1591
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mLastToastTimes:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1594
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "time":Ljava/lang/Long;
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/server/am/AppPcService$AppPcServiceResources$string;->toast_deny_msg_body:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mAppName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$3400(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2900(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/am/AppPcService$PermControlService;->getMessageBody(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getStringFromSecurityApp(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1595
    .local v2, "msg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private updateCount(I)V
    .locals 4
    .param p1, "timer"    # I

    .prologue
    .line 1644
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService$PermControlService;->setCountText(I)V

    .line 1645
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1646
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x68

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1647
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1648
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1649
    return-void
.end method


# virtual methods
.method public clearCheckHistorys(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1419
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1420
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1421
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1422
    monitor-exit v4

    .line 1434
    :goto_0
    return-void

    .line 1422
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1424
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1425
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 1426
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1427
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1428
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1429
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1425
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1432
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v0    # "i":I
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3
.end method

.method public getCheckHistorys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1410
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1411
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 1412
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPackageName(II)Ljava/lang/String;
    .locals 8
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 1688
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPermCheck:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mUidPackageNameMaps:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/am/AppPcService$PermCheck;->access$3600(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 1689
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPermCheck:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mUidPackageNameMaps:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/am/AppPcService$PermCheck;->access$3600(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1690
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1691
    sget-boolean v4, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1692
    const-string v4, "Security_PermControlService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPackageName from mPermCheck.mUidPackageNameMaps="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    :cond_0
    monitor-exit v5

    .line 1726
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1695
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1696
    const/4 v1, 0x0

    .line 1698
    .local v1, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v4, :cond_2

    .line 1699
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mActivityManager:Landroid/app/ActivityManager;

    .line 1702
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 1704
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v2, :cond_3

    .line 1705
    const-string v4, "Security_PermControlService"

    const-string v5, "getPackageName l == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService$PermControlService;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1695
    .end local v1    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "l":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1709
    .restart local v1    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v2    # "l":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_3
    const-string v4, "Security_PermControlService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPackageName l.size() ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1712
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1713
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1714
    .restart local v1    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-eq v4, p2, :cond_5

    iget v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v4, p1, :cond_4

    .line 1715
    :cond_5
    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v3, v4, v5

    .line 1716
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1717
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPermCheck:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mUidPackageNameMaps:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/am/AppPcService$PermCheck;->access$3600(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 1718
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPermCheck:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermCheck;->mUidPackageNameMaps:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/am/AppPcService$PermCheck;->access$3600(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1719
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 1724
    :cond_6
    const-string v4, "Security_PermControlService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPackageName fail uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService$PermControlService;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public handleCheckCase(ILjava/lang/String;II)Z
    .locals 13
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .prologue
    .line 1284
    sget-boolean v2, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1285
    const-string v2, "Security_PermControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCheckCase packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 1287
    .local v9, "callingUid":I
    move/from16 v0, p3

    if-eq v9, v0, :cond_1

    .line 1288
    const-string v2, "Security_PermControlService"

    const-string v3, "handleCheckCase callingUid != uid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    const-string v2, "Security_PermControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCheckCase callingUid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    const-string v2, "Security_PermControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCheckCase uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermControlService;->checkCurrentUid()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1293
    const/4 v7, 0x0

    .line 1356
    :goto_0
    return v7

    .line 1296
    :cond_2
    if-ltz p1, :cond_3

    # getter for: Lcom/android/server/am/AppPcService;->sAndroidPerms:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$2500()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lt p1, v2, :cond_4

    .line 1298
    :cond_3
    const/4 v7, 0x1

    goto :goto_0

    .line 1299
    :cond_4
    const/16 v2, 0x15

    if-ne p1, v2, :cond_5

    .line 1300
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v11

    .line 1301
    .local v11, "isPowerSaveMode":Z
    const-string v2, "Security_PermControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPowerSaveMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    if-eqz v11, :cond_5

    .line 1303
    const/4 v7, 0x0

    goto :goto_0

    .line 1310
    .end local v11    # "isPowerSaveMode":Z
    :cond_5
    :try_start_0
    new-instance v1, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;-><init>(Lcom/android/server/am/AppPcService$PermControlService;ILjava/lang/String;IILandroid/os/Bundle;)V

    .line 1314
    .local v1, "record":Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPermCheck:Lcom/android/server/am/AppPcService$PermCheck;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2600(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/android/server/am/AppPcService;->sAndroidPerms:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$2500()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/AppPcService$PermCheck;->getNotifyType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 1315
    .local v12, "notifyType":I
    const-string v2, "Security_PermControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCheckCase notifyType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1320
    const/4 v7, 0x0

    .line 1321
    .local v7, "checkResult":Z
    const/4 v8, 0x0

    .line 1322
    .local v8, "isInBackground":Z
    packed-switch v12, :pswitch_data_0

    .line 1352
    const/4 v7, 0x1

    .line 1355
    :goto_1
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2600(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mUid:I
    invoke-static {v1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2800(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v4

    # getter for: Lcom/android/server/am/AppPcService;->sAndroidPerms:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$2500()[Ljava/lang/String;

    move-result-object v2

    aget-object v5, v2, p1

    move-object v2, p0

    move v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/AppPcService$PermControlService;->recordCheckHistory(Ljava/lang/String;ILjava/lang/String;IZZ)V

    goto :goto_0

    .line 1316
    .end local v1    # "record":Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
    .end local v7    # "checkResult":Z
    .end local v8    # "isInBackground":Z
    .end local v12    # "notifyType":I
    :catch_0
    move-exception v10

    .line 1317
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 1318
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1324
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v1    # "record":Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
    .restart local v7    # "checkResult":Z
    .restart local v8    # "isInBackground":Z
    .restart local v12    # "notifyType":I
    :pswitch_0
    const/16 v2, 0x15

    if-eq p1, v2, :cond_6

    const/16 v2, 0x17

    if-ne p1, v2, :cond_7

    .line 1325
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 1327
    :cond_7
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/AppPcService$PermControlService;->handleCheckCase(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;I)Z

    move-result v7

    .line 1329
    goto :goto_1

    .line 1331
    :pswitch_1
    const/4 v7, 0x0

    .line 1332
    const/16 v2, 0x15

    if-eq p1, v2, :cond_8

    const/16 v2, 0x17

    if-ne p1, v2, :cond_9

    .line 1333
    :cond_8
    const-string v2, "Security_PermControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refuse auto boot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2600(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1335
    :cond_9
    invoke-direct {p0, v1}, Lcom/android/server/am/AppPcService$PermControlService;->showDenyToast(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)V

    goto :goto_1

    .line 1339
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->CHECK_BACKGROUND_GPS_ENABLE:Z
    invoke-static {v2}, Lcom/android/server/am/AppPcService;->access$2700(Lcom/android/server/am/AppPcService;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz p1, :cond_a

    const/4 v2, 0x1

    if-ne p1, v2, :cond_c

    .line 1342
    :cond_a
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2600(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermControlService;->getFirstTask()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1343
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1345
    :cond_b
    const/4 v8, 0x1

    .line 1346
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/AppPcService$PermControlService;->checkBackgroundNotifyType(ILcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Z

    move-result v7

    goto :goto_1

    .line 1348
    :cond_c
    const/4 v7, 0x1

    .line 1350
    goto :goto_1

    .line 1322
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected handleCountDownMsg(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1556
    iget v1, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v0, v1, -0x1

    .line 1557
    .local v0, "timer":I
    const-string v1, "Security_PermControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timer is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    if-lez v0, :cond_1

    .line 1559
    invoke-direct {p0, v0}, Lcom/android/server/am/AppPcService$PermControlService;->updateCount(I)V

    .line 1570
    :cond_0
    :goto_0
    return-void

    .line 1561
    :cond_1
    const-string v1, "Security_PermControlService"

    const-string v2, "time out and deny the permission"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mCurrentPermRecord:Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    invoke-direct {p0, v1}, Lcom/android/server/am/AppPcService$PermControlService;->showDenyToastInUI(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)V

    .line 1564
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mIsGranted:Z

    .line 1565
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAlertDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 1566
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1567
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAlertDlg:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public inWhiteList(ILjava/lang/String;II)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .prologue
    const/4 v0, 0x1

    .line 1266
    sget-boolean v1, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1267
    const-string v1, "Security_PermControlService"

    const-string v2, "inWhiteList(int code, int uid, int pid)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1269
    invoke-virtual {p0, p3, p4}, Lcom/android/server/am/AppPcService$PermControlService;->getPackageName(II)Ljava/lang/String;

    move-result-object p2

    .line 1272
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/am/AppPcService$PermControlService;->isSystemApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1273
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    invoke-virtual {v1, p2}, Lcom/android/server/am/AppPcService;->isInControllableSystemApps(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1280
    :cond_2
    :goto_0
    return v0

    .line 1277
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPermCheck:Lcom/android/server/am/AppPcService$PermCheck;

    invoke-virtual {v1, p2}, Lcom/android/server/am/AppPcService$PermCheck;->inWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1280
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSystemApp(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1209
    if-nez p1, :cond_1

    .line 1222
    :cond_0
    :goto_0
    return v4

    .line 1212
    :cond_1
    const/4 v0, 0x0

    .line 1214
    .local v0, "appName":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1215
    .local v3, "pkgManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1216
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v5, v5, 0x81

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 1219
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "pkgManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 1220
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1762
    const-string v3, "Security_PermControlService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick which="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    const/4 v1, 0x0

    .line 1764
    .local v1, "enable":Z
    const/4 v2, 0x0

    .line 1765
    .local v2, "status":I
    const/4 v3, -0x1

    if-ne p2, v3, :cond_2

    .line 1766
    const/4 v1, 0x1

    .line 1767
    const/4 v2, 0x1

    .line 1772
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1774
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService;->mCurrentPermRecord:Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {v3}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2900(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v0

    .line 1775
    .local v0, "code":I
    if-ltz v0, :cond_1

    # getter for: Lcom/android/server/am/AppPcService;->sAndroidPerms:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$2500()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 1776
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPermCheck:Lcom/android/server/am/AppPcService$PermCheck;

    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mCurrentPermRecord:Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2600(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/server/am/AppPcService$PermCheck;->changePermissionByCode(Ljava/lang/String;II)V

    .line 1785
    :cond_1
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mIsGranted:Z

    .line 1786
    return-void

    .line 1768
    .end local v0    # "code":I
    :cond_2
    const/4 v3, -0x2

    if-ne p2, v3, :cond_0

    .line 1769
    const/4 v2, -0x1

    .line 1770
    const/4 v1, 0x0

    goto :goto_0

    .line 1779
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService;->mCurrentPermRecord:Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {v3}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2900(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v0

    .line 1780
    .restart local v0    # "code":I
    if-ltz v0, :cond_1

    # getter for: Lcom/android/server/am/AppPcService;->sAndroidPerms:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$2500()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 1781
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPermCheck:Lcom/android/server/am/AppPcService$PermCheck;

    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mCurrentPermRecord:Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2600(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/android/server/am/AppPcService;->sAndroidPerms:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$2500()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/am/AppPcService$PermCheck;->saveLastCheckResult(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1790
    const-string v0, "Security_PermControlService"

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAlertDlg:Landroid/app/AlertDialog;

    .line 1792
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/AppPcService$PermControlService;->setStatusBarEnableStatus(Z)V

    .line 1793
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1794
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermControlService;->releaseLock()V

    .line 1795
    return-void
.end method
