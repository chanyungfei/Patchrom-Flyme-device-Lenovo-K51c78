.class public Lcom/lenovo/memoryclean/MemoryCleanApi;
.super Ljava/lang/Object;
.source "MemoryCleanApi.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MemoryCleanApi"


# instance fields
.field private mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

.field private mContext:Landroid/content/Context;

.field private mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

.field private mSuperWhiteListApi:Lcom/lenovo/memoryclean/SuperWhiteListApi;

.field private mSystemApp:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->DEBUG:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mSystemApp:Ljava/util/HashSet;

    return-void
.end method

.method private ActivityManagerRemoveTask(Landroid/app/ActivityManager;I)V
    .locals 10
    .param p1, "am"    # Landroid/app/ActivityManager;
    .param p2, "taskId"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 269
    const-string v3, "android.app.ActivityManager"

    const-string v4, "removeTask"

    new-array v5, v9, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/lenovo/memoryclean/LoadMethod;->isMethodExisted(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    .line 272
    .local v0, "isMethodExisted":Z
    if-nez v0, :cond_0

    .line 274
    new-array v2, v8, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v7

    .line 275
    .local v2, "types":[Ljava/lang/Class;
    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v7

    .line 276
    .local v1, "params":[Ljava/lang/Object;
    const-string v3, "android.app.ActivityManager"

    const-string v4, "removeTask"

    invoke-static {p1, v3, v4, v2, v1}, Lcom/lenovo/memoryclean/LoadMethod;->MethodInvoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :goto_0
    return-void

    .line 278
    .end local v1    # "params":[Ljava/lang/Object;
    .end local v2    # "types":[Ljava/lang/Class;
    :cond_0
    new-array v2, v9, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v7

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v8

    .line 279
    .restart local v2    # "types":[Ljava/lang/Class;
    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v8

    .line 280
    .restart local v1    # "params":[Ljava/lang/Object;
    const-string v3, "android.app.ActivityManager"

    const-string v4, "removeTask"

    invoke-static {p1, v3, v4, v2, v1}, Lcom/lenovo/memoryclean/LoadMethod;->MethodInvoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getIgnorePkgename(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 594
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 596
    .local v5, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v10, "com.lenovo.fmservice"

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 600
    .local v4, "intent":Landroid/content/Intent;
    const-string v10, "android.intent.category.HOME"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 602
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_0

    .line 603
    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    :cond_0
    const-string v10, "input_method"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 616
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    .line 617
    .local v3, "inputMethodInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 618
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 624
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v9

    .line 630
    .local v9, "wm":Landroid/app/WallpaperManager;
    invoke-virtual {v9}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v7

    .line 631
    .local v7, "wallInfo":Landroid/app/WallpaperInfo;
    if-nez v7, :cond_3

    .line 643
    :cond_2
    :goto_1
    return-object v5

    .line 634
    :cond_3
    invoke-virtual {v7}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 636
    .local v8, "wallPkg":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 637
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getMemInfoForPid(Landroid/content/Context;I)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid"    # I

    .prologue
    const/4 v6, 0x0

    .line 181
    const/4 v5, 0x1

    new-array v2, v5, [I

    aput p2, v2, v6

    .line 183
    .local v2, "pids":[I
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 184
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v1

    .line 185
    .local v1, "mem":[Landroid/os/Debug$MemoryInfo;
    const/4 v3, 0x0

    .line 186
    .local v3, "totalClear":I
    array-length v5, v1

    if-lez v5, :cond_0

    .line 187
    aget-object v5, v1, v6

    invoke-virtual {v5}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    .line 188
    .local v4, "totalPss":I
    if-lez v4, :cond_0

    .line 189
    move v3, v4

    .line 192
    .end local v4    # "totalPss":I
    :cond_0
    return v3
.end method

.method private initSystemApps()V
    .locals 6

    .prologue
    .line 71
    iget-object v4, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mSystemApp:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 82
    :cond_0
    return-void

    .line 74
    :cond_1
    iget-object v4, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 75
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 76
    .local v1, "packs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 77
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_3

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 79
    :cond_3
    iget-object v4, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mSystemApp:Ljava/util/HashSet;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private isApplicationCanBeRemoved(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 713
    iget-object v1, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mSystemApp:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 714
    invoke-static {p2}, Lcom/lenovo/memoryclean/Utils;->isInControllableSystemApps(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 719
    :cond_0
    :goto_0
    return v0

    .line 717
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCurrentHomeActivity(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "homeInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v1, 0x0

    .line 652
    if-nez p2, :cond_0

    .line 653
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 654
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    .line 657
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static loadFirstTask(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 547
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 549
    .local v0, "am":Landroid/app/ActivityManager;
    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v0, v8, v8, v7}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v4

    .line 551
    .local v4, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 552
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 554
    .local v3, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v1, Landroid/content/Intent;

    iget-object v7, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 555
    .local v1, "intent":Landroid/content/Intent;
    iget-object v7, v3, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_0

    .line 556
    iget-object v7, v3, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 571
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-static {p0, v7, v6}, Lcom/lenovo/memoryclean/MemoryCleanApi;->isCurrentHomeActivity(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 584
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1
    :goto_0
    return-object v6

    .line 575
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v3    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_2
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v7

    const v8, -0x200001

    and-int/2addr v7, v8

    const/high16 v8, 0x10000000

    or-int/2addr v7, v8

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 577
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 578
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 580
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_1

    .line 581
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/lenovo/memoryclean/MemoryCleanApi;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-static {}, Lcom/lenovo/memoryclean/Version;->printfVersion()V

    .line 53
    new-instance v0, Lcom/lenovo/memoryclean/MemoryCleanApi;

    invoke-direct {v0}, Lcom/lenovo/memoryclean/MemoryCleanApi;-><init>()V

    .line 54
    .local v0, "api":Lcom/lenovo/memoryclean/MemoryCleanApi;
    iput-object p0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    .line 56
    new-instance v1, Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-direct {v1, p0}, Lcom/lenovo/memoryclean/LockPkgApi;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    .line 57
    new-instance v1, Lcom/lenovo/memoryclean/AutoBootApi;

    invoke-direct {v1, p0}, Lcom/lenovo/memoryclean/AutoBootApi;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    .line 58
    new-instance v1, Lcom/lenovo/memoryclean/SuperWhiteListApi;

    invoke-direct {v1, p0}, Lcom/lenovo/memoryclean/SuperWhiteListApi;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mSuperWhiteListApi:Lcom/lenovo/memoryclean/SuperWhiteListApi;

    .line 60
    return-object v0
.end method


# virtual methods
.method public cleanMemory()Ljava/util/List;
    .locals 1
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
    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/memoryclean/MemoryCleanApi;->cleanMemory(Ljava/util/HashSet;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public cleanMemory(Ljava/util/HashSet;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    .local p1, "ignoreList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/memoryclean/AutoBootApi;->loadFromDbIfNeed()V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/memoryclean/LockPkgApi;->loadWhiteFromDbIfNeed()V

    .line 292
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 293
    .local v9, "ignorePackageName":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .line 294
    .local v15, "recentTasks":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/memoryclean/RecentTask;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lenovo/memoryclean/RecentTask;->getRecentTask(Landroid/content/Context;)Ljava/util/List;

    move-result-object v15

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/lenovo/memoryclean/MemoryCleanApi;->getIgnorePkgename(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 299
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 300
    .local v8, "ignoreListSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 301
    if-eqz p1, :cond_0

    .line 302
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 304
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lenovo/memoryclean/MemoryCleanApi;->loadFirstTask(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 310
    .local v5, "firstTaskPkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "activity"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 311
    .local v2, "am":Landroid/app/ActivityManager;
    if-eqz v15, :cond_4

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_4

    .line 312
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/lenovo/memoryclean/RecentTask;

    .line 314
    .local v18, "td":Lcom/lenovo/memoryclean/RecentTask;
    sget-boolean v20, Lcom/lenovo/memoryclean/MemoryCleanApi;->DEBUG:Z

    if-eqz v20, :cond_2

    .line 315
    const-string v20, "MemoryCleanApi"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "td.mPackageName = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/lenovo/memoryclean/RecentTask;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_2
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/lenovo/memoryclean/RecentTask;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/lenovo/memoryclean/RecentTask;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/lenovo/memoryclean/RecentTask;->mPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/lenovo/memoryclean/LockPkgApi;->isInLockList(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 320
    sget-boolean v20, Lcom/lenovo/memoryclean/MemoryCleanApi;->DEBUG:Z

    if-eqz v20, :cond_3

    .line 321
    const-string v20, "MemoryCleanApi"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "am.removeTask: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/lenovo/memoryclean/RecentTask;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_3
    move-object/from16 v0, v18

    iget v0, v0, Lcom/lenovo/memoryclean/RecentTask;->mPersistentTaskId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v1}, Lcom/lenovo/memoryclean/MemoryCleanApi;->ActivityManagerRemoveTask(Landroid/app/ActivityManager;I)V

    goto/16 :goto_0

    .line 331
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v18    # "td":Lcom/lenovo/memoryclean/RecentTask;
    :cond_4
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v16

    .line 333
    .local v16, "runningAppProcessInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 334
    .local v17, "runningPackageNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    .line 335
    .local v19, "whiteRunningPackageNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v4, "cleanedPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 340
    .local v14, "rapInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mSuperWhiteListApi:Lcom/lenovo/memoryclean/SuperWhiteListApi;

    move-object/from16 v20, v0

    iget-object v0, v14, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Lcom/lenovo/memoryclean/SuperWhiteListApi;->isInSuperWhiteProcess(Ljava/lang/String;Ljava/util/HashSet;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 341
    sget-boolean v20, Lcom/lenovo/memoryclean/MemoryCleanApi;->DEBUG:Z

    if-eqz v20, :cond_5

    .line 342
    const-string v20, "MemoryCleanApi"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "cleanMemory ignore rapInfo.processName = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v14, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 346
    :cond_6
    iget-object v13, v14, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 347
    .local v13, "pkgNames":[Ljava/lang/String;
    move-object v3, v13

    .local v3, "arr$":[Ljava/lang/String;
    array-length v11, v3

    .local v11, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v11, :cond_5

    aget-object v12, v3, v7

    .line 348
    .local v12, "pkgName":Ljava/lang/String;
    sget-boolean v20, Lcom/lenovo/memoryclean/MemoryCleanApi;->DEBUG:Z

    if-eqz v20, :cond_7

    .line 349
    const-string v20, "MemoryCleanApi"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RunningApp pkgName="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_7
    if-eqz v5, :cond_9

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 347
    :cond_8
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 356
    :cond_9
    invoke-virtual {v8, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mSuperWhiteListApi:Lcom/lenovo/memoryclean/SuperWhiteListApi;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/lenovo/memoryclean/SuperWhiteListApi;->isInSuperWhiteList(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/lenovo/memoryclean/LockPkgApi;->isInLockList(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 366
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lenovo/memoryclean/MemoryCleanApi;->isInWhiteList(Ljava/lang/String;)Z

    move-result v10

    .line 367
    .local v10, "inWhiteList":Z
    if-nez v10, :cond_a

    .line 369
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 371
    :cond_a
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 379
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v10    # "inWhiteList":Z
    .end local v11    # "len$":I
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v13    # "pkgNames":[Ljava/lang/String;
    .end local v14    # "rapInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_b
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 380
    .restart local v12    # "pkgName":Ljava/lang/String;
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v12}, Lcom/lenovo/memoryclean/MemoryCleanApi;->isApplicationCanBeRemoved(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 382
    invoke-virtual {v2, v12}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 384
    const-string v20, "MemoryCleanApi"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "forceStopPackage  pkgName="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 387
    :cond_c
    invoke-virtual {v2, v12}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 389
    const-string v20, "MemoryCleanApi"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "killBackgroundProcesses  pkgName="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 393
    .end local v12    # "pkgName":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 394
    .restart local v12    # "pkgName":Ljava/lang/String;
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-virtual {v2, v12}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 397
    const-string v20, "MemoryCleanApi"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "killBackgroundProcesses  pkgName="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 472
    .end local v12    # "pkgName":Ljava/lang/String;
    :cond_e
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 473
    const/16 v16, 0x0

    .line 479
    return-object v4
.end method

.method public forceCleanMemory(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 488
    .local p1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    invoke-virtual {v10}, Lcom/lenovo/memoryclean/AutoBootApi;->loadFromDbIfNeed()V

    .line 489
    iget-object v10, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-virtual {v10}, Lcom/lenovo/memoryclean/LockPkgApi;->loadWhiteFromDbIfNeed()V

    .line 491
    iget-object v10, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 492
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v10, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/lenovo/memoryclean/RecentTask;->getRecentTask(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 493
    .local v6, "recentTasks":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/memoryclean/RecentTask;>;"
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 494
    .local v7, "runningPackageNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 495
    .local v9, "whiteRunningPackageNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v1, "cleanedPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 499
    .local v5, "pkgName":Ljava/lang/String;
    iget-object v10, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mSuperWhiteListApi:Lcom/lenovo/memoryclean/SuperWhiteListApi;

    invoke-virtual {v10, v5}, Lcom/lenovo/memoryclean/SuperWhiteListApi;->isInSuperWhiteList(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 502
    iget-object v10, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    invoke-virtual {v10, v5}, Lcom/lenovo/memoryclean/AutoBootApi;->isInAutoBootAbleList(Ljava/lang/String;)Z

    move-result v4

    .line 503
    .local v4, "inAutoBootAbleList":Z
    if-nez v4, :cond_1

    .line 505
    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 507
    :cond_1
    invoke-virtual {v9, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 510
    .end local v4    # "inAutoBootAbleList":Z
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 511
    .restart local v5    # "pkgName":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v10, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v10, v5}, Lcom/lenovo/memoryclean/MemoryCleanApi;->isApplicationCanBeRemoved(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 513
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 514
    const-string v10, "MemoryCleanApi"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "forceStopPackage  pkgName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 516
    :cond_3
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 517
    const-string v10, "MemoryCleanApi"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "killBackgroundProcesses  pkgName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 520
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_4
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 521
    .restart local v5    # "pkgName":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 523
    const-string v10, "MemoryCleanApi"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "killBackgroundProcesses  pkgName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 530
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_5
    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_8

    .line 531
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 532
    .restart local v5    # "pkgName":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/memoryclean/RecentTask;

    .line 533
    .local v8, "td":Lcom/lenovo/memoryclean/RecentTask;
    iget-object v10, v8, Lcom/lenovo/memoryclean/RecentTask;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 535
    iget v10, v8, Lcom/lenovo/memoryclean/RecentTask;->mPersistentTaskId:I

    invoke-direct {p0, v0, v10}, Lcom/lenovo/memoryclean/MemoryCleanApi;->ActivityManagerRemoveTask(Landroid/app/ActivityManager;I)V

    goto :goto_3

    .line 540
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v8    # "td":Lcom/lenovo/memoryclean/RecentTask;
    :cond_8
    return-object v1
.end method

.method public getCleanAbleInfo()Ljava/util/HashMap;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/lenovo/memoryclean/AutoBootApi;->loadFromDbIfNeed()V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/lenovo/memoryclean/LockPkgApi;->loadWhiteFromDbIfNeed()V

    .line 102
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 103
    .local v11, "ignorePackageName":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/lenovo/memoryclean/MemoryCleanApi;->getIgnorePkgename(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 107
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 108
    .local v10, "ignoreListSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/lenovo/memoryclean/MemoryCleanApi;->loadFirstTask(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, "firstTaskPkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "activity"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 113
    .local v4, "am":Landroid/app/ActivityManager;
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v23

    .line 117
    .local v23, "runningAppProcessInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 118
    .local v14, "mapPidPkgRunningProcess":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 119
    .local v17, "pkgMemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 123
    .local v21, "rapInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 125
    .local v20, "procressName":Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v19, v0

    .line 126
    .local v19, "pkgNames":[Ljava/lang/String;
    const/16 v25, 0x0

    aget-object v22, v19, v25

    .line 127
    .local v22, "realPkgName":Ljava/lang/String;
    move-object/from16 v5, v19

    .local v5, "arr$":[Ljava/lang/String;
    array-length v13, v5

    .local v13, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v13, :cond_1

    aget-object v18, v5, v9

    .line 128
    .local v18, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 129
    move-object/from16 v22, v20

    .line 133
    .end local v18    # "pkgName":Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_2

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 138
    :cond_2
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 146
    move-object/from16 v0, v21

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 127
    .restart local v18    # "pkgName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 153
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    .end local v18    # "pkgName":Ljava/lang/String;
    .end local v19    # "pkgNames":[Ljava/lang/String;
    .end local v20    # "procressName":Ljava/lang/String;
    .end local v21    # "rapInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v22    # "realPkgName":Ljava/lang/String;
    :cond_4
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->clear()V

    .line 154
    const/16 v23, 0x0

    .line 155
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 156
    .local v12, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_7

    .line 157
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 158
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 159
    .local v16, "pid":I
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 160
    .restart local v18    # "pkgName":Ljava/lang/String;
    const/4 v15, 0x0

    .line 161
    .local v15, "memory":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/lenovo/memoryclean/MemoryCleanApi;->getMemInfoForPid(Landroid/content/Context;I)I

    move-result v15

    .line 162
    sget-boolean v25, Lcom/lenovo/memoryclean/MemoryCleanApi;->DEBUG:Z

    if-eqz v25, :cond_5

    .line 163
    const-string v25, "MemoryCleanApi"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " pid == "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " packageName == "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " memory == "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_5
    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_6

    .line 166
    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 167
    .local v24, "value":I
    add-int v15, v15, v24

    .line 169
    .end local v24    # "value":I
    :cond_6
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 172
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v15    # "memory":I
    .end local v16    # "pid":I
    .end local v18    # "pkgName":Ljava/lang/String;
    :cond_7
    return-object v17
.end method

.method public getRunningAppCount()I
    .locals 2

    .prologue
    .line 88
    iget-object v1, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/memoryclean/RecentTask;->getRecentTask(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 89
    .local v0, "recentTasks":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/memoryclean/RecentTask;>;"
    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 92
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    invoke-virtual {v0}, Lcom/lenovo/memoryclean/AutoBootApi;->loadFromDbIfNeed()V

    .line 65
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-virtual {v0}, Lcom/lenovo/memoryclean/LockPkgApi;->loadWhiteFromDbIfNeed()V

    .line 66
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mSuperWhiteListApi:Lcom/lenovo/memoryclean/SuperWhiteListApi;

    invoke-virtual {v0}, Lcom/lenovo/memoryclean/SuperWhiteListApi;->init()V

    .line 67
    invoke-direct {p0}, Lcom/lenovo/memoryclean/MemoryCleanApi;->initSystemApps()V

    .line 68
    invoke-static {}, Lcom/lenovo/memoryclean/Utils;->initControllableSystemApps()V

    .line 69
    return-void
.end method

.method public isInHideWhiteList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 222
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 223
    .local v0, "ignorePackageName":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/lenovo/memoryclean/MemoryCleanApi;->getIgnorePkgename(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 224
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isInLockList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-virtual {v0, p1}, Lcom/lenovo/memoryclean/LockPkgApi;->isInLockList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInWhiteList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    invoke-virtual {v0, p1}, Lcom/lenovo/memoryclean/AutoBootApi;->isInAutoBootAbleList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-virtual {v0, p1}, Lcom/lenovo/memoryclean/LockPkgApi;->isInLockList(Ljava/lang/String;)Z

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

.method public lockPkg(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-virtual {v0, p1}, Lcom/lenovo/memoryclean/LockPkgApi;->lockPkg(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public registerContentObserve()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    invoke-virtual {v0}, Lcom/lenovo/memoryclean/AutoBootApi;->registerContentObserve()V

    .line 251
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-virtual {v0}, Lcom/lenovo/memoryclean/LockPkgApi;->registerContentObserve()V

    .line 252
    return-void
.end method

.method public unLockPkg(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-virtual {v0, p1}, Lcom/lenovo/memoryclean/LockPkgApi;->unLockPkg(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public unRegisterContentObserve()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    invoke-virtual {v0}, Lcom/lenovo/memoryclean/AutoBootApi;->unRegisterContentObserve()V

    .line 259
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-virtual {v0}, Lcom/lenovo/memoryclean/LockPkgApi;->unRegisterContentObserve()V

    .line 260
    return-void
.end method
