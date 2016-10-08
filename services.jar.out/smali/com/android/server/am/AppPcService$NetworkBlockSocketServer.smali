.class Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;
.super Ljava/lang/Thread;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkBlockSocketServer"
.end annotation


# instance fields
.field private final CONTENT_URI:Landroid/net/Uri;

.field private final _RULE:Ljava/lang/String;

.field private final _UID:Ljava/lang/String;

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/am/AppPcService;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcService;I)V
    .locals 1
    .param p2, "uid"    # I

    .prologue
    .line 2288
    iput-object p1, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->this$0:Lcom/android/server/am/AppPcService;

    .line 2289
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2283
    const-string v0, "content://com.lenovo.security/fire_wall"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->CONTENT_URI:Landroid/net/Uri;

    .line 2285
    const-string v0, "_uid"

    iput-object v0, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->_UID:Ljava/lang/String;

    .line 2286
    const-string v0, "_rule"

    iput-object v0, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->_RULE:Ljava/lang/String;

    .line 2290
    iput p2, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->mUid:I

    .line 2291
    return-void
.end method

.method private getPkgIsBlockBySecurity(Ljava/lang/String;)Z
    .locals 14
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2340
    const/4 v7, 0x0

    .line 2342
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 2343
    .local v8, "firewallRuleSet":Lcom/android/server/am/AppPcService$FirewallRuleSet;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/AppPcService;->access$1200(Lcom/android/server/am/AppPcService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_uid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2346
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2347
    const-string v0, "_rule"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2349
    .local v10, "rule":Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/am/AppPcService$FirewallRuleSet;->parse(Ljava/lang/String;)Lcom/android/server/am/AppPcService$FirewallRuleSet;

    move-result-object v8

    .line 2350
    if-nez v8, :cond_3

    .line 2351
    const-string v0, "Security_AppPcService"

    const-string v1, "getPkgIsBlockBySecurity firewallRuleSet == null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2380
    if-eqz v7, :cond_0

    .line 2381
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v12

    .line 2384
    .end local v10    # "rule":Ljava/lang/String;
    :goto_0
    return v0

    .line 2356
    :cond_1
    :try_start_1
    const-string v0, "Security_AppPcService"

    const-string v1, "getPkgIsBlockBySecurity cursor invaild"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2380
    if-eqz v7, :cond_2

    .line 2381
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v12

    goto :goto_0

    .line 2360
    .restart local v10    # "rule":Ljava/lang/String;
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/AppPcService;->access$1200(Lcom/android/server/am/AppPcService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 2362
    .local v6, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    .line 2364
    .local v9, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2366
    :cond_4
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    .line 2367
    .local v11, "type":I
    if-ne v11, v13, :cond_6

    iget-object v0, v8, Lcom/android/server/am/AppPcService$FirewallRuleSet;->wifiRule:Lcom/android/server/am/AppPcService$FirewallRule;

    sget-object v1, Lcom/android/server/am/AppPcService$FirewallRule;->Restrict:Lcom/android/server/am/AppPcService$FirewallRule;

    if-ne v0, v1, :cond_6

    .line 2369
    const-string v0, "Security_AppPcService"

    const-string v1, "getPkgIsBlockBySecurity wifi Restrict"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2380
    if-eqz v7, :cond_5

    .line 2381
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v13

    goto :goto_0

    .line 2371
    :cond_6
    if-nez v11, :cond_a

    :try_start_3
    iget-object v0, v8, Lcom/android/server/am/AppPcService$FirewallRuleSet;->mobileRule:Lcom/android/server/am/AppPcService$FirewallRule;

    sget-object v1, Lcom/android/server/am/AppPcService$FirewallRule;->Restrict:Lcom/android/server/am/AppPcService$FirewallRule;

    if-ne v0, v1, :cond_a

    .line 2372
    const-string v0, "Security_AppPcService"

    const-string v1, "getPkgIsBlockBySecurity mobile Restrict"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2380
    if-eqz v7, :cond_7

    .line 2381
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    move v0, v13

    goto :goto_0

    .line 2376
    .end local v11    # "type":I
    :cond_8
    :try_start_4
    const-string v0, "Security_AppPcService"

    const-string v1, "getPkgIsBlockBySecurity networkInfo invaild"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2380
    if-eqz v7, :cond_9

    .line 2381
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    move v0, v12

    goto :goto_0

    .line 2380
    .restart local v11    # "type":I
    :cond_a
    if-eqz v7, :cond_b

    .line 2381
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_b
    move v0, v12

    .line 2384
    goto :goto_0

    .line 2380
    .end local v6    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v9    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v10    # "rule":Ljava/lang/String;
    .end local v11    # "type":I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_c

    .line 2381
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0
.end method

.method private loadFirstTask(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 2388
    const-string v6, "activity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2391
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v6, 0x1

    const/4 v7, 0x2

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v4

    .line 2395
    .local v4, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 2396
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 2398
    .local v3, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v1, Landroid/content/Intent;

    iget-object v6, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2399
    .local v1, "intent":Landroid/content/Intent;
    iget-object v6, v3, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    .line 2400
    iget-object v6, v3, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2403
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const v7, -0x200001

    and-int/2addr v6, v7

    const/high16 v7, 0x10000000

    or-int/2addr v6, v7

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2405
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2406
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 2408
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_1

    .line 2409
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2412
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 2297
    :try_start_0
    iget v5, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->mUid:I

    .line 2298
    .local v5, "uid":I
    iget-object v7, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/am/AppPcService;->access$1200(Lcom/android/server/am/AppPcService;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->loadFirstTask(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2299
    .local v1, "fistPkg":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;
    invoke-static {v7}, Lcom/android/server/am/AppPcService;->access$5600(Lcom/android/server/am/AppPcService;)Lcom/android/server/am/AppPcService$PermControlService;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Lcom/android/server/am/AppPcService$PermControlService;->getPackageName(II)Ljava/lang/String;

    move-result-object v6

    .line 2303
    .local v6, "uidPkg":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v6, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2306
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->getPkgIsBlockBySecurity(Ljava/lang/String;)Z

    move-result v2

    .line 2307
    .local v2, "isInBlockList":Z
    const-string v7, "Security_AppPcService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isInBlockList = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    if-nez v2, :cond_1

    .line 2331
    .end local v1    # "fistPkg":Ljava/lang/String;
    .end local v2    # "isInBlockList":Z
    .end local v5    # "uid":I
    .end local v6    # "uidPkg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2311
    .restart local v1    # "fistPkg":Ljava/lang/String;
    .restart local v2    # "isInBlockList":Z
    .restart local v5    # "uid":I
    .restart local v6    # "uidPkg":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mLastNetworkBlockToastTimes:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/server/am/AppPcService;->access$5700(Lcom/android/server/am/AppPcService;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 2312
    .local v4, "time":Ljava/lang/Long;
    if-eqz v4, :cond_2

    .line 2313
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0xea60

    add-long/2addr v8, v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gtz v7, :cond_0

    .line 2318
    :cond_2
    iget-object v7, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mLastNetworkBlockToastTimes:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/server/am/AppPcService;->access$5700(Lcom/android/server/am/AppPcService;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2321
    iget-object v7, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/am/AppPcService;->access$5800(Lcom/android/server/am/AppPcService;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2323
    iget-object v7, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/am/AppPcService;->access$5800(Lcom/android/server/am/AppPcService;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2325
    .local v3, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/am/AppPcService;->access$5800(Lcom/android/server/am/AppPcService;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2328
    .end local v1    # "fistPkg":Ljava/lang/String;
    .end local v2    # "isInBlockList":Z
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "time":Ljava/lang/Long;
    .end local v5    # "uid":I
    .end local v6    # "uidPkg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2329
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
