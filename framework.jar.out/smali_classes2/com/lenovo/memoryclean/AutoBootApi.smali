.class public Lcom/lenovo/memoryclean/AutoBootApi;
.super Ljava/lang/Object;
.source "AutoBootApi.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.lenovo.lsf.bwprovider"

.field private static final CONTENT_PERM_SYS_URI:Landroid/net/Uri;

.field private static final CONTENT_PERM_USER_URI:Landroid/net/Uri;

.field private static final CONTENT_PERM_WHITE_LIST_SYS_URI:Landroid/net/Uri;

.field private static final CONTENT_PERM_WHITE_LIST_USER_URI:Landroid/net/Uri;

.field private static final FIELD_NAME_MODIFY:Ljava/lang/String; = "modify"

.field private static final FIELD_NAME_PACKAGE:Ljava/lang/String; = "package"

.field private static final FIELD_NAME_PERMISSION:Ljava/lang/String; = "permission"

.field private static final FIELD_NAME_PERMISSION_STATUS:Ljava/lang/String; = "permission_status"

.field public static final NOTIFYTYPE_ALLOW_ALWAYS:I = 0x1

.field public static final NOTIFYTYPE_ASKED_ALWAYS:I = 0x0

.field public static final NOTIFYTYPE_REFUSE_ALWAYS:I = -0x1

.field private static final RECEIVE_BOOT_COMPLETED_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_BOOT_COMPLETED"

.field private static final TABLE_PERMISSION_SYS:Ljava/lang/String; = "app_permissions_sys_settings"

.field private static final TABLE_PERMISSION_USER:Ljava/lang/String; = "app_permissions_user_settings"

.field private static final TABLE_PERMISSION_WHITE_LIST_SYS:Ljava/lang/String; = "white_list_sys_settings"

.field private static final TABLE_PERMISSION_WHITE_LIST_USER:Ljava/lang/String; = "white_list_user_settings"

.field private static final TAG:Ljava/lang/String; = "AutoBootApi"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisableAutoBootList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasInited:Z

.field private mLock:Ljava/lang/Object;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSyncPermListThread:Ljava/lang/Thread;

.field private mSyncSysWhiteListThread:Ljava/lang/Thread;

.field private mSyncThread:Ljava/lang/Thread;

.field private mSyncUserWhiteListThread:Ljava/lang/Thread;

.field private mSysPermObservable:Landroid/database/ContentObserver;

.field private mSystemWhiteLists:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemWhiteObservable:Landroid/database/ContentObserver;

.field private mUserPermObservable:Landroid/database/ContentObserver;

.field private mUserWhiteLists:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserWhiteObservable:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "content://com.lenovo.lsf.bwprovider/app_permissions_user_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/memoryclean/AutoBootApi;->CONTENT_PERM_USER_URI:Landroid/net/Uri;

    .line 46
    const-string v0, "content://com.lenovo.lsf.bwprovider/app_permissions_sys_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/memoryclean/AutoBootApi;->CONTENT_PERM_SYS_URI:Landroid/net/Uri;

    .line 51
    const-string v0, "content://com.lenovo.lsf.bwprovider/white_list_sys_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/memoryclean/AutoBootApi;->CONTENT_PERM_WHITE_LIST_SYS_URI:Landroid/net/Uri;

    .line 57
    const-string v0, "content://com.lenovo.lsf.bwprovider/white_list_user_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/memoryclean/AutoBootApi;->CONTENT_PERM_WHITE_LIST_USER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mLock:Ljava/lang/Object;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mHasInited:Z

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mDisableAutoBootList:Ljava/util/HashSet;

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSystemWhiteLists:Ljava/util/HashSet;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mUserWhiteLists:Ljava/util/HashSet;

    .line 301
    new-instance v0, Lcom/lenovo/memoryclean/AutoBootApi$1;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/memoryclean/AutoBootApi$1;-><init>(Lcom/lenovo/memoryclean/AutoBootApi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mUserWhiteObservable:Landroid/database/ContentObserver;

    .line 312
    new-instance v0, Lcom/lenovo/memoryclean/AutoBootApi$2;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/memoryclean/AutoBootApi$2;-><init>(Lcom/lenovo/memoryclean/AutoBootApi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSystemWhiteObservable:Landroid/database/ContentObserver;

    .line 323
    new-instance v0, Lcom/lenovo/memoryclean/AutoBootApi$3;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/memoryclean/AutoBootApi$3;-><init>(Lcom/lenovo/memoryclean/AutoBootApi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mUserPermObservable:Landroid/database/ContentObserver;

    .line 334
    new-instance v0, Lcom/lenovo/memoryclean/AutoBootApi$4;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/memoryclean/AutoBootApi$4;-><init>(Lcom/lenovo/memoryclean/AutoBootApi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSysPermObservable:Landroid/database/ContentObserver;

    .line 99
    iput-object p1, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mContext:Landroid/content/Context;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/memoryclean/AutoBootApi;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/memoryclean/AutoBootApi;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lenovo/memoryclean/AutoBootApi;->startSyncUserWhiteLists()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/memoryclean/AutoBootApi;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/memoryclean/AutoBootApi;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lenovo/memoryclean/AutoBootApi;->startSyncSysWhiteLists()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/memoryclean/AutoBootApi;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/memoryclean/AutoBootApi;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lenovo/memoryclean/AutoBootApi;->startSyncPermLists()V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/memoryclean/AutoBootApi;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/memoryclean/AutoBootApi;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/memoryclean/AutoBootApi;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/memoryclean/AutoBootApi;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lenovo/memoryclean/AutoBootApi;->loadFromDb(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$502(Lcom/lenovo/memoryclean/AutoBootApi;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/memoryclean/AutoBootApi;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$600(Lcom/lenovo/memoryclean/AutoBootApi;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/memoryclean/AutoBootApi;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lenovo/memoryclean/AutoBootApi;->loadPermListFromDb(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$702(Lcom/lenovo/memoryclean/AutoBootApi;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/memoryclean/AutoBootApi;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncPermListThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$800(Lcom/lenovo/memoryclean/AutoBootApi;Landroid/content/Context;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/memoryclean/AutoBootApi;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Z

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/lenovo/memoryclean/AutoBootApi;->loadWhiteListFromDb(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$902(Lcom/lenovo/memoryclean/AutoBootApi;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/memoryclean/AutoBootApi;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncUserWhiteListThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private loadFromDb(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mHasInited:Z

    .line 111
    invoke-direct {p0, p1}, Lcom/lenovo/memoryclean/AutoBootApi;->loadPermListFromDb(Landroid/content/Context;)V

    .line 112
    invoke-direct {p0, p1, v0}, Lcom/lenovo/memoryclean/AutoBootApi;->loadWhiteListFromDb(Landroid/content/Context;Z)V

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/memoryclean/AutoBootApi;->loadWhiteListFromDb(Landroid/content/Context;Z)V

    .line 114
    return-void
.end method

.method private loadPermListFromDb(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, -0x1

    .line 122
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 123
    .local v6, "autoBootUnablelist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 125
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    sget-object v1, Lcom/lenovo/memoryclean/AutoBootApi;->CONTENT_PERM_USER_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "package"

    aput-object v4, v2, v3

    const-string v3, "permission=? AND permission_status=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "android.permission.RECEIVE_BOOT_COMPLETED"

    aput-object v11, v4, v5

    const/4 v5, 0x1

    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 132
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 133
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 134
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 135
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 136
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 194
    .end local v7    # "cursor":Landroid/database/Cursor;
    :goto_1
    return-void

    .line 140
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_0
    const-string v1, "package"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 142
    .local v9, "pkgName":Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 191
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    const-string v1, "AutoBootApi"

    const-string v2, "loadPermListFromDb fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 146
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_1
    const-string v1, "AutoBootApi"

    const-string v2, "user perm no app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 149
    const/4 v7, 0x0

    .line 156
    :goto_2
    sget-object v1, Lcom/lenovo/memoryclean/AutoBootApi;->CONTENT_PERM_SYS_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "package"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "permission_status"

    aput-object v4, v2, v3

    const-string v3, "permission=? AND modify=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "android.permission.RECEIVE_BOOT_COMPLETED"

    aput-object v11, v4, v5

    const/4 v5, 0x1

    const-string v11, "0"

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 162
    if-eqz v7, :cond_8

    .line 163
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 164
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 165
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_7

    .line 166
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 167
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 151
    :cond_3
    const-string v1, "AutoBootApi"

    const-string v2, "get user perm fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 170
    :cond_4
    const-string v1, "permission_status"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 172
    .local v10, "status":I
    const-string v1, "package"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 174
    .restart local v9    # "pkgName":Ljava/lang/String;
    if-ne v10, v12, :cond_5

    .line 175
    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 179
    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .line 177
    :cond_5
    invoke-virtual {v6, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 182
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v10    # "status":I
    :cond_6
    const-string v1, "AutoBootApi"

    const-string v2, "sys perm no app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 185
    const/4 v7, 0x0

    .line 189
    :goto_5
    invoke-direct {p0, v6}, Lcom/lenovo/memoryclean/AutoBootApi;->updatePermList(Ljava/util/HashSet;)V

    goto/16 :goto_1

    .line 187
    :cond_8
    const-string v1, "AutoBootApi"

    const-string v2, "sys user perm fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method private loadWhiteListFromDb(Landroid/content/Context;Z)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isUser"    # Z

    .prologue
    .line 201
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 202
    .local v8, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 204
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-eqz p2, :cond_0

    .line 205
    sget-object v1, Lcom/lenovo/memoryclean/AutoBootApi;->CONTENT_PERM_WHITE_LIST_USER_URI:Landroid/net/Uri;

    .line 210
    .local v1, "uri":Landroid/net/Uri;
    :goto_0
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "package"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 214
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 215
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 216
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 217
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 218
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    .end local v6    # "cursor":Landroid/database/Cursor;
    :goto_2
    return-void

    .line 207
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    sget-object v1, Lcom/lenovo/memoryclean/AutoBootApi;->CONTENT_PERM_WHITE_LIST_SYS_URI:Landroid/net/Uri;

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 221
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_1
    const-string v2, "package"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 223
    .local v9, "pkgName":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 235
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 236
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    const-string v2, "AutoBootApi"

    const-string v3, "loadWhiteListFromDb fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 227
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_2
    const-string v2, "AutoBootApi"

    const-string v3, "loadWhiteListFromDb no app"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 230
    const/4 v6, 0x0

    .line 234
    :goto_3
    invoke-direct {p0, v8, p2}, Lcom/lenovo/memoryclean/AutoBootApi;->updateWhiteList(Ljava/util/HashSet;Z)V

    goto :goto_2

    .line 232
    :cond_4
    const-string v2, "AutoBootApi"

    const-string v3, "loadWhiteListFromDb fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method private startSyncLists()V
    .locals 2

    .prologue
    .line 343
    const-string v0, "AutoBootApi"

    const-string v1, "startSyncLists"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 347
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/memoryclean/AutoBootApi$5;

    invoke-direct {v1, p0}, Lcom/lenovo/memoryclean/AutoBootApi$5;-><init>(Lcom/lenovo/memoryclean/AutoBootApi;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncThread:Ljava/lang/Thread;

    .line 354
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 355
    return-void
.end method

.method private startSyncPermLists()V
    .locals 2

    .prologue
    .line 358
    const-string v0, "AutoBootApi"

    const-string v1, "startSyncSystemWhiteLists"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncPermListThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncPermListThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 362
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/memoryclean/AutoBootApi$6;

    invoke-direct {v1, p0}, Lcom/lenovo/memoryclean/AutoBootApi$6;-><init>(Lcom/lenovo/memoryclean/AutoBootApi;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncPermListThread:Ljava/lang/Thread;

    .line 369
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncPermListThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 370
    return-void
.end method

.method private startSyncSysWhiteLists()V
    .locals 2

    .prologue
    .line 372
    const-string v0, "AutoBootApi"

    const-string v1, "startSyncSysWhiteLists"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncSysWhiteListThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncSysWhiteListThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 376
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/memoryclean/AutoBootApi$7;

    invoke-direct {v1, p0}, Lcom/lenovo/memoryclean/AutoBootApi$7;-><init>(Lcom/lenovo/memoryclean/AutoBootApi;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncSysWhiteListThread:Ljava/lang/Thread;

    .line 383
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncSysWhiteListThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 384
    return-void
.end method

.method private startSyncUserWhiteLists()V
    .locals 2

    .prologue
    .line 386
    const-string v0, "AutoBootApi"

    const-string v1, "startSyncUserWhiteLists"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncUserWhiteListThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncUserWhiteListThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 390
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/memoryclean/AutoBootApi$8;

    invoke-direct {v1, p0}, Lcom/lenovo/memoryclean/AutoBootApi$8;-><init>(Lcom/lenovo/memoryclean/AutoBootApi;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncUserWhiteListThread:Ljava/lang/Thread;

    .line 397
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSyncUserWhiteListThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 398
    return-void
.end method

.method private updatePermList(Ljava/util/HashSet;)V
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
    .line 241
    .local p1, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mDisableAutoBootList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 243
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mDisableAutoBootList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 244
    monitor-exit v1

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateWhiteList(Ljava/util/HashSet;Z)V
    .locals 2
    .param p2, "isUser"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 248
    if-eqz p2, :cond_0

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mUserWhiteLists:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 250
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mUserWhiteLists:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 256
    :goto_0
    monitor-exit v1

    .line 257
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSystemWhiteLists:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 253
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSystemWhiteLists:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public isInAutoBootAbleList(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 262
    iget-object v1, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 263
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSystemWhiteLists:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    monitor-exit v1

    .line 268
    :goto_0
    return v0

    .line 265
    :cond_0
    iget-object v2, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mUserWhiteLists:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    monitor-exit v1

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 268
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mDisableAutoBootList:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public loadFromDbIfNeed()V
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mHasInited:Z

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/lenovo/memoryclean/AutoBootApi;->loadFromDb(Landroid/content/Context;)V

    .line 108
    :cond_0
    return-void
.end method

.method public registerContentObserve()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 276
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mResolver:Landroid/content/ContentResolver;

    .line 277
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/lenovo/memoryclean/AutoBootApi;->CONTENT_PERM_USER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mUserPermObservable:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 278
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/lenovo/memoryclean/AutoBootApi;->CONTENT_PERM_SYS_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSysPermObservable:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 279
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/lenovo/memoryclean/AutoBootApi;->CONTENT_PERM_WHITE_LIST_SYS_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSystemWhiteObservable:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 280
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/lenovo/memoryclean/AutoBootApi;->CONTENT_PERM_WHITE_LIST_USER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mUserWhiteObservable:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 281
    iget-boolean v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mHasInited:Z

    if-nez v0, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/lenovo/memoryclean/AutoBootApi;->startSyncLists()V

    .line 284
    :cond_0
    return-void
.end method

.method public unRegisterContentObserve()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mUserPermObservable:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 292
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSysPermObservable:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 293
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mSystemWhiteObservable:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 294
    iget-object v0, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/lenovo/memoryclean/AutoBootApi;->mUserWhiteObservable:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 296
    :cond_0
    return-void
.end method
