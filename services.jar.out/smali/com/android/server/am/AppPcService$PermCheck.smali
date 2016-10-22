.class Lcom/android/server/am/AppPcService$PermCheck;
.super Ljava/lang/Object;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermCheck"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppPcService$PermCheck$LastCheckResult;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.lenovo.lsf.bwprovider"

.field private static final CONTENT_PERM_SYS_URI:Landroid/net/Uri;

.field private static final CONTENT_PERM_USER_URI:Landroid/net/Uri;

.field private static final CONTENT_PERM_WHITE_LIST_SYS_URI:Landroid/net/Uri;

.field private static final CONTENT_PERM_WHITE_LIST_USER_URI:Landroid/net/Uri;

.field private static final FIELD_NAME_MODIFY:Ljava/lang/String; = "modify"

.field private static final FIELD_NAME_PACKAGE:Ljava/lang/String; = "package"

.field private static final FIELD_NAME_PERMISSION:Ljava/lang/String; = "permission"

.field private static final FIELD_NAME_PERMISSION_BACKGROUND_STATUS:Ljava/lang/String; = "extra_data_1"

.field private static final FIELD_NAME_PERMISSION_STATUS:Ljava/lang/String; = "permission_status"

.field public static final NOTIFYTYPE_ALLOW_ALWAYS:I = 0x1

.field public static final NOTIFYTYPE_ASKED_ALWAYS:I = 0x0

.field public static final NOTIFYTYPE_REFUSE_ALWAYS:I = -0x1

.field private static final TABLE_PERMISSION_SYS:Ljava/lang/String; = "app_permissions_sys_settings"

.field private static final TABLE_PERMISSION_USER:Ljava/lang/String; = "app_permissions_user_settings"

.field private static final TABLE_PERMISSION_WHITE_LIST_SYS:Ljava/lang/String; = "white_list_sys_settings"

.field private static final TABLE_PERMISSION_WHITE_LIST_USER:Ljava/lang/String; = "white_list_user_settings"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLastCheckResultLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/AppPcService$PermCheck$LastCheckResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemPermissionLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemPermissionListsSyncThread:Ljava/lang/Thread;

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

.field private mSystemWhiteListsSyncThread:Ljava/lang/Thread;

.field private mUidPackageNameMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserPermissionLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserPermissionListsSyncThread:Ljava/lang/Thread;

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

.field private mUserWhiteListsSyncThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1826
    const-string v0, "content://com.lenovo.lsf.bwprovider/app_permissions_user_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_USER_URI:Landroid/net/Uri;

    .line 1831
    const-string v0, "content://com.lenovo.lsf.bwprovider/app_permissions_sys_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_SYS_URI:Landroid/net/Uri;

    .line 1836
    const-string v0, "content://com.lenovo.lsf.bwprovider/white_list_sys_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_WHITE_LIST_SYS_URI:Landroid/net/Uri;

    .line 1842
    const-string v0, "content://com.lenovo.lsf.bwprovider/white_list_user_settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_WHITE_LIST_USER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 1893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1804
    const-string v0, "Security_PermCheck"

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->TAG:Ljava/lang/String;

    .line 1868
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemWhiteLists:Ljava/util/HashSet;

    .line 1872
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserWhiteLists:Ljava/util/HashSet;

    .line 1876
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemPermissionLists:Ljava/util/HashMap;

    .line 1880
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionLists:Ljava/util/HashMap;

    .line 1882
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUidPackageNameMaps:Ljava/util/HashMap;

    .line 1884
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mLastCheckResultLists:Ljava/util/HashMap;

    .line 1887
    iput-object v1, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemWhiteListsSyncThread:Ljava/lang/Thread;

    .line 1888
    iput-object v1, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserWhiteListsSyncThread:Ljava/lang/Thread;

    .line 1889
    iput-object v1, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemPermissionListsSyncThread:Ljava/lang/Thread;

    .line 1890
    iput-object v1, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionListsSyncThread:Ljava/lang/Thread;

    .line 1891
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mHandler:Landroid/os/Handler;

    .line 1894
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermCheck;->mContext:Landroid/content/Context;

    .line 1895
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermCheck;->startSyncSystemWhiteLists()V

    .line 1896
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermCheck;->startSyncUserWhiteLists()V

    .line 1897
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermCheck;->startSyncSystemPermissionLists()V

    .line 1898
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermCheck;->startSyncUserPermissionLists()V

    .line 1900
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_WHITE_LIST_SYS_URI:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/AppPcService$PermCheck$1;

    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermCheck;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/AppPcService$PermCheck$1;-><init>(Lcom/android/server/am/AppPcService$PermCheck;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1908
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_WHITE_LIST_USER_URI:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/AppPcService$PermCheck$2;

    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermCheck;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/AppPcService$PermCheck$2;-><init>(Lcom/android/server/am/AppPcService$PermCheck;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1916
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_SYS_URI:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/AppPcService$PermCheck$3;

    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermCheck;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/AppPcService$PermCheck$3;-><init>(Lcom/android/server/am/AppPcService$PermCheck;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1924
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_USER_URI:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/AppPcService$PermCheck$4;

    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermCheck;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/AppPcService$PermCheck$4;-><init>(Lcom/android/server/am/AppPcService$PermCheck;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1932
    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUidPackageNameMaps:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/am/AppPcService$PermCheck;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;

    .prologue
    .line 1803
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermCheck;->startSyncSystemWhiteLists()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/am/AppPcService$PermCheck;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;

    .prologue
    .line 1803
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermCheck;->startSyncUserWhiteLists()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/am/AppPcService$PermCheck;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;

    .prologue
    .line 1803
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermCheck;->startSyncSystemPermissionLists()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/am/AppPcService$PermCheck;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;

    .prologue
    .line 1803
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermCheck;->startSyncUserPermissionLists()V

    return-void
.end method

.method static synthetic access$4200()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1803
    sget-object v0, Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_WHITE_LIST_SYS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/am/AppPcService$PermCheck;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemWhiteLists:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/server/am/AppPcService$PermCheck;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 1803
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemWhiteListsSyncThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$4600()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1803
    sget-object v0, Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_WHITE_LIST_USER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserWhiteLists:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/server/am/AppPcService$PermCheck;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 1803
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserWhiteListsSyncThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$4900()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1803
    sget-object v0, Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_SYS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemPermissionLists:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5100(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 1803
    invoke-static {p0}, Lcom/android/server/am/AppPcService$PermCheck;->translateBackgroundStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5202(Lcom/android/server/am/AppPcService$PermCheck;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 1803
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemPermissionListsSyncThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$5300()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1803
    sget-object v0, Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_USER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/am/AppPcService$PermCheck;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionLists:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/am/AppPcService$PermCheck;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1803
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService$PermCheck;->getUidByPackageName(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5602(Lcom/android/server/am/AppPcService$PermCheck;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermCheck;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 1803
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionListsSyncThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private changePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "perm"    # Ljava/lang/String;
    .param p3, "notifyType"    # I

    .prologue
    .line 2175
    invoke-static {p1, p2}, Lcom/android/server/am/AppPcService$PermCheck;->genNotifyTypeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2182
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionLists:Ljava/util/HashMap;

    monitor-enter v5

    .line 2183
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionLists:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Integer;

    .line 2184
    .local v3, "values":[Ljava/lang/Integer;
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 2185
    const/4 v4, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    .line 2186
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionLists:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2188
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2189
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2190
    .local v2, "newValues":Landroid/content/ContentValues;
    const-string v4, "permission_status"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2192
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/server/am/AppPcService$PermCheck;->CONTENT_PERM_USER_URI:Landroid/net/Uri;

    const-string v6, "package=? AND permission=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2198
    :goto_0
    return-void

    .line 2188
    .end local v2    # "newValues":Landroid/content/ContentValues;
    .end local v3    # "values":[Ljava/lang/Integer;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 2194
    .restart local v2    # "newValues":Landroid/content/ContentValues;
    .restart local v3    # "values":[Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 2195
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Security_PermCheck"

    const-string v5, "changePermission error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static genNotifyTypeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "packagename"    # Ljava/lang/String;
    .param p1, "perm"    # Ljava/lang/String;

    .prologue
    .line 2273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPermissionByCode(I)Ljava/util/ArrayList;
    .locals 4
    .param p0, "permIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2205
    # getter for: Lcom/android/server/am/AppPcService;->sPermissionDbCode:[I
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$5700()[I

    move-result-object v3

    aget v0, v3, p0

    .line 2206
    .local v0, "code":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2207
    .local v2, "permList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    # getter for: Lcom/android/server/am/AppPcService;->sPermissionDbCode:[I
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$5700()[I

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 2208
    # getter for: Lcom/android/server/am/AppPcService;->sPermissionDbCode:[I
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$5700()[I

    move-result-object v3

    aget v3, v3, v1

    if-ne v3, v0, :cond_0

    .line 2209
    # getter for: Lcom/android/server/am/AppPcService;->sAndroidPerms:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$2500()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2207
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2212
    :cond_1
    return-object v2
.end method

.method private getUidByPackageName(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2130
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2131
    .local v2, "pkgManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2133
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2137
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pkgManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 2134
    :catch_0
    move-exception v0

    .line 2135
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2137
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private startSyncSystemPermissionLists()V
    .locals 2

    .prologue
    .line 2013
    const-string v0, "Security_PermCheck"

    const-string v1, "startSyncSystemPermissionLists"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemPermissionListsSyncThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 2015
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemPermissionListsSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2017
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/AppPcService$PermCheck$7;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppPcService$PermCheck$7;-><init>(Lcom/android/server/am/AppPcService$PermCheck;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemPermissionListsSyncThread:Ljava/lang/Thread;

    .line 2057
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemPermissionListsSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2058
    return-void
.end method

.method private startSyncSystemWhiteLists()V
    .locals 2

    .prologue
    .line 1934
    const-string v0, "Security_PermCheck"

    const-string v1, "startSyncSystemWhiteLists"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemWhiteListsSyncThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1936
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemWhiteListsSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1938
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/AppPcService$PermCheck$5;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppPcService$PermCheck$5;-><init>(Lcom/android/server/am/AppPcService$PermCheck;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemWhiteListsSyncThread:Ljava/lang/Thread;

    .line 1973
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemWhiteListsSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1974
    return-void
.end method

.method private startSyncUserPermissionLists()V
    .locals 2

    .prologue
    .line 2060
    const-string v0, "Security_PermCheck"

    const-string v1, "startSyncUserPermissionLists"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionListsSyncThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 2062
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionListsSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2064
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/AppPcService$PermCheck$8;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppPcService$PermCheck$8;-><init>(Lcom/android/server/am/AppPcService$PermCheck;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionListsSyncThread:Ljava/lang/Thread;

    .line 2107
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionListsSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2108
    return-void
.end method

.method private startSyncUserWhiteLists()V
    .locals 2

    .prologue
    .line 1976
    const-string v0, "Security_PermCheck"

    const-string v1, "startSyncUserWhiteLists"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserWhiteListsSyncThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1978
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserWhiteListsSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1980
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/AppPcService$PermCheck$6;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppPcService$PermCheck$6;-><init>(Lcom/android/server/am/AppPcService$PermCheck;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserWhiteListsSyncThread:Ljava/lang/Thread;

    .line 2010
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserWhiteListsSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2011
    return-void
.end method

.method private static translateBackgroundStatus(Ljava/lang/String;)I
    .locals 3
    .param p0, "extra_data_1"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 2111
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 2125
    :cond_0
    :goto_0
    return v0

    .line 2115
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2116
    .local v0, "value":I
    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2118
    const/4 v0, 0x1

    goto :goto_0

    .line 2121
    .end local v0    # "value":I
    :catch_0
    move-exception v2

    move v0, v1

    .line 2125
    goto :goto_0
.end method


# virtual methods
.method public changePermissionByCode(Ljava/lang/String;II)V
    .locals 4
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "notifyType"    # I

    .prologue
    .line 2162
    invoke-static {p2}, Lcom/android/server/am/AppPcService$PermCheck;->getPermissionByCode(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 2163
    .local v2, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2164
    .local v1, "perm":Ljava/lang/String;
    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/am/AppPcService$PermCheck;->changePermission(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 2166
    .end local v1    # "perm":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getBackgroundNotifyType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "perm"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 2246
    const/4 v2, 0x0

    .line 2247
    .local v2, "result":[Ljava/lang/Integer;
    invoke-static {p1, p2}, Lcom/android/server/am/AppPcService$PermCheck;->genNotifyTypeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2249
    .local v1, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemPermissionLists:Ljava/util/HashMap;

    monitor-enter v6

    .line 2250
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemPermissionLists:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Ljava/lang/Integer;

    move-object v2, v0

    .line 2251
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2253
    if-nez v2, :cond_0

    .line 2254
    iget-object v6, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionLists:Ljava/util/HashMap;

    monitor-enter v6

    .line 2255
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionLists:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Ljava/lang/Integer;

    move-object v2, v0

    .line 2256
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2259
    :cond_0
    if-eqz v2, :cond_1

    array-length v3, v2

    if-gt v3, v5, :cond_2

    .line 2260
    :cond_1
    const-string v3, "Security_PermCheck"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNotifyType key="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 2263
    :goto_0
    return v3

    .line 2251
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2256
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 2263
    :cond_2
    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_0
.end method

.method public getNotifyType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "perm"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 2219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v4

    .line 2239
    :goto_0
    return v3

    .line 2222
    :cond_1
    const/4 v2, 0x0

    .line 2223
    .local v2, "result":[Ljava/lang/Integer;
    invoke-static {p1, p2}, Lcom/android/server/am/AppPcService$PermCheck;->genNotifyTypeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2225
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemPermissionLists:Ljava/util/HashMap;

    monitor-enter v5

    .line 2226
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemPermissionLists:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Ljava/lang/Integer;

    move-object v2, v0

    .line 2227
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2229
    if-nez v2, :cond_2

    .line 2230
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionLists:Ljava/util/HashMap;

    monitor-enter v5

    .line 2231
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserPermissionLists:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Ljava/lang/Integer;

    move-object v2, v0

    .line 2232
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2235
    :cond_2
    if-eqz v2, :cond_3

    array-length v3, v2

    if-gtz v3, :cond_4

    .line 2236
    :cond_3
    const-string v3, "Security_PermCheck"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNotifyType key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 2237
    goto :goto_0

    .line 2227
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2232
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 2239
    :cond_4
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0
.end method

.method public inWhiteList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 2144
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemWhiteLists:Ljava/util/HashSet;

    monitor-enter v1

    .line 2145
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mSystemWhiteLists:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2146
    const/4 v0, 0x1

    monitor-exit v1

    .line 2150
    :goto_0
    return v0

    .line 2148
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2149
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserWhiteLists:Ljava/util/HashSet;

    monitor-enter v1

    .line 2150
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermCheck;->mUserWhiteLists:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 2151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2148
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public saveLastCheckResult(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "perm"    # Ljava/lang/String;
    .param p3, "notifyType"    # I

    .prologue
    .line 2155
    invoke-static {p1, p2}, Lcom/android/server/am/AppPcService$PermCheck;->genNotifyTypeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2156
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermCheck;->mLastCheckResultLists:Ljava/util/HashMap;

    monitor-enter v2

    .line 2157
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermCheck;->mLastCheckResultLists:Ljava/util/HashMap;

    new-instance v3, Lcom/android/server/am/AppPcService$PermCheck$LastCheckResult;

    invoke-direct {v3, p3}, Lcom/android/server/am/AppPcService$PermCheck$LastCheckResult;-><init>(I)V

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2158
    monitor-exit v2

    .line 2159
    return-void

    .line 2158
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
