.class public Lcom/lenovo/memoryclean/LockPkgApi;
.super Ljava/lang/Object;
.source "LockPkgApi.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.lenovo.lsf.bwprovider"

.field private static final CUSTOM_WHITE_LIST_APPS_URI:Ljava/lang/String; = "content://com.lenovo.lsf.bwprovider/sys_accelerate_customized"

.field private static final SAC_FIELD_REMOVED:Ljava/lang/String; = "is_removable"

.field private static final SAC_TABLE_NAME:Ljava/lang/String; = "sys_accelerate_customized"

.field private static final SA_FIELD_APPNAME:Ljava/lang/String; = "app_name"

.field private static final SA_FIELD_PKGNAME:Ljava/lang/String; = "pkg_name"

.field private static final TAG:Ljava/lang/String; = "LockPkgApi"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasInited:Z

.field private mLock:Ljava/lang/Object;

.field private mLockList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mSyncThread:Ljava/lang/Thread;

.field private mUserTableObservable:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mLock:Ljava/lang/Object;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mHasInited:Z

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mLockList:Ljava/util/HashSet;

    .line 184
    new-instance v0, Lcom/lenovo/memoryclean/LockPkgApi$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/memoryclean/LockPkgApi$1;-><init>(Lcom/lenovo/memoryclean/LockPkgApi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mUserTableObservable:Landroid/database/ContentObserver;

    .line 38
    iput-object p1, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/memoryclean/LockPkgApi;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/memoryclean/LockPkgApi;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/lenovo/memoryclean/LockPkgApi;->startSyncWhiteLists()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/memoryclean/LockPkgApi;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/memoryclean/LockPkgApi;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/memoryclean/LockPkgApi;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/memoryclean/LockPkgApi;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/lenovo/memoryclean/LockPkgApi;->loadWhiteFromDb(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$302(Lcom/lenovo/memoryclean/LockPkgApi;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/memoryclean/LockPkgApi;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mSyncThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private addToLockList(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v1, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mLockList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 151
    monitor-exit v1

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadWhiteFromDb(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 53
    iput-boolean v2, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mHasInited:Z

    .line 55
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 56
    .local v8, "lockList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 57
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "content://com.lenovo.lsf.bwprovider/sys_accelerate_customized"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 63
    .local v1, "uri_custom":Landroid/net/Uri;
    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "pkg_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "is_removable"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 65
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 66
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 67
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 68
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2

    .line 69
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    .end local v6    # "cursor":Landroid/database/Cursor;
    :goto_1
    return-void

    .line 72
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    const-string v2, "pkg_name"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 77
    .local v9, "pkgName":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 96
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    const-string v2, "LockPkgApi"

    const-string v3, "initList fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 87
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_1
    const-string v2, "LockPkgApi"

    const-string v3, "user whitelist no app"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 90
    const/4 v6, 0x0

    .line 94
    :goto_2
    invoke-direct {p0, v8}, Lcom/lenovo/memoryclean/LockPkgApi;->updateList(Ljava/util/HashSet;)V

    goto :goto_1

    .line 92
    :cond_3
    const-string v2, "LockPkgApi"

    const-string v3, "get user whitelist fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private removeFromLockList(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v1, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mLockList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 159
    monitor-exit v1

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startSyncWhiteLists()V
    .locals 2

    .prologue
    .line 192
    const-string v0, "LockPkgApi"

    const-string v1, "startSyncSystemWhiteLists"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mSyncThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/memoryclean/LockPkgApi$2;

    invoke-direct {v1, p0}, Lcom/lenovo/memoryclean/LockPkgApi$2;-><init>(Lcom/lenovo/memoryclean/LockPkgApi;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mSyncThread:Ljava/lang/Thread;

    .line 203
    iget-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 204
    return-void
.end method

.method private updateList(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "lockList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mLockList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 103
    iget-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mLockList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 104
    monitor-exit v1

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public isInLockList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v1, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mLockList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadWhiteFromDbIfNeed()V
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mHasInited:Z

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/lenovo/memoryclean/LockPkgApi;->loadWhiteFromDb(Landroid/content/Context;)V

    .line 47
    :cond_0
    return-void
.end method

.method public lockPkg(Ljava/lang/String;)Z
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 111
    iget-object v4, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 112
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v4, "content://com.lenovo.lsf.bwprovider/sys_accelerate_customized"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 114
    .local v2, "uri_custom":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 115
    .local v3, "value":Landroid/content/ContentValues;
    const-string v4, "is_removable"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    const-string v4, "pkg_name=?"

    new-array v5, v7, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 117
    .local v0, "count":I
    if-gtz v0, :cond_0

    .line 119
    const-string v4, "app_name"

    iget-object v5, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/lenovo/memoryclean/Utils;->getApplicationName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v4, "pkg_name"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 123
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/memoryclean/LockPkgApi;->addToLockList(Ljava/lang/String;)V

    .line 124
    return v7
.end method

.method public registerContentObserve()V
    .locals 4

    .prologue
    .line 165
    const-string v1, "content://com.lenovo.lsf.bwprovider/sys_accelerate_customized"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 166
    .local v0, "uri_custom":Landroid/net/Uri;
    iget-object v1, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mResolver:Landroid/content/ContentResolver;

    .line 167
    iget-object v1, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mUserTableObservable:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 169
    iget-boolean v1, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mHasInited:Z

    if-nez v1, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/lenovo/memoryclean/LockPkgApi;->startSyncWhiteLists()V

    .line 172
    :cond_0
    return-void
.end method

.method public unLockPkg(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 131
    iget-object v2, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 132
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "content://com.lenovo.lsf.bwprovider/sys_accelerate_customized"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 133
    .local v1, "uri_custom":Landroid/net/Uri;
    const-string v2, "pkg_name=?"

    new-array v3, v5, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 134
    invoke-direct {p0, p1}, Lcom/lenovo/memoryclean/LockPkgApi;->removeFromLockList(Ljava/lang/String;)V

    .line 135
    return v5
.end method

.method public unRegisterContentObserve()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mUserTableObservable:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 180
    :cond_0
    return-void
.end method
