.class public Lcom/lenovo/memoryclean/RecentTask;
.super Ljava/lang/Object;
.source "RecentTask.java"


# static fields
.field private static final DISPLAY_TASKS:I = 0x14

.field private static final MAX_TASKS:I

.field private static final TAG:Ljava/lang/String; = "RecentTask"


# instance fields
.field final mPackageName:Ljava/lang/String;

.field final mPersistentTaskId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x15

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    .line 24
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v0

    sput v0, Lcom/lenovo/memoryclean/RecentTask;->MAX_TASKS:I

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    sput v1, Lcom/lenovo/memoryclean/RecentTask;->MAX_TASKS:I

    goto :goto_0
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "persistentTaskId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/lenovo/memoryclean/RecentTask;->mPersistentTaskId:I

    .line 33
    iput-object p2, p0, Lcom/lenovo/memoryclean/RecentTask;->mPackageName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static getRecentTask(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/memoryclean/RecentTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v6, "recentTaskList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/memoryclean/RecentTask;>;"
    const-string v9, "activity"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 44
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 45
    .local v4, "pm":Landroid/content/pm/PackageManager;
    sget v9, Lcom/lenovo/memoryclean/RecentTask;->MAX_TASKS:I

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v7

    .line 48
    .local v7, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 49
    .local v5, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    const-string v9, "RecentTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get recentInfo - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v2, Landroid/content/Intent;

    iget-object v9, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 55
    .local v2, "intent":Landroid/content/Intent;
    iget-object v9, v5, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v9, :cond_1

    .line 57
    iget-object v9, v5, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 61
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v9

    const v10, -0x200001

    and-int/2addr v9, v10

    const/high16 v10, 0x10000000

    or-int/2addr v9, v10

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 65
    const/4 v9, 0x0

    invoke-virtual {v4, v2, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 67
    .local v8, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v8, :cond_0

    .line 68
    const-string v9, "RecentTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "recent task:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v3, Lcom/lenovo/memoryclean/RecentTask;

    iget v9, v5, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {v3, v9, v10}, Lcom/lenovo/memoryclean/RecentTask;-><init>(ILjava/lang/String;)V

    .line 70
    .local v3, "item":Lcom/lenovo/memoryclean/RecentTask;
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 73
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "item":Lcom/lenovo/memoryclean/RecentTask;
    .end local v5    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    return-object v6
.end method
