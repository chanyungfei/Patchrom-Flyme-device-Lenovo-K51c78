.class Lcom/android/server/am/AppPcService$AppPcServiceResources;
.super Ljava/lang/Object;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppPcServiceResources"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppPcService$AppPcServiceResources$id;,
        Lcom/android/server/am/AppPcService$AppPcServiceResources$layout;,
        Lcom/android/server/am/AppPcService$AppPcServiceResources$string;
    }
.end annotation


# static fields
.field public static sPermissionLabels:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2613
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "permission_label_location"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "permission_label_location"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "permission_label_read_contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "permission_label_write_contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "permission_label_read_call_log"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "permission_label_write_call_log"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "permission_label_read_calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "permission_label_write_calendar"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "permission_label_access_wifi"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "permission_label_access_network"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "permission_label_bluetooth"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "permission_label_bluetooth"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "permission_label_call_phone"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "permission_label_read_sms"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "permission_label_write_sms"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "permission_label_send_sms"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "permission_label_receive_msg"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "permission_label_receive_msg"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "permission_label_receive_msg"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "permission_label_camera"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "permission_label_record_audio"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "permission_label_send_mms"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "permission_label_system_alert_window"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/AppPcService$AppPcServiceResources;->sPermissionLabels:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2655
    return-void
.end method

.method public static getLayoutFromSecurityApp(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2599
    invoke-static {p0}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getSecurityAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 2600
    .local v0, "appContext":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 2611
    :cond_0
    :goto_0
    return-object v4

    .line 2603
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2604
    .local v3, "res":Landroid/content/res/Resources;
    const-string v5, "layout"

    # getter for: Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$5900()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2605
    .local v1, "id":I
    if-eqz v1, :cond_0

    .line 2608
    invoke-virtual {p0}, Landroid/content/Context;->getThemeResId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/Context;->setTheme(I)V

    .line 2609
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2610
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v2, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2611
    .local v4, "view":Landroid/view/View;
    goto :goto_0
.end method

.method private static getSecurityAppContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2564
    const/4 v0, 0x0

    .line 2566
    .local v0, "appContext":Landroid/content/Context;
    :try_start_0
    # getter for: Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$5900()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2571
    :goto_0
    return-object v0

    .line 2568
    :catch_0
    move-exception v1

    .line 2569
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Security_AppPcService"

    const-string v3, "getSecurityAppContext error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getStringFromSecurityApp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2575
    invoke-static {p0}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getSecurityAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 2576
    .local v0, "appContext":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 2584
    :cond_0
    :goto_0
    return-object v3

    .line 2579
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2580
    .local v2, "res":Landroid/content/res/Resources;
    const-string v4, "string"

    # getter for: Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$5900()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2581
    .local v1, "id":I
    if-eqz v1, :cond_0

    .line 2584
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static varargs getStringFromSecurityApp(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 2587
    invoke-static {p0}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getSecurityAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 2588
    .local v0, "appContext":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 2596
    :cond_0
    :goto_0
    return-object v3

    .line 2591
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2592
    .local v2, "res":Landroid/content/res/Resources;
    const-string v4, "string"

    # getter for: Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$5900()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2593
    .local v1, "id":I
    if-eqz v1, :cond_0

    .line 2596
    invoke-virtual {v2, v1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getVersionCodeFromSecurityApp(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2662
    const/4 v3, 0x0

    .line 2663
    .local v3, "versionCode":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2667
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    # getter for: Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$5900()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2668
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 2669
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2677
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v3

    .line 2672
    :catch_0
    move-exception v0

    .line 2673
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 2674
    const/4 v3, -0x1

    goto :goto_0
.end method
