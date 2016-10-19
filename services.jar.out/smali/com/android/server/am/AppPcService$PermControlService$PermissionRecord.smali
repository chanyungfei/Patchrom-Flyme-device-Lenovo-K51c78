.class Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
.super Ljava/lang/Object;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService$PermControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermissionRecord"
.end annotation


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mCode:I

.field private mData:Landroid/os/Bundle;

.field private mPackageName:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/am/AppPcService$PermControlService;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcService$PermControlService;ILjava/lang/String;IILandroid/os/Bundle;)V
    .locals 1
    .param p2, "code"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "pid"    # I
    .param p6, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1699
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1700
    iput p2, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I

    .line 1701
    iput-object p6, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mData:Landroid/os/Bundle;

    .line 1702
    iput-object p3, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;

    .line 1703
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1704
    invoke-virtual {p1, p4, p5}, Lcom/android/server/am/AppPcService$PermControlService;->getPackageName(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;

    .line 1706
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mAppName:Ljava/lang/String;

    .line 1707
    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    .prologue
    .line 1694
    iget v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method private getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1709
    if-nez p1, :cond_0

    .line 1710
    const/4 v0, 0x0

    .line 1720
    :goto_0
    return-object v0

    .line 1712
    :cond_0
    const/4 v0, 0x0

    .line 1714
    .local v0, "appName":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/am/AppPcService$PermControlService;->access$3500(Lcom/android/server/am/AppPcService$PermControlService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1715
    .local v3, "pkgManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1716
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1717
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "pkgManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 1718
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
